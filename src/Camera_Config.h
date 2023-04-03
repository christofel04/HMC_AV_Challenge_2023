#ifndef CAMERARSIMMODEL_H_
#define CAMERARSIMMODEL_H_

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include <CarMaker.h>
#include <Car/Car.h>
#include <Vehicle/Sensor_LidarRSI.h>

typedef struct CameraRSI_Config {
    int nSensors;
	int Sens_Num[20];
	int Sens_Param[20];
	int Sens_Cluster[20];
    
    char camera_name[20][32];
    int vds_port[20];
    double param_trans_rot[20][6];
    int width[20];
    int height[20];
    double fov_deg[20];

} tCameraRSI_Config;

extern tCameraRSI_Config CameraConfig;

int CameraRSI_Config_TestRun_Start_atEnd(void);

#endif /* CAMERARSIMMODEL_H_ */
