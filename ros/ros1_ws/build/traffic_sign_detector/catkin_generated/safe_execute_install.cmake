execute_process(COMMAND "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
