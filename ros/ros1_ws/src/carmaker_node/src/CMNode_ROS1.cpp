/*!
 ******************************************************************************
 **  CarMaker - Version 11.1
 **  Vehicle Dynamics Simulation Toolkit
 **
 **  Copyright (C)   IPG Automotive GmbH
 **                  Bannwaldallee 60             Phone  +49.721.98520.0
 **                  76185 Karlsruhe              Fax    +49.721.98520.99
 **                  Germany                      WWW    www.ipg-automotive.com
 ******************************************************************************
 *
 * Description:
 * - Prototype/Proof of Concept
 * - Unsupported ROS Example with CarMaker
 * - Structure may change in future!
 * - Change general parameters in Infofile for CMRosIF ("Data/Config/CMRosIFParameters")
 * - Basic communication with or without parameterizable synchronization
 *
 *
 * ToDo:
 * - C++!!!
 * - ROS naming/way/namespaces
 * - parameter: CarMaker read, ROS set by service?
 *   -> ROS parameter mechanism seems better solution!
 * - node/topic/... destruction to allow dynamic load/unload
 *   when TestRun starts instead of initialization at CarMaker startup
 * - New Param_Get() function to read parameters from Infofile
 * - ...
 *
 */


/* CarMaker
 * - include other headers e.g. to access to vehicle data
 *   - e.g. "Vehicle.h" or "Vehicle/Sensor_*.h".
 * - additional headers can be found in "<CMInstallDir>/include/"
 * - see Reference Manual, chapter "User Accessible Quantities" to find some variables
 *   that are already defined in DataDictionary and their corresponding C-Code Name
 */
#include <cmath>

#include "Log.h"
#include "DataDict.h"
#include "SimCore.h"
#include "InfoUtils.h"

#include "apo.h"
#include "GuiCmd.h"

#include "Vehicle.h"
#include "Car/Car.h"
#include "Car/Steering.h"
#include "DrivMan.h"
#include "VehicleControl.h"

#include "Vehicle/Sensor_Inertial.h" //UAQ_Out
#include "Vehicle/Sensor_LidarRSI.h"

#include "Vehicle/Sensor_Object.h"
#include "Vehicle/Sensor_TSign.h"
#include "Traffic.h"

/* ROS */
#include "cmrosutils/CMRosUtils.h"    /* Node independent templates, ...*/
#include "cmrosutils/CMRosIF_Utils.h" /* Only for CarMaker ROS Node!!! Functions are located in library for CarMaker ROS Interface */
#include "cmrosutils/CMRemote.h"      /* Basic service for CarMaker remote from ROS */

#include "sensor_msgs/PointCloud.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "tf2_ros/transform_broadcaster.h"
#include "tf2_ros/static_transform_broadcaster.h"
#include <angles/angles.h>

#include <sensor_msgs/point_cloud_conversion.h>
#include "sensor_msgs/PointCloud2.h"
#include "sensor_msgs/Imu.h"

#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseStamped.h"

#include "jsk_recognition_msgs/BoundingBox.h"
#include "jsk_recognition_msgs/BoundingBoxArray.h"

#include <ad_challenge_msgs/FullStateBBox3D.h>
#include <ad_challenge_msgs/FullStateBBox3DArray.h>

#include <ad_challenge_msgs/TrafficSign.h>
#include <ad_challenge_msgs/TrafficSignArray.h>

#include "vision_msgs/BoundingBox3DArray.h"
#include "vision_msgs/BoundingBox3D.h"


#define VLP_16_NUMBER_OF_POINTS 28800
#define VLP_64_NUMBER_OF_POINTS 115200

#define Lidar_Active_Flag 1 //0: off, 1: on

struct Sensor_Beam_Config {
    double *BeamTable;
    int rows = 0;
};

#include <ad_challenge_msgs/UAQ_Out.h> //UAQ_Out

#define Control_Flag 0 // 0: IPGDriver, 1: receive Control_Signal, 2: g29 test

static float tmp = 0.0;


#include <ad_challenge_msgs/Control_Signal.h>
#if Control_Flag == 2
#include "g29_publisher/CockpitStatus.h"
#endif

/* Following header from external ROS node can be used to get topic/service/... names
 * Other mechanism:
 * 1. Put names manually independently for each node
 * 2. Using command line arguments or launch files and ROS remapping
 * - Doing so, only general message headers are necessary
 */
#if 1
//#  include "hellocm/ROS1_HelloCM.h"  /* External ROS Node. Topic name, ... */
#else
#  include <hellocm_msgs/Ext2CM.h>
#  include <hellocm_msgs/CM2Ext.h>
#  include <hellocm_msgs/Init.h>
#endif

/*! String and numerical version of this Node
 *  - String:    e.g. <Major>.<Minor>.<Patch>
 *  - Numerical: e.g. <nDigitsMajor><2DigitsMinor><2DigitsPatch>
 */
#define CMNODE_VERSION "0.8.0"
#define CMNODE_NUMVER  800


/* NDEBUG is set in CarMaker Makefile/MakeDefs in OPT_CFLAGS */
#if !defined NDEBUG
#  warning "Debug options are enabled!"
#  define DBLOG LOG
#else
#  define DBLOG(...)
#endif

/* Not beautiful but consistent with external ROS Node
 * where ROS_INFO is used (implicit newline)*/
# define LOG(frmt, ...)  Log(frmt "\n", ##__VA_ARGS__)


/* General switches for CarMaker ROS Node */
typedef enum tCMNode_Mode {
    CMNode_Mode_Disabled  = 0,  /*!< Node is disabled. e.g. don't publish. */
    CMNode_Mode_Default   = 1,  /*!< Node is enabled, spinOnce is used  */
    CMNode_Mode_Threaded  = 2   /*!< Node is enabled, spin in parallel thread
                                     - Messages are received all the time
                                     - Data is updated at defined position, e.g. *_In()
                                     - Currently not implemented! */
} tCMNode_Mode;



/* Managing synchronization between CarMaker Node and other ROS nodes */
typedef enum tCMNode_SyncMode {
    CMNode_SyncMode_Disabled  = 0, /*!< No synchronization on CarMaker side */
    CMNode_SyncMode_Tpc       = 1  /*!< Buffer messages or Spin until external Topics are received */
} tCMNode_SyncMode;


/* Global struct for this Node */
static struct {
    unsigned long  CycleNoRel;  /*!< CarMaker relative cycle number, e.g. since start of TestRun */

    struct {
        double         Duration;      /*!< Time spent for synchronization task */
        int            nCycles;       /*!< Number of cycles in synchronization loop */
        int            CyclePrepDone; /*!< Last cycle when preparation was done */
        int            CycleJobDone;  /*!< Last cycle when job was done */
        double         SynthDelay;    /*!< Synthetic delay in seconds provided to external node to check sync */
    } Sync; /*!< Synchronization related information */

    struct {
        int CycleNo;      /*!< Cycle number of external ROS Node (only for information) */

        /* For debugging */
        int            CycleLastOut;   /*!< Cycle number when Topic was published */
        int            CycleLastIn;    /*!< Cycle number when Topic from external ROS Node was received */
        int            CycleLastFlush; /*!< Cycle number when data from external ROS Node was provided to model */
    } Model; /*!< Model related information. ROS side! */

    struct {
        struct {
#if Control_Flag == 1
            tRosIF_TpcSub<ad_challenge_msgs::Control_Signal> Control_Signal;
#elif Control_Flag == 2
            tRosIF_TpcSub<g29_publisher::CockpitStatus> cockpit_stat;
#endif

        } Sub; /*!< Topics to be subscribed */

        struct {
            tRosIF_TpcPub<sensor_msgs::PointCloud2> *Lidar_PC2;
            tRosIF_TpcPub<ad_challenge_msgs::UAQ_Out> UAQ_Out; //UAQ_Out
            // tRosIF_TpcPub<jsk_recognition_msgs::BoundingBoxArray> Bbox_Out;
            // tRosIF_TpcPub<ad_challenge_msgs::FullStateBBox3DArray> Bbox_Out;
            tRosIF_TpcPub<vision_msgs::BoundingBox3DArray> Bbox_Out;
            tRosIF_TpcPub<ad_challenge_msgs::TrafficSignArray> Tsign_Out;
            tRosIF_TpcPub<geometry_msgs::PoseStamped> Pose_Out;
            tRosIF_TpcPub<sensor_msgs::Imu> Imu_Out;

            /*!< CarMaker can be working as ROS Time Server providing simulation time
             *   starting at 0 for each TestRun */
            tRosIF_TpcPub<rosgraph_msgs::Clock> Clock;
        } Pub; /*!< Topics to be published */
    } Topics; /*!< ROS Topics used by this Node */

