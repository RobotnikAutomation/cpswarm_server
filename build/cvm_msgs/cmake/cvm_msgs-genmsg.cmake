# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cvm_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icvm_msgs:/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Istereo_msgs:/opt/ros/kinetic/share/stereo_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cvm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_cvm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cvm_msgs" "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_cvm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cvm_msgs" "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" "geometry_msgs/Point:cvm_msgs/BoundingBox:std_msgs/Header:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_custom_target(_cvm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cvm_msgs" "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" "sensor_msgs/RegionOfInterest:sensor_msgs/Image:std_msgs/Header:stereo_msgs/DisparityImage"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/stereo_msgs/cmake/../msg/DisparityImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs
)
_generate_msg_cpp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs
)
_generate_msg_cpp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(cvm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cvm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cvm_msgs_generate_messages cvm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_cpp _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_cpp _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_cpp _cvm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cvm_msgs_gencpp)
add_dependencies(cvm_msgs_gencpp cvm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cvm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/stereo_msgs/cmake/../msg/DisparityImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs
)
_generate_msg_eus(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs
)
_generate_msg_eus(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(cvm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cvm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cvm_msgs_generate_messages cvm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_eus _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_eus _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_eus _cvm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cvm_msgs_geneus)
add_dependencies(cvm_msgs_geneus cvm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cvm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/stereo_msgs/cmake/../msg/DisparityImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs
)
_generate_msg_lisp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs
)
_generate_msg_lisp(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(cvm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cvm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cvm_msgs_generate_messages cvm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_lisp _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_lisp _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_lisp _cvm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cvm_msgs_genlisp)
add_dependencies(cvm_msgs_genlisp cvm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cvm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/stereo_msgs/cmake/../msg/DisparityImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs
)
_generate_msg_nodejs(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs
)
_generate_msg_nodejs(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cvm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cvm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cvm_msgs_generate_messages cvm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_nodejs _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_nodejs _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_nodejs _cvm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cvm_msgs_gennodejs)
add_dependencies(cvm_msgs_gennodejs cvm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cvm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/stereo_msgs/cmake/../msg/DisparityImage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs
)
_generate_msg_py(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs
)
_generate_msg_py(cvm_msgs
  "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(cvm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cvm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cvm_msgs_generate_messages cvm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_py _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_py _cvm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg/StereoImage.msg" NAME_WE)
add_dependencies(cvm_msgs_generate_messages_py _cvm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cvm_msgs_genpy)
add_dependencies(cvm_msgs_genpy cvm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cvm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cvm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cvm_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cvm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET stereo_msgs_generate_messages_cpp)
  add_dependencies(cvm_msgs_generate_messages_cpp stereo_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cvm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cvm_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cvm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET stereo_msgs_generate_messages_eus)
  add_dependencies(cvm_msgs_generate_messages_eus stereo_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cvm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cvm_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cvm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET stereo_msgs_generate_messages_lisp)
  add_dependencies(cvm_msgs_generate_messages_lisp stereo_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cvm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cvm_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cvm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET stereo_msgs_generate_messages_nodejs)
  add_dependencies(cvm_msgs_generate_messages_nodejs stereo_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cvm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cvm_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cvm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET stereo_msgs_generate_messages_py)
  add_dependencies(cvm_msgs_generate_messages_py stereo_msgs_generate_messages_py)
endif()
