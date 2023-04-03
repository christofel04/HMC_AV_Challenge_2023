/**
 * Description : Lidar RSI Sensor
 *
 * COPYRIGHT 2023, IPG Automotive Korea.
 */
#ifndef LIDARSIMMODEL_H_
#define LIDARSIMMODEL_H_

#include <stdint.h>
#include <sys/time.h>

#include <CarMaker.h>
#include <Car/Car.h>
#include <Vehicle/Sensor_LidarRSI.h>
#include "sUDP.h"

#define LIDAR_MAX_SCANPOINT_SIZE 270000

#define VLP_16_LIDAR_DATAPACKET_SIZE 12
#define VLP_16_LIDAR_DATABLOCK_SIZE 32
#define VLP_16_LIDAR_SENDPOINT_SIZE 384
#define VLP_16_NUMBER_OF_POINTS 28800
#define VLP_16_NUMBER_OF_PACKET 75
#define VLP_16_Distance_Res 2
#define VLP_16_Angle_Res 40 // 0.4 deg

#define VLP_32_LIDAR_DATAPACKET_SIZE 12
#define VLP_32_LIDAR_DATABLOCK_SIZE 32
#define VLP_32_LIDAR_SENDPOINT_SIZE 384
#define VLP_32_NUMBER_OF_POINTS 57600
#define VLP_32_NUMBER_OF_PACKET 150
#define VLP_32_Distance_Res 4
#define VLP_32_Angle_Res 20 // 0.2 deg

#define VLP_64_LIDAR_DATAPACKET_SIZE 12
#define VLP_64_LIDAR_DATABLOCK_SIZE 32
#define VLP_64_LIDAR_SENDPOINT_SIZE 384
#define VLP_64_NUMBER_OF_POINTS 115200
#define VLP_64_NUMBER_OF_PACKET 600
#define VLP_64_Distance_Res 4
#define VLP_64_Angle_Res 20 // 0.2 deg

#pragma pack(push, 1)
typedef struct Data_point {  
    unsigned short 	Range;	// [mm] / n, VLP-16(n = 2), VLP-128(n = 4)
    unsigned char	Ref; 	// Reflectivity [-] 0~100 diffuse, 100~255 retroreflective
}tData_point;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct Data_block {
	unsigned short Flag; 	// Constant
	unsigned short Azimuth; // [deg*100]
    tData_point Data_points[VLP_16_LIDAR_DATABLOCK_SIZE];
}tData_block;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct LidarRSI_SendData_16 {
    tData_block Data_blocks[VLP_16_LIDAR_DATAPACKET_SIZE];
	unsigned int Timestamp; // [us]
	unsigned short Factory; // Constant
}tLidarRSI_SendData_16;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct Data_block_32 {
	unsigned short Flag; 	// Constant
	unsigned short Azimuth; // [deg*100]
    tData_point Data_points[VLP_32_LIDAR_DATABLOCK_SIZE];
}tData_block_32;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct LidarRSI_SendData_32 {
    tData_block_32 Data_blocks[VLP_32_LIDAR_DATAPACKET_SIZE];
	unsigned int Timestamp; // [us]
	unsigned short Factory; // Constant
}tLidarRSI_SendData_32;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct Data_block_64 {
	unsigned short Flag; 	// Constant
	unsigned short Azimuth; // [deg*100]
    tData_point Data_points[VLP_64_LIDAR_DATABLOCK_SIZE];
}tData_block_64;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct LidarRSI_SendData_64 {
    tData_block_64 Data_blocks[VLP_64_LIDAR_DATAPACKET_SIZE];
	unsigned int Timestamp; // [us]
	unsigned short Factory; // Constant
}tLidarRSI_SendData_64;
#pragma pack(pop)

typedef struct LidarRSI_ScanData {
    tData_point Data_points[LIDAR_MAX_SCANPOINT_SIZE];
}tLidarRSI_ScanData;

typedef struct LidarRSI_Param {
    tInfos *Inf_Sensor;
    char SensorBeamFile[255];
    int	sensorCycleTime;
    int sensorCycleOffset;
	int nTotal;
	int nRays;
    int nRaysH;
    int nRaysV;
	double rayHorPerM;
	double rayVertPerM;
    double rayAreaPerM;
    double Beam_VertDiv; // opening angle of beam vertical
    double Beam_HorDiv;  // opening angle of beam horizontal
    double transmitPower;
    double receptionArea;
    double wavelength;
    double env_visRangeInFog;
    double env_alpha;
    double max_intensity;
	
	double roll;
	double pitch;
	double yaw;
	
	double **Lidar_Beams;
}tLidarRSI_Param;

typedef struct LidarRSI_SensorUnit {
	char SensorKind[20];
	char SensorValid;
    int socketOut_Lidar;
	int Num_Scan;
	unsigned short ID_Frame;
	
    tLidarRSI_Param SensorParam;
	tLidarRSI_ScanData Lidar_ScanData;
	tLidarRSI_SendData_16 Lidar_SendData_16[VLP_16_NUMBER_OF_PACKET];
	tLidarRSI_SendData_32 Lidar_SendData_32[VLP_32_NUMBER_OF_PACKET];
	tLidarRSI_SendData_64 Lidar_SendData_64[VLP_64_NUMBER_OF_PACKET];
	tLidarRSI *CM_LidarSens;
}tLidarRSI_SensorUnit;

typedef struct LidarRSI_Config {
    int nSensors;
	int Sens_Num[20];
	int Sens_Param[20];
	int Sens_Cluster[20];
    tLidarRSI_SensorUnit* LidarSensor;
} tLidarRSI_Config;

extern tLidarRSI_Config lidarConfig;

int LidarRSI_Config_TestRun_Start_atEnd(void);
int LidarRSI_Config_Out(const unsigned CycleNo);
int LidarRSI_Config_TestRun_End(void);
int LidarRSI_Config_Cleanup (void);

unsigned char LidarRSI_IntensityCalc_VLP(tLidarRSI_SensorUnit *sens, double intensity, double dist);
unsigned char LidarRSI_IntensityCalc_OS1(tLidarRSI_SensorUnit *sens, double intensity, double dist);

void LidarRSI_ReadSpec_SensorInfoFile(char* SensorBeamFile, int idx_current, char SensorKind[20]);
int  LidarRSI_ReadSpec_VehicleInfoFile(void);
int  LidarRSI_Valid(void);
void LidarRSI_Init_IntensityCalc(void);
int  LidarRSI_WriteSensorData(tLidarRSI_SensorUnit *sens);
void LidarRSI_Send_UDP_DataPackets(tLidarRSI_SensorUnit *sens);

#endif /* LIDARSIMMODEL_H_ */
