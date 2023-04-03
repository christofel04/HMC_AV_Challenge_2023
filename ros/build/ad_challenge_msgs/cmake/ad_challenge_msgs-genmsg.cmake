# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ad_challenge_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Iad_challenge_msgs:/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ivision_msgs:/opt/ros/noetic/share/vision_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ad_challenge_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" ""
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" "ad_challenge_msgs/CM_Object"
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" "geometry_msgs/Pose:geometry_msgs/Accel:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist:vision_msgs/BoundingBox3D:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" "ad_challenge_msgs/FullStateBBox3D:geometry_msgs/Pose:geometry_msgs/Accel:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist:vision_msgs/BoundingBox3D:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" ""
)

get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_custom_target(_ad_challenge_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ad_challenge_msgs" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" "ad_challenge_msgs/TrafficSign:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_cpp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(ad_challenge_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ad_challenge_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ad_challenge_msgs_generate_messages ad_challenge_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_cpp _ad_challenge_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ad_challenge_msgs_gencpp)
add_dependencies(ad_challenge_msgs_gencpp ad_challenge_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ad_challenge_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_eus(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(ad_challenge_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ad_challenge_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ad_challenge_msgs_generate_messages ad_challenge_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_eus _ad_challenge_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ad_challenge_msgs_geneus)
add_dependencies(ad_challenge_msgs_geneus ad_challenge_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ad_challenge_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_lisp(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(ad_challenge_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ad_challenge_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ad_challenge_msgs_generate_messages ad_challenge_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_lisp _ad_challenge_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ad_challenge_msgs_genlisp)
add_dependencies(ad_challenge_msgs_genlisp ad_challenge_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ad_challenge_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_nodejs(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ad_challenge_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ad_challenge_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ad_challenge_msgs_generate_messages ad_challenge_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_nodejs _ad_challenge_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ad_challenge_msgs_gennodejs)
add_dependencies(ad_challenge_msgs_gennodejs ad_challenge_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ad_challenge_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)
_generate_msg_py(ad_challenge_msgs
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(ad_challenge_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ad_challenge_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ad_challenge_msgs_generate_messages ad_challenge_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/UAQ_Out.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/Control_Signal.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/CM_Object.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/OB_List.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3D.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/FullStateBBox3DArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSign.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/ad_challenge_msgs/msg/TrafficSignArray.msg" NAME_WE)
add_dependencies(ad_challenge_msgs_generate_messages_py _ad_challenge_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ad_challenge_msgs_genpy)
add_dependencies(ad_challenge_msgs_genpy ad_challenge_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ad_challenge_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ad_challenge_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ad_challenge_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET vision_msgs_generate_messages_cpp)
  add_dependencies(ad_challenge_msgs_generate_messages_cpp vision_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ad_challenge_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ad_challenge_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ad_challenge_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET vision_msgs_generate_messages_eus)
  add_dependencies(ad_challenge_msgs_generate_messages_eus vision_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ad_challenge_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ad_challenge_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ad_challenge_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET vision_msgs_generate_messages_lisp)
  add_dependencies(ad_challenge_msgs_generate_messages_lisp vision_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ad_challenge_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ad_challenge_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ad_challenge_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET vision_msgs_generate_messages_nodejs)
  add_dependencies(ad_challenge_msgs_generate_messages_nodejs vision_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ad_challenge_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ad_challenge_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ad_challenge_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET vision_msgs_generate_messages_py)
  add_dependencies(ad_challenge_msgs_generate_messages_py vision_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ad_challenge_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