    struct {
        /*!< Initialization/Preparation of external ROS Node e.g. when simulation starts */
    } Services; /*!< ROS Services used by this Node (client and server)*/

struct {
        boost::shared_ptr<tf2_ros::TransformBroadcaster> br;
        boost::shared_ptr<tf2_ros::StaticTransformBroadcaster> st_br;
		
        geometry_msgs::TransformStamped *Lidar_Array;
        geometry_msgs::TransformStamped Pose;

    } TF;

    struct {
        int               QueuePub;     /*!< Queue size for Publishers */
        int               QueueSub;     /*!< Queue size for Subscribers */
        int               nCyclesClock; /*!< Number of cycles publishing /clock topic.
                                             CycleTime should be multiple of this value */
        tCMNode_Mode      Mode;
        tCMNode_SyncMode  SyncMode;
        double            SyncTimeMax;  /* Maximum Synchronization time */

        tRosIF_Cfg        Ros;
    } Cfg; /*!< General configuration for this Node */

    Sensor_Beam_Config *LidarRSI_Beam;

} CMNode;

typedef struct LidarRSI_Parameter {
	int Num;
    int Param;
    int Cluster;
    char SensorKind[64];
    char SensorBeamFile[255];

}tLidarRSI_Parameter;

struct LidarRSI_Config {
    int nSensors;
    tLidarRSI_Parameter Sens[20];

} lidarConfig;


struct{
    char Sensor_Name[10] = "Z_OB";
    char OB_nObjs = 100;

} Sensor_OB_Config;

struct{
    char Sensor_Name[10] = "Z_TS";
    char TS_nObjs = 100;
} Sensor_TS_Config;





#if Control_Flag == 1
static void
cmnode_Control_Signal_TpcIn (const ad_challenge_msgs::Control_Signal::ConstPtr &msg)
{
    /* Process message only if receive is expected */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled)
	return;
    
    int rv;
    auto in = &CMNode.Topics.Sub.Control_Signal;

    in->Msg.header      = msg->header;
    in->Msg.steerangle  = msg->steerangle;
    in->Msg.brake       = msg->brake;
    in->Msg.gas         = msg->gas;
    in->Msg.gear        = msg->gear;
    
    /* Stopping simulation is only necessary when synchronization is activated */
    if (CMNode.Cfg.SyncMode == CMNode_SyncMode_Tpc && (rv = CMCRJob_DoPrep_SetDone(in->Job, CMNode.CycleNoRel)) != CMCRJob_RV_Success) {
	LogErrF(EC_Sim, "CMNode: Error on DoPrep_SetDone for Job '%s'! rv=%s", CMCRJob_GetName(in->Job), CMCRJob_RVStr(rv));
    }

    /* Remember cycle for debugging */
    CMNode.Model.CycleLastIn = CMNode.CycleNoRel;

}
#elif Control_Flag == 2
static void
cmnode_CockpitStatus_TpcIn (const g29_publisher::CockpitStatus::ConstPtr &msg)
{
    /* Process message only if receive is expected */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled)
	return;
    
    int rv;
    auto in = &CMNode.Topics.Sub.cockpit_stat;

    in->Msg.header      = msg->header;
    in->Msg.steerangle  = msg->steerangle;
    in->Msg.clutch      = msg->clutch;
    in->Msg.brake       = msg->brake;
    in->Msg.gas         = msg->gas;
    in->Msg.gear        = msg->gear;
    
    /* Stopping simulation is only necessary when synchronization is activated */
    if (CMNode.Cfg.SyncMode == CMNode_SyncMode_Tpc && (rv = CMCRJob_DoPrep_SetDone(in->Job, CMNode.CycleNoRel)) != CMCRJob_RV_Success) {
	LogErrF(EC_Sim, "CMNode: Error on DoPrep_SetDone for Job '%s'! rv=%s", CMCRJob_GetName(in->Job), CMCRJob_RVStr(rv));
    }

    /* Remember cycle for debugging */
    CMNode.Model.CycleLastIn = CMNode.CycleNoRel;

}
#endif

/*****************************************************************************/
/**********          C-Code for interfacing with CarMaker!          **********/
/*****************************************************************************/


