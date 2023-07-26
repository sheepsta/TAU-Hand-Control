# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rollout: 0 messages, 9 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rollout_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" ""
)

get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_custom_target(_rollout_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rollout" "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)
_generate_srv_cpp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
)

### Generating Module File
_generate_module_cpp(rollout
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rollout_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rollout_generate_messages rollout_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_dependencies(rollout_generate_messages_cpp _rollout_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rollout_gencpp)
add_dependencies(rollout_gencpp rollout_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rollout_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)
_generate_srv_eus(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
)

### Generating Module File
_generate_module_eus(rollout
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rollout_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rollout_generate_messages rollout_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_dependencies(rollout_generate_messages_eus _rollout_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rollout_geneus)
add_dependencies(rollout_geneus rollout_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rollout_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)
_generate_srv_lisp(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
)

### Generating Module File
_generate_module_lisp(rollout
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rollout_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rollout_generate_messages rollout_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_dependencies(rollout_generate_messages_lisp _rollout_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rollout_genlisp)
add_dependencies(rollout_genlisp rollout_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rollout_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)
_generate_srv_nodejs(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
)

### Generating Module File
_generate_module_nodejs(rollout
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rollout_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rollout_generate_messages rollout_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_dependencies(rollout_generate_messages_nodejs _rollout_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rollout_gennodejs)
add_dependencies(rollout_gennodejs rollout_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rollout_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)
_generate_srv_py(rollout
  "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
)

### Generating Module File
_generate_module_py(rollout
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rollout_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rollout_generate_messages rollout_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/TargetAngles.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/observation.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqMod.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/rolloutReqFile.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/IsDropped.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/MoveServos.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/plotReq.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julius/TAU-Hand-Control/src/rollout/srv/gets.srv" NAME_WE)
add_dependencies(rollout_generate_messages_py _rollout_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rollout_genpy)
add_dependencies(rollout_genpy rollout_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rollout_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rollout
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rollout_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rollout
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rollout_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rollout
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rollout_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rollout
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rollout_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rollout
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rollout_generate_messages_py std_msgs_generate_messages_py)
endif()
