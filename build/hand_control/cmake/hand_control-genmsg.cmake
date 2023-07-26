# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hand_control: 2 messages, 9 services")

set(MSG_I_FLAGS "-Ihand_control:/home/julius/TAU-Hand-Control/src/hand_control/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hand_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_custom_target(_hand_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_control" "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_msg_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)

### Generating Services
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)
_generate_srv_cpp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
)

### Generating Module File
_generate_module_cpp(hand_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hand_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hand_control_generate_messages hand_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_cpp _hand_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_control_gencpp)
add_dependencies(hand_control_gencpp hand_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_msg_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)

### Generating Services
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)
_generate_srv_eus(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
)

### Generating Module File
_generate_module_eus(hand_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hand_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hand_control_generate_messages hand_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_eus _hand_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_control_geneus)
add_dependencies(hand_control_geneus hand_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_msg_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)

### Generating Services
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)
_generate_srv_lisp(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
)

### Generating Module File
_generate_module_lisp(hand_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hand_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hand_control_generate_messages hand_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_lisp _hand_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_control_genlisp)
add_dependencies(hand_control_genlisp hand_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_msg_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)

### Generating Services
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)
_generate_srv_nodejs(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
)

### Generating Module File
_generate_module_nodejs(hand_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hand_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hand_control_generate_messages hand_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_nodejs _hand_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_control_gennodejs)
add_dependencies(hand_control_gennodejs hand_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_msg_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)

### Generating Services
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)
_generate_srv_py(hand_control
  "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
)

### Generating Module File
_generate_module_py(hand_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hand_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hand_control_generate_messages hand_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/ObjOrientation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/observation.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_response.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/msg/plan_for_goal_request.msg" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/net_eval.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/planroll.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/IsDropped.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/RegraspObject.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/close.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetPos.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/hand_control/srv/TargetAngles.srv" NAME_WE)
add_dependencies(hand_control_generate_messages_py _hand_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_control_genpy)
add_dependencies(hand_control_genpy hand_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hand_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hand_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hand_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hand_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hand_control_generate_messages_py std_msgs_generate_messages_py)
endif()