#ifdef __cplusplus
extern "C" {
#endif



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Get versions from shared library
 * - Set the returned Version to 0 if there is no dependency!
 * - Compatibility check should be done by calling procedure
 *   as early as possible(e.g. before CMRosIF_CMNode_Init()
 *
 * Arguments:
 * - CMRosIFVer = CMRosIF shared library version (User defined)
 *                - Initially filled with version of CMRosIF management library
 * - CMNumVer   = CarMaker version used for shared library at compile time (normally CM_NUMVER)
 *                - Initially filled with version of CMRosIF management library
 * - RosVersion = ROS version used for shared library at compile time (normally ROS_VERSION)
 *                - Initially filled with version requested by CMRosIF management library (0 if no request)
 *
 */
int
CMRosIF_CMNode_GetVersion (unsigned long *CMRosIFCMNodeNumVer,
                           unsigned long *CMNumVer,
			   unsigned long *RosNumVer)
{

    *CMRosIFCMNodeNumVer = CMNODE_NUMVER;
    *CMNumVer            = CM_NUMVER;
    *RosNumVer           = ROS_VERSION;

    return 0;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Basic Initialization
 * - e.g. create ROS Node, subscriptions, ...
 * - Return values
 *   - "rv <  0" = Error at initialization, CarMaker executable will stop
 *   - "rv >= 0" = Everything OK, CarMaker executable will continue
 *
 * Arguments:
 * - Argc/Argv  = Arguments normally provided to ROS executable are not be provided
 *                to CM executable directly, but can be set in Infofile for CMRosIF
 *                with key "Node.Args" in "Data/Config/CMRosIFParameters"
 *
 * - CMNodeName = Default CarMaker Node name
 *                - Can be parameterized in Infofile for CMRosIF
 *                - Final node name might be different (argument remapping, ...)
 *
 * - Inf        = Handle to CarMaker Infofile with parameters for this interface
 *                - Please note that pointer may change, e.g. before TestRun begins
 *
 * ToDo:
 * - Possible to create/initialize node/... before each TestRun start instead of CM startup?
 * - New Param_Get() function to read parameters from Infofile
 */
int
CMRosIF_CMNode_Init (int Argc, char **Argv, char *CMNodeName, struct tInfos *Inf)
{

    int rv;
    bool rvb                = false;
    char sbuf[512]          = "";
    char keybuf[256]        = "";
    ros::NodeHandlePtr node = NULL;
    ros::V_string names;


    LOG("Initialize CarMaker ROS Node");
    LOG("  -> Node Version = %05d", CMNODE_NUMVER);
    LOG("  -> ROS Version  = %05d", ROS_VERSION);
    LOG("  -> CM Version   = %05d", CM_NUMVER);

    /* ROS initialization. Name of Node might be different after remapping! */
    if (ros::isInitialized() == false) {
	/* "Remapping arguments" functionality (launchfiles, ...)? */
	ros::init(Argc, Argv, CMNodeName);
    } else {
	//node.reset(); ToDo!
    }

    if (ros::master::check() == false) {
	LogErrF(EC_Init, "Can't contact ROS Master!\n Start roscore or run launch file e.g. via Extras->CMRosIF\n");
	ros::shutdown();
	return -1;
    }

    /* Node specific */
    CMNode.Cfg.Ros.Node = ros::NodeHandlePtr(boost::make_shared<ros::NodeHandle>());
    node                = CMNode.Cfg.Ros.Node;

    /* Publish specific */
    CMNode.Cfg.QueuePub  = iGetIntOpt(Inf, "Node.QueuePub", 1000); /* ToDo: Influence of queue length relevant? */

    /* Prepare the node to provide simulation time. CarMaker will be /clock server */
    strcpy(sbuf, "/use_sim_time");

    if ((rv = node->hasParam(sbuf)) == true) {
	node->getParam(sbuf, rvb);
	LOG("  -> Has param '%s' with value '%d'", sbuf, rvb);
    }

    /* Additional switch to provide simulation Time */
    strcpy(keybuf, "Node.UseSimTime");

    if ((rv = iGetIntOpt(Inf, keybuf, 1)) > 0) {
	/* Parameter must be set before other nodes start
	 * - set parameter outside to be independent from execution order?
	 */
	LOG("  -> Provide simulation time!");
	node->setParam("/use_sim_time", true); /* enable parameter if not already done */

	CMNode.Cfg.nCyclesClock  = iGetIntOpt(Inf, "Node.nCyclesClock", 1000);

	strcpy(sbuf, "/clock");
	LOG("    -> Publish '%s' every %dms", sbuf, CMNode.Cfg.nCyclesClock);
	CMNode.Topics.Pub.Clock.Pub  = node->advertise<rosgraph_msgs::Clock>(sbuf, CMNode.Cfg.QueuePub);


	/* ToDo: Necessary/Possible to ensure /clock is zeroed? */
	CMNode.Topics.Pub.Clock.Msg.clock = ros::Time(0.0);
	CMNode.Topics.Pub.Clock.Pub.publish(CMNode.Topics.Pub.Clock.Msg);
    } else {
	LOG("  -> Don't provide simulation time!");
	CMNode.Cfg.nCyclesClock  = 0;
    }

    //UAQ_Out
	strcpy(sbuf, "/UAQ_Out");
    LOG("  -> Publish '%s'", sbuf);
    CMNode.Topics.Pub.UAQ_Out.Pub       = node->advertise<ad_challenge_msgs::UAQ_Out>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.UAQ_Out.Job       = CMCRJob_Create("UAQ_Out");
	CMNode.Topics.Pub.UAQ_Out.CycleTime   = 10;
    CMNode.Topics.Pub.UAQ_Out.CycleOffset = 0;
	//!UAQ_Out

	strcpy(sbuf, "/Bbox_Out");
    LOG("  -> Publish '%s'", sbuf);
    // CMNode.Topics.Pub.Bbox_Out.Pub       = node->advertise<jsk_recognition_msgs::BoundingBoxArray>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    // CMNode.Topics.Pub.Bbox_Out.Pub       = node->advertise<ad_challenge_msgs::FullStateBBox3DArray>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.Bbox_Out.Pub       = node->advertise<vision_msgs::BoundingBox3DArray>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.Bbox_Out.Job       = CMCRJob_Create("Bbox_Out");
	CMNode.Topics.Pub.Bbox_Out.CycleTime   = 100;
    CMNode.Topics.Pub.Bbox_Out.CycleOffset = 0;

    strcpy(sbuf, "/Tsign_Out");
    LOG("  -> Publish '%s'", sbuf);
    CMNode.Topics.Pub.Tsign_Out.Pub       = node->advertise<ad_challenge_msgs::TrafficSignArray>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.Tsign_Out.Job       = CMCRJob_Create("Tsign_Out");
	CMNode.Topics.Pub.Tsign_Out.CycleTime   = 100;
    CMNode.Topics.Pub.Tsign_Out.CycleOffset = 0;
    

    strcpy(sbuf, "/Pose_Out");
    LOG("  -> Publish '%s'", sbuf);
    CMNode.Topics.Pub.Pose_Out.Pub       = node->advertise<geometry_msgs::PoseStamped>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.Pose_Out.Job       = CMCRJob_Create("Pose_Out");
	CMNode.Topics.Pub.Pose_Out.CycleTime   = 10;
    CMNode.Topics.Pub.Pose_Out.CycleOffset = 0;

    strcpy(sbuf, "/Imu_Out");
    LOG("  -> Publish '%s'", sbuf);
    CMNode.Topics.Pub.Imu_Out.Pub       = node->advertise<sensor_msgs::Imu>(sbuf, static_cast<uint>(CMNode.Cfg.QueuePub));
    CMNode.Topics.Pub.Imu_Out.Job       = CMCRJob_Create("Imu_Out");
	CMNode.Topics.Pub.Imu_Out.CycleTime   = 5;
    CMNode.Topics.Pub.Imu_Out.CycleOffset = 0;


    CMNode.TF.br = boost::make_shared<tf2_ros::TransformBroadcaster>();
    CMNode.TF.st_br = boost::make_shared<tf2_ros::StaticTransformBroadcaster>();


    /* Subscribe specific */
    CMNode.Cfg.QueueSub  = iGetIntOpt(Inf, "Node.QueueSub", 1); /* ToDo: Effect of queue length for subscriber? */

#if Control_Flag == 1
    strcpy(sbuf, "/Control_Signal");
	LOG("  -> Subscribe '%s'", sbuf);
    CMNode.Topics.Sub.Control_Signal.Sub         = node->subscribe(sbuf, CMNode.Cfg.QueueSub, cmnode_Control_Signal_TpcIn);
    CMNode.Topics.Sub.Control_Signal.Job         = CMCRJob_Create(sbuf);
#elif Control_Flag == 2
    strcpy(sbuf, "/cockpit_status");
	LOG("  -> Subscribe '%s'", sbuf);
    CMNode.Topics.Sub.cockpit_stat.Sub         = node->subscribe(sbuf, CMNode.Cfg.QueueSub, cmnode_CockpitStatus_TpcIn);
    CMNode.Topics.Sub.cockpit_stat.Job         = CMCRJob_Create(sbuf);
#endif

    /* Print general information after everything is done */
    LOG("Initialization of ROS Node finished!");
    LOG("  -> Node Name = '%s'", ros::this_node::getName().c_str());
    LOG("  -> Namespace = '%s'", ros::this_node::getNamespace().c_str());


    /* Advertised Topics */
    ros::this_node::getAdvertisedTopics(names);
    LOG("  -> Advertised Topics (%lu)", names.size());

    auto it = names.begin();
    for (; it != names.end(); ++it)
	LOG("    -> %s", (*it).c_str());


    /* Subscribed Topics */
    names.clear();
    ros::this_node::getSubscribedTopics(names);
    LOG("  -> Subscribed Topics (%lu)", names.size());
    it = names.begin();
    for (; it != names.end(); ++it)
	LOG("    -> %s",  (*it).c_str());

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Add user specific Quantities for data storage
 *   and visualization to DataDictionary
 * - Called once at program start
 * - no realtime conditions
 *
 */
void
CMRosIF_CMNode_DeclQuants (void)
{

    tDDefault *df = DDefaultCreate("CMRosIF.");

    DDefULong   (df, "CycleNoRel",         "ms", &CMNode.CycleNoRel,               DVA_None);
    DDefInt     (df, "Sync.Cycles",        "-",  &CMNode.Sync.nCycles,             DVA_None);
    DDefDouble  (df, "Sync.Time",          "s",  &CMNode.Sync.Duration,            DVA_None);
    DDefInt     (df, "Sync.CyclePrepDone", "-",  &CMNode.Sync.CyclePrepDone,       DVA_None);
    DDefInt     (df, "Sync.CycleJobDone" , "-",  &CMNode.Sync.CycleJobDone,        DVA_None);
    DDefDouble4 (df, "Sync.SynthDelay",     "s", &CMNode.Sync.SynthDelay,          DVA_IO_In);

    DDefUChar   (df, "Cfg.Mode",           "-",  (unsigned char*)&CMNode.Cfg.Mode, DVA_None);
    DDefInt     (df, "Cfg.nCyclesClock",   "ms", &CMNode.Cfg.nCyclesClock,         DVA_None);
    DDefChar    (df, "Cfg.SyncMode",       "-",  (char*)&CMNode.Cfg.SyncMode,      DVA_None);
    DDefDouble4 (df, "Cfg.SyncTimeMax",    "s",  &CMNode.Cfg.SyncTimeMax,          DVA_IO_In);

    DDefInt     (df, "Mdl.CycleNo",        "-",  &CMNode.Model.CycleNo,            DVA_None);
    DDefInt     (df, "Mdl.CycleLastOut",   "ms", &CMNode.Model.CycleLastOut,       DVA_None);
    DDefInt     (df, "Mdl.CycleLastIn",    "ms", &CMNode.Model.CycleLastIn,        DVA_None);
    DDefInt     (df, "Mdl.CycleLastFlush", "ms", &CMNode.Model.CycleLastFlush,     DVA_None);

    DDefaultDelete(df);
}


void
LidarRSI_Sensor_Config (void)
{
    //--------------------------------------------------------------------------------
    //LidarRSI Sensor Basic Config
    char *name;
    char key[64];
    int i; 
    int ret = 0; // Return value;
    int Num_Sens, Ref_Param, Active_Sens;
    int tmp = 0;

    // Amount of Lidar RSI Sensors
    sprintf(key, "Sensor.N");
    Num_Sens = iGetInt(SimCore.Vhcl.Inf, key);
    lidarConfig.nSensors = 0;
    
    for (i=0; i<Num_Sens ; i++)
    {
        sprintf(key, "Sensor.%d.Active", i);
        Active_Sens = iGetInt(SimCore.Vhcl.Inf, key);
        if(Active_Sens == 0) continue;
        
        sprintf(key, "Sensor.%d.Ref.Param", i);
        Ref_Param = iGetInt(SimCore.Vhcl.Inf, key);
        
        sprintf(key, "Sensor.Param.%d.Type", Ref_Param);
        name = iGetStrOpt(SimCore.Vhcl.Inf, key, NULL);
        
        if(strcmp(name, "LidarRSI") == 0)	
        {
            lidarConfig.nSensors++;
            lidarConfig.Sens[tmp].Num = i;
            lidarConfig.Sens[tmp].Param = Ref_Param;
            sprintf(key, "Sensor.%d.Ref.Cluster", i);
            lidarConfig.Sens[tmp].Cluster = iGetInt(SimCore.Vhcl.Inf, key);

            sprintf(key, "Sensor.%d.Ref.Param", lidarConfig.Sens[tmp].Num);
            int param_num = iGetIntOpt(SimCore.Vhcl.Inf, key, NULL);
            sprintf(key, "Sensor.Param.%d.Name", param_num);
            sprintf(lidarConfig.Sens[tmp].SensorKind, iGetStrOpt(SimCore.Vhcl.Inf, key, NULL));
            Log("Sensor Kind[%d]: %s\n", tmp, lidarConfig.Sens[tmp].SensorKind);
            
            sprintf(key, "Sensor.Param.%d.Beams.FName", lidarConfig.Sens[tmp].Param);
            sprintf(lidarConfig.Sens[tmp].SensorBeamFile, iGetStr(SimCore.Vhcl.Inf, key));

            tmp++;
        }

    }

    if(lidarConfig.nSensors < 1){
        Log ("No LidarRSI detected!\n");
    } else {
        Log("\nLidar module:\n");
        Log("Amount of LidarRSI sensors: %d\n", lidarConfig.nSensors);
    }
    
    //--------------------------------------------------------------------------------
    //LidarRSI_Sensor_Beam_Pattern_Config
    srand(time(NULL));

    tInfos *Inf_Sensor = nullptr;
    tErrorMsg *err = nullptr;

    CMNode.LidarRSI_Beam = new Sensor_Beam_Config[lidarConfig.nSensors]();
    for(int i = 0; i < lidarConfig.nSensors; i++)
    {
        Inf_Sensor = InfoNew();
        char sbuf[512]          = "";
        sprintf(sbuf, "Data/Sensor/%s", lidarConfig.Sens[i].SensorBeamFile);
        iRead2(&err, Inf_Sensor, sbuf, "");

        unsigned int beamsize = 0;
        if(strcmp(lidarConfig.Sens[i].SensorKind, "VLP_16") == 0) beamsize = VLP_16_NUMBER_OF_POINTS;
        else if(strcmp(lidarConfig.Sens[i].SensorKind, "VLP_64") == 0) beamsize = VLP_64_NUMBER_OF_POINTS;
        else beamsize = 0;

        CMNode.LidarRSI_Beam[i].BeamTable = (double*)malloc(beamsize * 6 * sizeof(double));
        iGetTableOpt(Inf_Sensor, "Beams", CMNode.LidarRSI_Beam[i].BeamTable, beamsize * 6, 6, &CMNode.LidarRSI_Beam[i].rows);
        InfoDelete(Inf_Sensor);

    }

    //--------------------------------------------------------------------------------
    //Read Vehicle InfoFile to set TF(Transformation), PointCloud Topic
    tInfos *Inf_Vehicle = nullptr;
    Inf_Vehicle = InfoNew();
    
    const char *FName;
    FName = InfoGetFilename(SimCore.Vhcl.Inf);
	
    Log("FName = %s\n", FName);
	
    int VehicleInfo_Err = iRead2(&err, Inf_Vehicle, FName, "SensorReadCode");
	
    CMNode.TF.Lidar_Array = new geometry_msgs::TransformStamped[lidarConfig.nSensors];

    for(int i = 0; i < lidarConfig.nSensors; i++){
        char sbuf[512]          = "";
        tf2::Quaternion q;
        double* position;
        double* rotation;
		double tmp[3] = {0, 0, 0};

        sprintf(sbuf, "Sensor.%d.pos", lidarConfig.Sens[i].Num);
        position = iGetFixedTableOpt2(Inf_Vehicle, sbuf, tmp, 3, 1);
		sprintf(sbuf, "Sensor.%d.rot", lidarConfig.Sens[i].Num);
        rotation = iGetFixedTableOpt2(Inf_Vehicle, sbuf, tmp, 3, 1);
        q.setRPY(rotation[0]/180*3.141592, rotation[1]/180*3.141592, rotation[2]/180*3.141592);
        CMNode.TF.Lidar_Array[i].transform.rotation = tf2::toMsg(q);
		CMNode.TF.Lidar_Array[i].transform.translation.x = position[0];
		CMNode.TF.Lidar_Array[i].transform.translation.y = position[1];
		CMNode.TF.Lidar_Array[i].transform.translation.z = position[2];
		sprintf(sbuf, "Sensor.%d.name", lidarConfig.Sens[i].Num);
        CMNode.TF.Lidar_Array[i].child_frame_id = iGetStrOpt(Inf_Vehicle, sbuf, "");
        CMNode.TF.Lidar_Array[i].header.frame_id = "Fr1A";
        
    }

    CMNode.Topics.Pub.Lidar_PC2 = new tRosIF_TpcPub<sensor_msgs::PointCloud2>[lidarConfig.nSensors];

    for(int i = 0; i < lidarConfig.nSensors; i++){
        char sbuf[512]          = "";
        char sbuf_[512]         = "";

        sprintf(sbuf_, "Sensor.%d.name", lidarConfig.Sens[i].Num);
        sprintf(sbuf, "/%s/Sensor/%s", ros::this_node::getName().c_str(), iGetStrOpt(Inf_Vehicle, sbuf_, "Lidar"));
        CMNode.Topics.Pub.Lidar_PC2[i].Pub             = CMNode.Cfg.Ros.Node->advertise<sensor_msgs::PointCloud2>(sbuf, 10);
        CMNode.Topics.Pub.Lidar_PC2[i].Job             = CMCRJob_Create(sbuf);
        sprintf(sbuf, "SensorCluster.%d.CycleTime", lidarConfig.Sens[i].Cluster);
        CMNode.Topics.Pub.Lidar_PC2[i].CycleTime       = iGetIntOpt(Inf_Vehicle, sbuf, 10);
        sprintf(sbuf, "SensorCluster.%d.CycleOffset", lidarConfig.Sens[i].Cluster);
        CMNode.Topics.Pub.Lidar_PC2[i].CycleOffset     = iGetIntOpt(Inf_Vehicle, sbuf, 0);

    }

    int errCode = InfoDelete(Inf_Vehicle);
    Log("errCode = %d\n", errCode);
}

/*!

.
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called when starting a new TestRun
 * - In separate Thread (no realtime conditions)
 * - After standard Infofiles are read in
 * - Return values
 *   - "rv <  0" = Error, TestRun start will be aborted
 *   - "rv >= 0" = Everything OK
 *
 * Arguments:
 * - Inf = CarMaker Infofile for CMRosIF with content after TestRun start
 *         - Please note that the Infofile provided at initialization might have been updated!
 *
 * ToDo:
 * - New Param_Get() function to read parameters from Infofile
 *
 */
int
CMRosIF_CMNode_TestRun_Start_atBegin (struct tInfos *Inf)
{
#if Lidar_Active_Flag
    LidarRSI_Sensor_Config();
#endif

    /* Node can be disabled via Infofile */
    tCMNode_Mode     *pmode     = &CMNode.Cfg.Mode;
    tCMNode_SyncMode *psyncmode = &CMNode.Cfg.SyncMode;

    if (Inf != NULL) {
	*pmode     =     (tCMNode_Mode)iGetIntOpt(Inf, "Node.Mode",      CMNode_Mode_Disabled);
	*psyncmode = (tCMNode_SyncMode)iGetIntOpt(Inf, "Node.Sync.Mode", CMNode_SyncMode_Disabled);
    }

    if (SimCore.CycleNo == 0 || Inf == NULL || *pmode == CMNode_Mode_Disabled) {
	*pmode = CMNode_Mode_Disabled;
	LOG("CarMaker ROS Node is disabled!");
	return 0;
    }

    char sbuf[512];
    char key[256];
    char *str        = NULL;
    int rv           = 0;
    bool rvb                = false;

    int cycletime           = 0;
    int *pcycletime         = NULL;
    int cycleoff            = 0;
    tCMCRJob *job           = NULL;
    
    LOG("CarMaker ROS Node is enabled! Mode=%d, SyncMode=%d", *pmode, *psyncmode);
    LOG("  -> Node Name = %s", ros::this_node::getName().c_str());


    /* Update synchronization */
    if (*psyncmode != CMNode_SyncMode_Disabled && *psyncmode != CMNode_SyncMode_Tpc) {
	LogErrF(EC_Sim, "CMNode: Invalid synchronization mode '%d'!",*psyncmode);
	*pmode = CMNode_Mode_Disabled;
	return -1;
    }

    CMNode.Cfg.SyncTimeMax = iGetDblOpt(Inf, "Node.Sync.TimeMax", 1.0);


    /* Reset for next cycle */
    CMNode.CycleNoRel           =  0;
    CMNode.Sync.Duration        =  0.0;
    CMNode.Sync.nCycles         = -1;
    CMNode.Sync.CycleJobDone    = -1;
    CMNode.Sync.CyclePrepDone   = -1;
    CMNode.Model.CycleNo        = -1;
    CMNode.Model.CycleLastIn    = -1;
    CMNode.Model.CycleLastOut   = -1;
    CMNode.Model.CycleLastFlush = -1;


    /* Allow an update of the clock only if it was enabled before! */
    if (CMNode.Cfg.nCyclesClock > 0) {
	if ((rv = iGetIntOpt(Inf, "Node.nCyclesClock", 1000)) > 0)
	    CMNode.Cfg.nCyclesClock = rv;
    }

    /* Necessary to ensure /clock is zeroed here?
     * ToDo: Create function? */
    if (CMNode.Cfg.nCyclesClock > 0) {
	LOG("  -> Publish /clock every %dms", CMNode.Cfg.nCyclesClock);
	CMNode.Topics.Pub.Clock.Msg.clock = ros::Time(0.0);
	CMNode.Topics.Pub.Clock.Pub.publish(CMNode.Topics.Pub.Clock.Msg);
    }

    /* Update cycle time with information of external node */
#if 1
    /* Variant 1:
     * - Receiving parameters via ROS Parameter Server
     * - Parameter may be set externally e.g. by other node or arguments to command
     * - ROS parameters are more flexible than ROS services!
     */

#else
    /* Variant 2:
     * - Receiving parameters from external Node via Service
     * - Services might be too "static"
     * - Not recommended!
     */
    
#endif

    /* Prepare Jobs for publish and subscribe
     * - Special use case:
     *   - Topic in and Topic out use same cycle time with relative shift!
     */

    /* Start to publish when simulation starts */

#if Lidar_Active_Flag
    for(int i = 0; i < lidarConfig.nSensors; i++){
        job       = CMNode.Topics.Pub.Lidar_PC2[i].Job;
        cycletime = CMNode.Topics.Pub.Lidar_PC2[i].CycleTime;
        cycleoff  = CMNode.Topics.Pub.Lidar_PC2[i].CycleOffset;

        CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
    }
#endif
    
    //Imu_Out
	job       = CMNode.Topics.Pub.Imu_Out.Job;
    cycletime = CMNode.Topics.Pub.Imu_Out.CycleTime;
    cycleoff  = CMNode.Topics.Pub.Imu_Out.CycleOffset;
	
    CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
	//!Imu_Out


    //Pose_Out
	job       = CMNode.Topics.Pub.Pose_Out.Job;
    cycletime = CMNode.Topics.Pub.Pose_Out.CycleTime;
    cycleoff  = CMNode.Topics.Pub.Pose_Out.CycleOffset;
	
    CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
	//!Pose_Out

    //UAQ_Out
	job       = CMNode.Topics.Pub.UAQ_Out.Job;
    cycletime = CMNode.Topics.Pub.UAQ_Out.CycleTime;
    cycleoff  = CMNode.Topics.Pub.UAQ_Out.CycleOffset;
	
    CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
	//!UAQ_Out

    //BBox_Out
	job       = CMNode.Topics.Pub.Bbox_Out.Job;
    cycletime = CMNode.Topics.Pub.Bbox_Out.CycleTime;
    cycleoff  = CMNode.Topics.Pub.Bbox_Out.CycleOffset;
    
    CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
    //!BBox_Out

    

    //TSign_Out
    job       = CMNode.Topics.Pub.Tsign_Out.Job;
    cycletime = CMNode.Topics.Pub.Tsign_Out.CycleTime;
    cycleoff  = CMNode.Topics.Pub.Tsign_Out.CycleOffset;
    
    CMCRJob_Init(job, cycleoff, cycletime, CMCRJob_Mode_Ext);
    //!TSign_Out
	
    
	

    /* Synchronization with external node
     * - external node provides cycle time (see service above)
     * - other parameterization methods (e.g. ROS parameter, ...) are possible!
     * - Expect sync Topic are delayed (communication time, ...)
     * - This example shows sync via ROS Timer in external node
     *   - Therefore "/clock" topic needs to be published by CarMaker!
     *   - Other mechanism, e.g. data triggered on external node side
     *     via publishing Topic directly inside subscription callback is also possible!
     * - time=0.0 can't be detected by external node, therefore
     *   first receive needs to start after expected cycle time
     *   of external ROS node
     */

    std::vector<geometry_msgs::TransformStamped> transforms;
    for(int i = 0; i < lidarConfig.nSensors; i++){
        transforms.push_back(CMNode.TF.Lidar_Array[i]);
    }
    CMNode.TF.st_br->sendTransform(transforms);
    
    LOG("External ROS Node is ready to simulate");

    return 1;
}



/*!
 * ToDo:
 * - Put everything to TestRun_Start_atBegin?
 *
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Repeating call for several CarMaker cycles until return value is 1
 * - May be called even previous return value was 1
 * - See "User.c:User_TestRun_RampUp()"
 *
 */
int
CMRosIF_CMNode_TestRun_RampUp (void)
{

    /* Return immediately if node is disabled */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled)
	return 1;

    /* Put your code here */
    //if (NotReady) return 0;


    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called when TestRun ends (no realtime conditions)
 * - See "User.c:User_TestRun_End()"
 *
 */
int
CMRosIF_CMNode_TestRun_End (void)
{


    /* Put your code here */
    delete[] CMNode.Topics.Pub.Lidar_PC2;
    delete[] CMNode.TF.Lidar_Array;

    /* Disable after simulation has finished */
    CMNode.Cfg.Mode = CMNode_Mode_Disabled;

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called at very beginning of CarMaker cycle
 * - Process all topics/services using different modes or synchronization modes
 * - See "User.c:User_In()"
 *
 * ToDo:
 * - Additional spin mechanism
 *   - e.g. for HIL
 *   - e.g. spinning in new thread, copying incoming data here, ...
 *
 */
int
CMRosIF_CMNode_In (void)
{

    int rv                   = 0;
    int rx_done              = 0;
    const char *job_name     = NULL;
    tCMCRJob *job            = NULL;
    ros::WallTime tStart     = ros::WallTime::now();
    ros::WallDuration tDelta = ros::WallDuration(0.0);
    CMNode.Sync.nCycles      = 0;
    CMNode.Sync.Duration     = 0.0;

    switch (CMNode.Cfg.Mode) {
	case CMNode_Mode_Disabled:
	    /* Comment next line if no messages/services
	     * shall be processed in disabled Node state
	     */
	    ros::spinOnce();
	    break;

	case CMNode_Mode_Default:

	    if (CMNode.Cfg.SyncMode != CMNode_SyncMode_Tpc) {
                /* Process messages in queue, but do not block */
		ros::spinOnce();

	    } else {
		/* Synchronization based on expected Topics
		 * - Blocking call (process publish and wait for answer)
		 * - Stop simulation if maximum time is exceeded
		 */
		do {
		    ros::spinOnce();

		    /* Only do anything if simulation is running */
		    if (SimCore.State != SCState_Simulate) {
			rx_done = 1;
			break;
		    }

		    rx_done = 1;

		    if (rx_done == 1)
			break;

		    /* Wait a little that data can arrive. WallTime, NOT ROS time!!!*/
		    ros::WallDuration(0.0).sleep();
		    tDelta = ros::WallTime::now() - tStart;
		    CMNode.Sync.nCycles++;

		} while (ros::ok() && rx_done == 0 && tDelta.toSec() < CMNode.Cfg.SyncTimeMax);

		/* Final calculation to get duration including last cycle before receive */
		tDelta = ros::WallTime::now() - tStart;

		CMNode.Sync.Duration = tDelta.toSec();

		if (rx_done != 1 && CMNode.Cfg.SyncTimeMax > 0.0 && tDelta.toSec() >= CMNode.Cfg.SyncTimeMax)
		    LogErrF(EC_Sim, "CMNode: Synchronization error! tDelta=%.3f, Last invalid Job='%s'\n", tDelta.toSec(), job_name);
	    }

	    break;

	case CMNode_Mode_Threaded:
	    /* ToDo
	     * - Spinning in parallel thread started before
	     * - Lock variables!
	     * - e.g. for HIL
	     */
	    break;

	default:
	    /* Invalid!!! */;
    }

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called after driving maneuver calculation
 * - before CMRosIF_CMNode_VehicleControl_Calc()
 * - See "User.c:User_DrivManCalc()"
 */
int
CMRosIF_CMNode_DrivMan_Calc (double dt)
{
    /* Only do anything if simulation is running */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled
	    || SimCore.State != SCState_Simulate)
	return 0;

    /* Put your code here */

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called after CMRosIF_CMNode_DrivManCalc
 * - before CMRosIF_CMNode_VehicleControl_Calc()
 * - See "User.c:User_VehicleControl_Calc()"
 */
int
CMRosIF_CMNode_VehicleControl_Calc (double dt)
{
    /* Only do anything if simulation is running */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled
	    || SimCore.State != SCState_Simulate)
	return 0;

#if Control_Flag == 1
    VehicleControl.Steering.Ang     = CMNode.Topics.Sub.Control_Signal.Msg.steerangle;
    VehicleControl.SelectorCtrl     = CMNode.Topics.Sub.Control_Signal.Msg.gear;
    if(CMNode.Topics.Sub.Control_Signal.Msg.brake != 0 || CMNode.Topics.Sub.Control_Signal.Msg.gas != 0){
        VehicleControl.Brake            = CMNode.Topics.Sub.Control_Signal.Msg.brake;
        VehicleControl.Gas              = CMNode.Topics.Sub.Control_Signal.Msg.gas;
        
    }
#elif Control_Flag == 2
    VehicleControl.Steering.Ang     = CMNode.Topics.Sub.cockpit_stat.Msg.steerangle;
    VehicleControl.SelectorCtrl     = CMNode.Topics.Sub.cockpit_stat.Msg.gear;
    if(CMNode.Topics.Sub.cockpit_stat.Msg.clutch != 0 || CMNode.Topics.Sub.cockpit_stat.Msg.brake != 0 || CMNode.Topics.Sub.cockpit_stat.Msg.gas != 0){
        VehicleControl.Clutch           = CMNode.Topics.Sub.cockpit_stat.Msg.clutch;
        VehicleControl.Brake            = CMNode.Topics.Sub.cockpit_stat.Msg.brake;
        VehicleControl.Gas              = CMNode.Topics.Sub.cockpit_stat.Msg.gas;
        
    }
#endif

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called after vehicle model has been calculated
 * - See "User.c:User_Calc()"
 */
int
CMRosIF_CMNode_Calc (double dt)
{

    /* Only do anything if simulation is running */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled
	    || SimCore.State != SCState_Simulate)
	return 0;

    /* Put your code here
     * - Update model parameters here?
     * - Do some calculation...
     */

    /* Update model with values from external node only in specific cycle?
     * - This data handling is optionl, but necessary for deterministic behaviour
     * - if synchronization is active, incoming data remains in msg buffer until correct cycle
     */
    int rv;

    /* Do some calculation... */

    if (SimCore.State == SCState_Simulate) {
        int sim_time_ms = (int) round(SimCore.Time*1000);

        if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.Imu_Out.Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
			LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.Imu_Out.CycleTime, CMNode.Topics.Pub.Imu_Out.CycleOffset, CMNode.CycleNoRel);
			LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.Imu_Out.Job), CMCRJob_RVStr(rv));
		} else if (sim_time_ms % CMNode.Topics.Pub.Imu_Out.CycleTime == CMNode.Topics.Pub.Imu_Out.CycleOffset) {

            sensor_msgs::Imu imu;
            tf2::Quaternion q;
            q.setRPY(InertialSensor[0].Alpha_B[0], InertialSensor[0].Alpha_B[1], InertialSensor[0].Alpha_B[2]);
            q = q.normalize();

            imu.orientation.x = q.x();
            imu.orientation.y = q.y();
            imu.orientation.z = q.z();
            imu.orientation.w = q.w();

            imu.angular_velocity.x = InertialSensor[0].Omega_B[0];
            imu.angular_velocity.y = InertialSensor[0].Omega_B[1];
            imu.angular_velocity.z = InertialSensor[0].Omega_B[2];

            imu.linear_acceleration.x = InertialSensor[0].Acc_B[0];
            imu.linear_acceleration.y = InertialSensor[0].Acc_B[1];
            imu.linear_acceleration.z = InertialSensor[0].Acc_B[2];

            CMNode.Topics.Pub.Imu_Out.Msg = imu;

            
            ros::WallTime wtime = ros::WallTime::now();
            CMNode.Topics.Pub.Imu_Out.Msg.header.stamp.sec = wtime.sec;
            CMNode.Topics.Pub.Imu_Out.Msg.header.stamp.nsec = wtime.nsec;

        }

        if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.Pose_Out.Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
			LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.Pose_Out.CycleTime, CMNode.Topics.Pub.Pose_Out.CycleOffset, CMNode.CycleNoRel);
			LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.Pose_Out.Job), CMCRJob_RVStr(rv));
		} else if (sim_time_ms % CMNode.Topics.Pub.Pose_Out.CycleTime == CMNode.Topics.Pub.Pose_Out.CycleOffset) {
            geometry_msgs::PoseStamped pose;
            tf2::Quaternion q;

            pose.pose.position.x = Car.Fr1.t_0[0];
            pose.pose.position.y = Car.Fr1.t_0[1];
            pose.pose.position.z = Car.Fr1.t_0[2];

            q.setRPY(Car.Fr1.r_zyx[0], Car.Fr1.r_zyx[1], Car.Fr1.r_zyx[2]);
            q = q.normalize();

            pose.pose.orientation.x = q.x();
            pose.pose.orientation.y = q.y();
            pose.pose.orientation.z = q.z();
            pose.pose.orientation.w = q.w();

            CMNode.Topics.Pub.Pose_Out.Msg = pose;
            
            ros::WallTime wtime = ros::WallTime::now();
            CMNode.Topics.Pub.Pose_Out.Msg.header.stamp.sec = wtime.sec;
            CMNode.Topics.Pub.Pose_Out.Msg.header.stamp.nsec = wtime.nsec;

            CMNode.TF.Pose.transform.rotation = tf2::toMsg(q);
            CMNode.TF.Pose.transform.translation.x = Car.Fr1.t_0[0];
            CMNode.TF.Pose.transform.translation.y = Car.Fr1.t_0[1];
            CMNode.TF.Pose.transform.translation.z = Car.Fr1.t_0[2];
            CMNode.TF.Pose.child_frame_id = "Fr1A";
            CMNode.TF.Pose.header.frame_id = "world";
            CMNode.TF.Pose.header.stamp.sec = wtime.sec;
            CMNode.TF.Pose.header.stamp.nsec = wtime.nsec;
        }


		if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.Bbox_Out.Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
			LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.Bbox_Out.CycleTime, CMNode.Topics.Pub.Bbox_Out.CycleOffset, CMNode.CycleNoRel);
			LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.Bbox_Out.Job), CMCRJob_RVStr(rv));
		} else if (sim_time_ms % CMNode.Topics.Pub.Bbox_Out.CycleTime == CMNode.Topics.Pub.Bbox_Out.CycleOffset) {

            // auto time = ros::Time(SimCore.Time);
            // jsk_recognition_msgs::BoundingBoxArray Bbox_array;
            // ad_challenge_msgs::FullStateBBox3DArray Bbox_array;
            vision_msgs::BoundingBox3DArray Bbox_array;
            
            // printf("%d 0,1,2 = %f, %f, %f \n",0, pObj->r_zyx[0],pObj->r_zyx[1],pObj->r_zyx[2]);
            for(int idx=0;idx<Sensor_OB_Config.OB_nObjs;idx++){
                struct tObjectSensorObj *pOSO = ObjectSensor_GetObject(0,idx);
                struct tTrafficObj *pObj = Traffic_GetByTrfId(idx);
                tf2::Quaternion q;

                // jsk_recognition_msgs::BoundingBox Bbox;
                // ad_challenge_msgs::FullStateBBox3D Bbox;
                vision_msgs::BoundingBox3D Bbox;


                if(pOSO!=NULL){
                    if(pOSO->RefPnt.ds_p != 0){
                        // Bbox.header.frame_id = "Fr1A";
                        // Bbox.header.stamp= time;
                        // Bbox.pose.position
                        
                        double yaw = pOSO->RefPnt.r_zyx[2];
                        double l = pOSO->l;

                        // Bbox.pose.position.x = pOSO->RefPnt.ds[0] + l/2*cos(yaw);
                        // Bbox.pose.position.y = pOSO->RefPnt.ds[1] + l/2*sin(yaw);
                        // Bbox.pose.position.z = pOSO->RefPnt.ds[2];

                        // Bbox.box.center.position.x = pOSO->RefPnt.ds[0] + l/2*cos(yaw);
                        // Bbox.box.center.position.y = pOSO->RefPnt.ds[1] + l/2*sin(yaw);
                        // Bbox.box.center.position.z = pOSO->RefPnt.ds[2];

                        Bbox.center.position.x = pOSO->RefPnt.ds[0] + l/2*cos(yaw);
                        Bbox.center.position.y = pOSO->RefPnt.ds[1] + l/2*sin(yaw);
                        Bbox.center.position.z = pOSO->RefPnt.ds[2];

                        q.setRPY(0.0, 0.0, yaw);
                        q = q.normalize();

                        // Bbox.pose.orientation.x = q.x();
                        // Bbox.pose.orientation.y = q.y();
                        // Bbox.pose.orientation.z = q.z();
                        // Bbox.pose.orientation.w = q.w();

                        // Bbox.box.center.orientation.x = q.x();
                        // Bbox.box.center.orientation.y = q.y();
                        // Bbox.box.center.orientation.z = q.z();
                        // Bbox.box.center.orientation.w = q.w();

                        Bbox.center.orientation.x = q.x();
                        Bbox.center.orientation.y = q.y();
                        Bbox.center.orientation.z = q.z();
                        Bbox.center.orientation.w = q.w();

                        // Bbox.dimensions.x = pOSO->l;
                        // Bbox.dimensions.y = pOSO->w;
                        // Bbox.dimensions.z = pOSO->h;

                        // Bbox.box.size.x = pOSO->l;
                        // Bbox.box.size.y = pOSO->w;
                        // Bbox.box.size.z = pOSO->h;

                        Bbox.size.x = pOSO->l;
                        Bbox.size.y = pOSO->w;
                        Bbox.size.z = pOSO->h;

                        Bbox_array.boxes.push_back(Bbox);
                    }
                }else{
                    // printf("NULL\n");
                    // printf("%s has no tObjectSensorObj", Sensor_OB_Config.OB_Name[idx]);
                }
            }
            CMNode.Topics.Pub.Bbox_Out.Msg = Bbox_array;
            CMNode.Topics.Pub.Bbox_Out.Msg.header.frame_id = "Fr1A";
            ros::WallTime wtime = ros::WallTime::now();
            CMNode.Topics.Pub.Bbox_Out.Msg.header.stamp.sec = wtime.sec;
            CMNode.Topics.Pub.Bbox_Out.Msg.header.stamp.nsec = wtime.nsec;
        }

		if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.Tsign_Out.Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
			LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.Tsign_Out.CycleTime, CMNode.Topics.Pub.Tsign_Out.CycleOffset, CMNode.CycleNoRel);
			LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.Tsign_Out.Job), CMCRJob_RVStr(rv));
		} else if (sim_time_ms % CMNode.Topics.Pub.Tsign_Out.CycleTime == CMNode.Topics.Pub.Tsign_Out.CycleOffset) {

            ad_challenge_msgs::TrafficSignArray Tsign_array;
            struct tTSignSensor *pTSS = TSignSensor_GetByIndex(TSignSensor_FindIndexForName(Sensor_TS_Config.Sensor_Name));
            
            for(int idx=0;idx<pTSS->nSign;idx++){
                ad_challenge_msgs::TrafficSign Tsign;
                Tsign.position[0] = (pTSS->Sign)[idx].P_0[0];
                Tsign.position[1] = (pTSS->Sign)[idx].P_0[1];
                Tsign.position[2] = (pTSS->Sign)[idx].P_0[2];

                Tsign.vector[0] = (pTSS->Sign)[idx].nuv[0];
                Tsign.vector[1] = (pTSS->Sign)[idx].nuv[1];
                Tsign.vector[2] = (pTSS->Sign)[idx].nuv[2];

                // printf("%f %f %f\n", (pTSS->Sign)[idx].P_0[0], (pTSS->Sign)[idx].P_0[1], (pTSS->Sign)[idx].P_0[2]);

                Tsign_array.signs.push_back(Tsign);
            }

            CMNode.Topics.Pub.Tsign_Out.Msg = Tsign_array;
            CMNode.Topics.Pub.Tsign_Out.Msg.header.frame_id = "Fr0";
            ros::WallTime wtime = ros::WallTime::now();
            CMNode.Topics.Pub.Tsign_Out.Msg.header.stamp.sec = wtime.sec;
            CMNode.Topics.Pub.Tsign_Out.Msg.header.stamp.nsec = wtime.nsec;
        }

