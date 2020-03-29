# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "neato_node: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ineato_node:/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(neato_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_custom_target(_neato_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neato_node" "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" ""
)

get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_custom_target(_neato_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neato_node" "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neato_node
)
_generate_msg_cpp(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neato_node
)

### Generating Services

### Generating Module File
_generate_module_cpp(neato_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neato_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(neato_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(neato_node_generate_messages neato_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_cpp _neato_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_cpp _neato_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neato_node_gencpp)
add_dependencies(neato_node_gencpp neato_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neato_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neato_node
)
_generate_msg_eus(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neato_node
)

### Generating Services

### Generating Module File
_generate_module_eus(neato_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neato_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(neato_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(neato_node_generate_messages neato_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_eus _neato_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_eus _neato_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neato_node_geneus)
add_dependencies(neato_node_geneus neato_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neato_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neato_node
)
_generate_msg_lisp(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neato_node
)

### Generating Services

### Generating Module File
_generate_module_lisp(neato_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neato_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(neato_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(neato_node_generate_messages neato_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_lisp _neato_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_lisp _neato_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neato_node_genlisp)
add_dependencies(neato_node_genlisp neato_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neato_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neato_node
)
_generate_msg_nodejs(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neato_node
)

### Generating Services

### Generating Module File
_generate_module_nodejs(neato_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neato_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(neato_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(neato_node_generate_messages neato_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_nodejs _neato_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_nodejs _neato_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neato_node_gennodejs)
add_dependencies(neato_node_gennodejs neato_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neato_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node
)
_generate_msg_py(neato_node
  "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node
)

### Generating Services

### Generating Module File
_generate_module_py(neato_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(neato_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(neato_node_generate_messages neato_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Button.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_py _neato_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sytasch/ROS/turtle/catkin_ws/src/intro_to_ros/bv80bot/neato_robot/neato_node/msg/Sensor.msg" NAME_WE)
add_dependencies(neato_node_generate_messages_py _neato_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neato_node_genpy)
add_dependencies(neato_node_genpy neato_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neato_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neato_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neato_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neato_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neato_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neato_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neato_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neato_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neato_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neato_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
