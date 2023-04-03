/*
******************************************************************************
**  CarMaker - Version 11.1
**
**  Copyright (C)   IPG Automotive Korea
******************************************************************************
*/

#ifndef _UDP_H__
#define _UDP_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct tUDP_PC {
	unsigned short Port_In;
	char *Socket_In;
	int VC_SwitchOn;
} tUDP_PC;

extern tUDP_PC UDP_PC;

#pragma pack (push, 1)
typedef struct tUDP_Input {
	struct {
		unsigned char MsgID;	// 0xFF : if not, didn't receive
	} Header;
	
    struct {
		double Steer_Ang;   	// rad
		int SelectorCtrl; 		// 1: Driving, 0: Stop, -1: Back, -9: Parking
		double Gas; 			// 0: no gas, 1: full gas
		double Brake; 			// 0: no brake, 1: full brake
    } DriveCont;
} tUDP_Input;
#pragma pack(pop)

extern tUDP_Input UDP_Input;

extern tUDP_PC UDP_PC;

int Vehicle_Control_UDP_User_TestRun_atEnd (void);
void Vehicle_Control_UDP_User_DeclQuants (void);
int Vehicle_Control_UDP_User_TestRun_Start_Finalize (void);
void Vehicle_Control_UDP_User_In (const unsigned CycleNo);
int Vehicle_Control_UDP_User_VehicleControl_Calc (double dt);
int Vehicle_Control_UDP_User_Calc (void);
void Vehicle_Control_UDP_User_Out (const unsigned CycleNo);
int Vehicle_Control_UDP_User_TestRun_End_First (void);
int Vehicle_Control_UDP_TestRun_End (void);
void Vehicle_Control_UDP_Cleanup (void);


#ifdef __cplusplus
}
#endif

#endif	/* #ifndef _UDP_H__ */

