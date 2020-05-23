# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "husky_vel: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ihusky_vel:/home/parallels/catkin_ws/src/husky_development/husky_vel/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(husky_vel_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_custom_target(_husky_vel_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "husky_vel" "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" ""
)

get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_custom_target(_husky_vel_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "husky_vel" "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/husky_vel
)

### Generating Services
_generate_srv_cpp(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/husky_vel
)

### Generating Module File
_generate_module_cpp(husky_vel
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/husky_vel
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(husky_vel_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(husky_vel_generate_messages husky_vel_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_dependencies(husky_vel_generate_messages_cpp _husky_vel_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_dependencies(husky_vel_generate_messages_cpp _husky_vel_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(husky_vel_gencpp)
add_dependencies(husky_vel_gencpp husky_vel_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS husky_vel_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/husky_vel
)

### Generating Services
_generate_srv_eus(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/husky_vel
)

### Generating Module File
_generate_module_eus(husky_vel
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/husky_vel
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(husky_vel_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(husky_vel_generate_messages husky_vel_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_dependencies(husky_vel_generate_messages_eus _husky_vel_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_dependencies(husky_vel_generate_messages_eus _husky_vel_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(husky_vel_geneus)
add_dependencies(husky_vel_geneus husky_vel_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS husky_vel_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/husky_vel
)

### Generating Services
_generate_srv_lisp(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/husky_vel
)

### Generating Module File
_generate_module_lisp(husky_vel
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/husky_vel
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(husky_vel_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(husky_vel_generate_messages husky_vel_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_dependencies(husky_vel_generate_messages_lisp _husky_vel_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_dependencies(husky_vel_generate_messages_lisp _husky_vel_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(husky_vel_genlisp)
add_dependencies(husky_vel_genlisp husky_vel_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS husky_vel_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/husky_vel
)

### Generating Services
_generate_srv_nodejs(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/husky_vel
)

### Generating Module File
_generate_module_nodejs(husky_vel
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/husky_vel
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(husky_vel_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(husky_vel_generate_messages husky_vel_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_dependencies(husky_vel_generate_messages_nodejs _husky_vel_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_dependencies(husky_vel_generate_messages_nodejs _husky_vel_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(husky_vel_gennodejs)
add_dependencies(husky_vel_gennodejs husky_vel_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS husky_vel_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel
)

### Generating Services
_generate_srv_py(husky_vel
  "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel
)

### Generating Module File
_generate_module_py(husky_vel
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(husky_vel_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(husky_vel_generate_messages husky_vel_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/msg/HuskyVelocity.msg" NAME_WE)
add_dependencies(husky_vel_generate_messages_py _husky_vel_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/catkin_ws/src/husky_development/husky_vel/srv/StopHusky.srv" NAME_WE)
add_dependencies(husky_vel_generate_messages_py _husky_vel_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(husky_vel_genpy)
add_dependencies(husky_vel_genpy husky_vel_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS husky_vel_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/husky_vel)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/husky_vel
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(husky_vel_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/husky_vel)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/husky_vel
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(husky_vel_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/husky_vel)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/husky_vel
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(husky_vel_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/husky_vel)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/husky_vel
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(husky_vel_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/husky_vel
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(husky_vel_generate_messages_py std_msgs_generate_messages_py)
endif()