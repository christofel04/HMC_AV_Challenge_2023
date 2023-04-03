#******************************************************************************
#**  CarMaker - Version 11.1
#**  Vehicle Dynamics Simulation Toolkit
#**
#**  Copyright (C)   IPG Automotive GmbH
#**                  Bannwaldallee 60             Phone  +49.721.98520.0
#**                  76185 Karlsruhe              Fax    +49.721.98520.99
#**                  Germany                      WWW    www.ipg-automotive.com
#******************************************************************************
#**
#**  Application Makefile
#**  Run with 'make V=1 ...' for a verbose build.
#**
#******************************************************************************

include /opt/ipg/carmaker/linux64-11.1/include/MakeDefs.linux64

APP_VER =		"CarMaker_AV_Challenge"
APP_NAME =		CarMaker_AV_Challenge.$(ARCH)$(EXE_EXT)

#OPT_CFLAGS =		-g -O1

LD_LIBS =		$(CAR_LIB) \
			$(CARMAKER_LIB) $(DRIVER_LIB) $(ROAD_LIB) $(TIRE_LIB)
OBJS =			CM_Main.o CM_Vehicle.o User.o

# Add Sensor Model - UDP
OBJS += 		LidarRSI_Model.o sUDP.o
DEF_CFLAGS += 	-DWITH_LIDAR_MODULE

#Add Vehicle information & GNSS - UDP
OBJS +=			VehicleInfo_UDP.o
DEF_CFLAGS += 	-DWITH_VehicleInfo_MODULE

#Add Vehicle control - UDP
OBJS +=			Vehicle_Control_UDP.o
DEF_CFLAGS += 	-DWITH_Vehicle_Control_MODULE

#Add Camera Config - ROS
OBJS += 		Camera_Config.o
DEF_CFLAGS += 	-DWITH_CAMERA_CONFIG

# CarMaker extension CMRosIF (provided by IPG) - ROS
DEF_CFLAGS      += -DWITH_CMROSIF
LD_LIBS_OS      += -lCMRosIF-$(ARCH)
LDFLAGS         += -L./../lib/
LDFLAGS         += -Wl,-rpath,'$$ORIGIN/../lib/'
INC_CFLAGS      += -I../include
CFLAGS          += -rdynamic

# Prepend local include/library directory to include path:
# PREINC_CFLAGS +=		-I../include -I../lib/$(ARCH) -I../lib

# Append local include/library directory to include path:
# INC_CFLAGS +=		-I../include -I../lib/$(ARCH) -I../lib


### Linking with RTW-built Simulink models

#MATSUPP_MATVER =	R2019a
#LD_LIBS +=		$(MATSUPP_LIB)


# @@PLUGIN-BEGIN-LIBS@@ - Automatically generated code - don't edit!
# @@PLUGIN-END@@

### END (Linking with RTW-built Simulink models)


#default:	$(APP_NAME)
default:	clean_user $(APP_NAME) install_cp
$(APP_NAME):	$(OBJS_$(ARCH)) $(OBJS) $(LD_LIBS_MK) app_tmp.o
	$(QECHO) " LD     $@"
	$Q $(CC) $(CFLAGS) $(LDFLAGS) -o $@ \
		$(OBJS_$(ARCH)) $(OBJS) $(LD_LIBS) $(LD_LIBS_OS) \
		app_tmp.o
	$(SET_EXE_PERMISSIONS) $@


install: $(APP_NAME)
	$(INSTALL_APP) $(APP_NAME) $(ARCH)

# Warning: Only Workaround for this example!
# - "install" creates copies with timestamp
# - here copy only for development
# - alternatively change CM executable directory
#   -> take care or relative paths for shared libraries!
# - currently no strip, ...
install_cp: $(APP_NAME)
	mkdir -p ./../bin/
	cp -f --parents $(APP_NAME) ./../bin/
	
clean:
	-rm -f 	*~ *% *.o core

clean_user:
	-rm -f 	User.o core

app_tmp.c: Makefile $(OBJS_$(ARCH)) $(OBJS) $(LD_LIBS_MK)
	$(QECHO) " MK     $@"
	$Q $(CREATE_INFO_CMD)

depend .depend: Makefile
	$(QECHO) " MK     $@"
	@echo -n "" >.depend
ifneq ($(wildcard *.c),)
	$Q-$(CC)  $(CFLAGS)   $(DEPCFLAGS)   *.c   >>.depend 2>/dev/null
endif
ifneq ($(wildcard *.cpp),)
	$Q-$(CXX) $(CXXFLAGS) $(DEPCXXFLAGS) *.cpp >>.depend 2>/dev/null
endif
include .depend