#if Lidar_Active_Flag
        for(int i = 0; i < lidarConfig.nSensors; i++){
            if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.Lidar_PC2[i].Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
                LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.Lidar_PC2[i].CycleTime, CMNode.Topics.Pub.Lidar_PC2[i].CycleOffset, CMNode.CycleNoRel);
                LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.Lidar_PC2[i].Job), CMCRJob_RVStr(rv));
            } else if (sim_time_ms % CMNode.Topics.Pub.Lidar_PC2[i].CycleTime == CMNode.Topics.Pub.Lidar_PC2[i].CycleOffset) {
                geometry_msgs::Point32 points;
                sensor_msgs::ChannelFloat32 channels;
                channels.name = "intensity";
                sensor_msgs::PointCloud pointcloud;
        
                //clearing vector data to avoid overflows
                channels.values.clear();
        
                // //Lidar Quantity processing
                for (int j = 0; j < LidarRSI[i].nScanPoints; j++) {

                    const int beam_id = LidarRSI[i].ScanPoint[j].BeamID;
                    const double azimuth = angles::from_degrees(CMNode.LidarRSI_Beam[i].BeamTable[4*CMNode.LidarRSI_Beam[i].rows + beam_id]);
                    const double elevation = angles::from_degrees(CMNode.LidarRSI_Beam[i].BeamTable[5*CMNode.LidarRSI_Beam[i].rows + beam_id]);
                    const double ray_length = 0.5 * LidarRSI[i].ScanPoint[j].LengthOF; // length of flight is back and forth

                    //XYZ-coordinates of scan point
                    points.x = ray_length * cos(elevation) * cos(azimuth);
                    points.y = ray_length * cos(elevation) * sin(azimuth);
                    points.z = ray_length * sin(elevation);

                    pointcloud.points.push_back(points);
                    channels.values.push_back(LidarRSI[i].ScanPoint[j].Intensity);

                }
                
                pointcloud.channels.push_back(channels);
			
                sensor_msgs::convertPointCloudToPointCloud2(pointcloud, CMNode.Topics.Pub.Lidar_PC2[i].Msg);
                
                CMNode.Topics.Pub.Lidar_PC2[i].Msg.header.frame_id = CMNode.TF.Lidar_Array[i].child_frame_id;
                ros::WallTime wtime = ros::WallTime::now();
                CMNode.Topics.Pub.Lidar_PC2[i].Msg.header.stamp.sec  = wtime.sec;
			    CMNode.Topics.Pub.Lidar_PC2[i].Msg.header.stamp.nsec = wtime.nsec;
                
            }

        }
