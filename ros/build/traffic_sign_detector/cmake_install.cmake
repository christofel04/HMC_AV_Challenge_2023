# Install script for directory: /home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/traffic_sign_detector

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/installspace/traffic_sign_detector.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/traffic_sign_detector/cmake" TYPE FILE FILES
    "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/installspace/traffic_sign_detectorConfig.cmake"
    "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/installspace/traffic_sign_detectorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/traffic_sign_detector" TYPE FILE FILES "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/traffic_sign_detector/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/traffic_sign_detector" TYPE PROGRAM FILES "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector/catkin_generated/installspace/ct.py")
endif()

