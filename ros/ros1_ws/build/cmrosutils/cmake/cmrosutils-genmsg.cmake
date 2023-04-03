# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cmrosutils: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cmrosutils_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_custom_target(_cmrosutils_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cmrosutils" "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cmrosutils
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmrosutils
)

### Generating Module File
_generate_module_cpp(cmrosutils
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmrosutils
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cmrosutils_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cmrosutils_generate_messages cmrosutils_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_dependencies(cmrosutils_generate_messages_cpp _cmrosutils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmrosutils_gencpp)
add_dependencies(cmrosutils_gencpp cmrosutils_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmrosutils_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cmrosutils
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmrosutils
)

### Generating Module File
_generate_module_eus(cmrosutils
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmrosutils
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cmrosutils_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cmrosutils_generate_messages cmrosutils_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_dependencies(cmrosutils_generate_messages_eus _cmrosutils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmrosutils_geneus)
add_dependencies(cmrosutils_geneus cmrosutils_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmrosutils_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cmrosutils
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmrosutils
)

### Generating Module File
_generate_module_lisp(cmrosutils
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmrosutils
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cmrosutils_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cmrosutils_generate_messages cmrosutils_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_dependencies(cmrosutils_generate_messages_lisp _cmrosutils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmrosutils_genlisp)
add_dependencies(cmrosutils_genlisp cmrosutils_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmrosutils_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cmrosutils
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmrosutils
)

### Generating Module File
_generate_module_nodejs(cmrosutils
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmrosutils
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cmrosutils_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cmrosutils_generate_messages cmrosutils_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_dependencies(cmrosutils_generate_messages_nodejs _cmrosutils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmrosutils_gennodejs)
add_dependencies(cmrosutils_gennodejs cmrosutils_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmrosutils_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cmrosutils
  "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmrosutils
)

### Generating Module File
_generate_module_py(cmrosutils
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmrosutils
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cmrosutils_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cmrosutils_generate_messages cmrosutils_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/cmrosutils/srv/CMRemote.srv" NAME_WE)
add_dependencies(cmrosutils_generate_messages_py _cmrosutils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cmrosutils_genpy)
add_dependencies(cmrosutils_genpy cmrosutils_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cmrosutils_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmrosutils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cmrosutils
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cmrosutils_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmrosutils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cmrosutils
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cmrosutils_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmrosutils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cmrosutils
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cmrosutils_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmrosutils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cmrosutils
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cmrosutils_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmrosutils)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmrosutils\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cmrosutils
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cmrosutils_generate_messages_py std_msgs_generate_messages_py)
endif()