#endif

        //UAQ_Out
		if ((rv = CMCRJob_DoPrep(CMNode.Topics.Pub.UAQ_Out.Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) < CMCRJob_RV_OK) {
			LogErrF(EC_Sim, "cycleTime: %d, cycleoffset: %d, cycle: %lu", CMNode.Topics.Pub.UAQ_Out.CycleTime, CMNode.Topics.Pub.UAQ_Out.CycleOffset, CMNode.CycleNoRel);
			LogErrF(EC_Sim, "CMNode: Error on DoPrep for Job '%s'! rv=%s", CMCRJob_GetName(CMNode.Topics.Pub.UAQ_Out.Job), CMCRJob_RVStr(rv));
		} else if (sim_time_ms % CMNode.Topics.Pub.UAQ_Out.CycleTime == CMNode.Topics.Pub.UAQ_Out.CycleOffset) {
			CMNode.Topics.Pub.UAQ_Out.Msg.cycleno      = CMNode.CycleNoRel;
			CMNode.Topics.Pub.UAQ_Out.Msg.time         = ros::Time(SimCore.Time);
			CMNode.Topics.Pub.UAQ_Out.Msg.synthdelay   = CMNode.Sync.SynthDelay;
			
			ros::WallTime wtime = ros::WallTime::now();
			CMNode.Topics.Pub.UAQ_Out.Msg.header.stamp.sec  = wtime.sec;
			CMNode.Topics.Pub.UAQ_Out.Msg.header.stamp.nsec = wtime.nsec;
			
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_Roll = Car.Roll;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_Pitch = Car.Pitch;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_Yaw = Car.Yaw;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_vx = Car.ConBdy1.v_1[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_vy = Car.ConBdy1.v_1[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_vz = Car.ConBdy1.v_1[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_RollVel = Car.RollVel;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_PitchVel = Car.PitchVel;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_YawVel = Car.YawRate;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_ax = Car.ConBdy1.a_1[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_ay = Car.ConBdy1.a_1[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_az = Car.ConBdy1.a_1[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_RollAcc = Car.RollAcc;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_PitchAcc = Car.PitchAcc;
			CMNode.Topics.Pub.UAQ_Out.Msg.Car_YawAcc = Car.YawAcc;
			CMNode.Topics.Pub.UAQ_Out.Msg.Steer_WhlAng = Steering.IF.Ang;
			CMNode.Topics.Pub.UAQ_Out.Msg.VC_Gas = VehicleControl.Gas;
			CMNode.Topics.Pub.UAQ_Out.Msg.VC_Brake = VehicleControl.Brake;
			CMNode.Topics.Pub.UAQ_Out.Msg.VC_SelectorCtrl = VehicleControl.SelectorCtrl;
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Vel_B_x = InertialSensor[0].Vel_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Vel_B_y = InertialSensor[0].Vel_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Vel_B_z = InertialSensor[0].Vel_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Omega_B_x = InertialSensor[0].Omega_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Omega_B_y = InertialSensor[0].Omega_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Omega_B_z = InertialSensor[0].Omega_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Acc_B_x = InertialSensor[0].Acc_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Acc_B_y = InertialSensor[0].Acc_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Acc_B_z = InertialSensor[0].Acc_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Aplha_B_x = InertialSensor[0].Alpha_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Aplha_B_y = InertialSensor[0].Alpha_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_0_Aplha_B_z = InertialSensor[0].Alpha_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Vel_B_x = InertialSensor[1].Vel_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Vel_B_y = InertialSensor[1].Vel_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Vel_B_z = InertialSensor[1].Vel_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Omega_B_x = InertialSensor[1].Omega_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Omega_B_y = InertialSensor[1].Omega_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Omega_B_z = InertialSensor[1].Omega_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Acc_B_x = InertialSensor[1].Acc_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Acc_B_y = InertialSensor[1].Acc_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Acc_B_z = InertialSensor[1].Acc_B[2];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Aplha_B_x = InertialSensor[1].Alpha_B[0];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Aplha_B_y = InertialSensor[1].Alpha_B[1];
			CMNode.Topics.Pub.UAQ_Out.Msg.Sensor_Inertial_1_Aplha_B_z = InertialSensor[1].Alpha_B[2];
			
		}
		//!UAQ_Out
    }

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called close to end of CarMaker cycle
 * - See "User.c:User_Out()"
 */
int
CMRosIF_CMNode_Out (void)
{
    ros::WallTime wtime = ros::WallTime::now();

    /* Only do anything if simulation is running */
    if (CMNode.Cfg.Mode == CMNode_Mode_Disabled
	    || SimCore.State != SCState_Simulate)
	return 0;

    int rv;

#if Lidar_Active_Flag
    for(int i = 0; i < lidarConfig.nSensors; i++){
        auto out_lidar_pc2 = &CMNode.Topics.Pub.Lidar_PC2[i];
	
        if ((rv = CMCRJob_DoJob(out_lidar_pc2->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
                && rv != CMCRJob_RV_DoSomething) {
            LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(out_lidar_pc2->Job), CMCRJob_RVStr(rv));
        } else if (rv == CMCRJob_RV_DoSomething) {
            
        out_lidar_pc2->Pub.publish(out_lidar_pc2->Msg);
        
        }

    }
#endif

    //imu_Out
    auto imu_out = &CMNode.Topics.Pub.Imu_Out;
    
    if ((rv = CMCRJob_DoJob(imu_out->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
            && rv != CMCRJob_RV_DoSomething) {
        LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(imu_out->Job), CMCRJob_RVStr(rv));
    } else if (rv == CMCRJob_RV_DoSomething) {
	
	imu_out->Pub.publish(imu_out->Msg);
    }
    //!Imu_Out

    //Pose_Out
    auto pose_out = &CMNode.Topics.Pub.Pose_Out;
    
    if ((rv = CMCRJob_DoJob(pose_out->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
            && rv != CMCRJob_RV_DoSomething) {
        LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(pose_out->Job), CMCRJob_RVStr(rv));
    } else if (rv == CMCRJob_RV_DoSomething) {
	    pose_out->Pub.publish(pose_out->Msg);
        std::vector<geometry_msgs::TransformStamped> transforms;
        transforms.push_back(CMNode.TF.Pose);
        CMNode.TF.br->sendTransform(transforms);
    }
    //!Pose_Out

    //UAQ_Out
	auto out_uaq_out = &CMNode.Topics.Pub.UAQ_Out;

    if ((rv = CMCRJob_DoJob(out_uaq_out->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
            && rv != CMCRJob_RV_DoSomething) {
        LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(out_uaq_out->Job), CMCRJob_RVStr(rv));
    } else if (rv == CMCRJob_RV_DoSomething) {
	
	out_uaq_out->Pub.publish(out_uaq_out->Msg);
	
	/* Remember cycle for debugging */
	CMNode.Model.CycleLastOut = CMNode.CycleNoRel;
    }
	//!UAQ_Out

    //Bbox_Out
	auto bbox_out = &CMNode.Topics.Pub.Bbox_Out;
    
    if ((rv = CMCRJob_DoJob(bbox_out->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
            && rv != CMCRJob_RV_DoSomething) {
        LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(bbox_out->Job), CMCRJob_RVStr(rv));
    } else if (rv == CMCRJob_RV_DoSomething) {
	
	bbox_out->Pub.publish(bbox_out->Msg);
    }
    //!Bbox_Out

    //Tsign_Out
	auto tsign_out = &CMNode.Topics.Pub.Tsign_Out;
    
    if ((rv = CMCRJob_DoJob(tsign_out->Job, CMNode.CycleNoRel, 1, nullptr, nullptr)) != CMCRJob_RV_DoNothing
            && rv != CMCRJob_RV_DoSomething) {
        LogErrF(EC_Sim, "CMNode: Error on DoJob for Job '%s'! rv=%s",CMCRJob_GetName(tsign_out->Job), CMCRJob_RVStr(rv));
    } else if (rv == CMCRJob_RV_DoSomething) {
	
	tsign_out->Pub.publish(tsign_out->Msg);
    }
    //!Tsign_Out

    /* Publish "/clock" topic after all other other topics are published
     * - Is the order of arrival in other node identical? */
    if (CMNode.Cfg.nCyclesClock > 0 && CMNode.CycleNoRel%CMNode.Cfg.nCyclesClock == 0) {
        CMNode.Topics.Pub.Clock.Msg.clock = ros::Time(SimCore.Time);
        CMNode.Topics.Pub.Clock.Pub.publish(CMNode.Topics.Pub.Clock.Msg);
    }

    /* ToDo: When increase? */
    CMNode.CycleNoRel++;

    return 1;
}



/*!
 * Important:
 * - DO NOT CHANGE FUNCTION NAME !!!
 * - Automatically called by CMRosIF extension
 *
 * Description:
 * - Called one Time when CarMaker ends
 * - See "User.c:User_End()"
 */
int
CMRosIF_CMNode_End (void)
{
    delete[] CMNode.Topics.Pub.Lidar_PC2;
    delete[] CMNode.TF.Lidar_Array;

    LOG("%s: End", __func__);

    if (ros::isInitialized()) {

	/* Needs to be called before program exists, otherwise
	 * "boost" error due to shared library and default deconstructor */
	CMNode.Cfg.Ros.Node->shutdown();

	/* ToDo:
	 * - Blocking call? Wait until shutdown has finished?
	 * - Optional? */
	ros::shutdown();
    }

    return 1;
}



/*!
 * Important:
 * - NOT automatically called by CMRosIF extension
 *
 * Description:
 * - Example of user generated function
 * - Can be accessed in other sources, e.g. User.c
 * - Use "CMRosIF_GetSymbol()" to get symbol (see "lib/CMRosIF.h")
 *
 */
int
CMRosIF_CMNode_MyFunc (char *LogMsg)
{

    LOG("%s: %s",  __func__, LogMsg);
    return 1;
}

#ifdef __cplusplus
}
#endif

