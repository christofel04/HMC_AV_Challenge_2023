#include "Camera_Config.h"

tCameraRSI_Config CameraConfig = {0};

int Camera_Config_TestRun_Start_atEnd(void){
    char *name;
    char key[64];
    int i; 
	int Num_Sens, Ref_Param, Active_Sens;
	int tmp = 0;

	// Amount of Lidar RSI Sensors
	sprintf(key, "Sensor.N");
	Num_Sens = iGetInt(SimCore.Vhcl.Inf, key);
	CameraConfig.nSensors = 0;
	
	for (i=0; i<Num_Sens ; i++)
	{
		sprintf(key, "Sensor.%d.Active", i);
		Active_Sens = iGetInt(SimCore.Vhcl.Inf, key);
		if(Active_Sens == 0) continue;
		
		sprintf(key, "Sensor.%d.Ref.Param", i);
		Ref_Param = iGetInt(SimCore.Vhcl.Inf, key);
		
		sprintf(key, "Sensor.Param.%d.Type", Ref_Param);
		name = iGetStrOpt(SimCore.Vhcl.Inf, key, NULL);
		
		if(strcmp(name, "CameraRSI") == 0)	
		{
			CameraConfig.nSensors++;
			CameraConfig.Sens_Num[tmp] = i;
			CameraConfig.Sens_Param[tmp] = Ref_Param;
			sprintf(key, "Sensor.%d.Ref.Cluster", i);
			CameraConfig.Sens_Cluster[tmp] = iGetInt(SimCore.Vhcl.Inf, key);
            
            sprintf(key, "Sensor.%d.name", i);
            sprintf(CameraConfig.camera_name[tmp], iGetStr(SimCore.Vhcl.Inf, key));
            
            sprintf(key, "SensorCluster.%d.Socket", CameraConfig.Sens_Cluster[tmp]);
            CameraConfig.vds_port[tmp] = iGetInt(SimCore.Vhcl.Inf, key);
            
            sprintf(key, "Sensor.%d.pos", i);
            double *pos = iGetFixedTable2(SimCore.Vhcl.Inf, key, 3, 1);
            sprintf(key, "Sensor.%d.rot", i);
            double *rot = iGetFixedTable2(SimCore.Vhcl.Inf, key, 3, 1);
            for(int i = 0; i < 3; i++){
                CameraConfig.param_trans_rot[tmp][i] = pos[i];
                CameraConfig.param_trans_rot[tmp][i+3] = rot[i];
            }
            
            sprintf(key, "Sensor.Param.%d.Resolution", Ref_Param);
            double *resoultion = iGetFixedTable2(SimCore.Vhcl.Inf, key, 2, 1);
            CameraConfig.width[tmp] = resoultion[0];
            CameraConfig.height[tmp] = resoultion[1];

            sprintf(key, "Sensor.Param.%d.FoV", Ref_Param);
            CameraConfig.fov_deg[tmp] = iGetDbl(SimCore.Vhcl.Inf, key);
            
			tmp++;
		}
	}

    FILE *fp;
    fp = fopen("./ros/ros1_ws/src/carmaker_vds_client/launch/CameraConfig.txt", "w");
    
    fprintf(fp, "CameraConfig.nSensors=%d\n", CameraConfig.nSensors);

    for(int i = 0; i < CameraConfig.nSensors; i++){
        
        fprintf(fp, "senor-%d-camera_name=%s\n", i, CameraConfig.camera_name[i]);
        fprintf(fp, "senor-%d-vds_port=%d\n", i, CameraConfig.vds_port[i]);
        fprintf(fp, "senor-%d-param_trans_rot=%f,%f,%f,%f,%f,%f\n",   i, 
                                                                    CameraConfig.param_trans_rot[i][0],
                                                                    CameraConfig.param_trans_rot[i][1],
                                                                    CameraConfig.param_trans_rot[i][2],
                                                                    CameraConfig.param_trans_rot[i][3],
                                                                    CameraConfig.param_trans_rot[i][4],
                                                                    CameraConfig.param_trans_rot[i][5]);
        fprintf(fp, "senor-%d-width=%d\n", i, CameraConfig.width[i]);
        fprintf(fp, "senor-%d-height=%d\n", i, CameraConfig.height[i]);
        fprintf(fp, "senor-%d-fov_deg=%f\n", i, CameraConfig.fov_deg[i]);
        
    }

    fclose(fp);

	return 0;

}
