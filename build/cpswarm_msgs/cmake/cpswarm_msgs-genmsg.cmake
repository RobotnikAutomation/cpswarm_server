# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cpswarm_msgs: 58 messages, 14 services")

set(MSG_I_FLAGS "-Icpswarm_msgs:/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg;-Icpswarm_msgs:/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iswarmros:/opt/ros/kinetic/share/swarmros/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Icpswarm_msgs:/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg;-Icpswarm_msgs:/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cpswarm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:swarmros/EventHeader:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" "actionlib_msgs/GoalID:cpswarm_msgs/CoverageGoal:actionlib_msgs/GoalStatus:cpswarm_msgs/CoverageActionFeedback:geometry_msgs/Quaternion:cpswarm_msgs/CoverageFeedback:geometry_msgs/Point:cpswarm_msgs/CoverageActionResult:cpswarm_msgs/CoverageResult:geometry_msgs/Pose:geometry_msgs/PoseStamped:cpswarm_msgs/CoverageActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:swarmros/EventHeader:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" "swarmros/EventHeader:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" "cpswarm_msgs/TrackingGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" "cpswarm_msgs/TrackingFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:cpswarm_msgs/TargetGoal:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" "swarmros/EventHeader:std_msgs/Header:std_msgs/UInt32"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" "geometry_msgs/PoseStamped:sensor_msgs/NavSatFix:geometry_msgs/Quaternion:geometry_msgs/Point:sensor_msgs/NavSatStatus:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" "cpswarm_msgs/TaskAllocationGoal:actionlib_msgs/GoalID:std_msgs/Header:cpswarm_msgs/TaskAllocationResult:geometry_msgs/Quaternion:geometry_msgs/Point:cpswarm_msgs/TaskAllocationActionResult:geometry_msgs/PoseStamped:cpswarm_msgs/TaskAllocationActionFeedback:cpswarm_msgs/TaskAllocationFeedback:cpswarm_msgs/TaskAllocationActionGoal:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" "swarmros/EventHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" "swarmros/EventHeader:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" "cpswarm_msgs/TrackingResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" "swarmros/EventHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" "std_msgs/Header:geometry_msgs/Quaternion:cpswarm_msgs/Position:geometry_msgs/Point:swarmros/EventHeader:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" "cpswarm_msgs/PickAndPlaceResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" "cpswarm_msgs/EmptyActionFeedback:actionlib_msgs/GoalStatus:cpswarm_msgs/EmptyActionResult:cpswarm_msgs/EmptyGoal:cpswarm_msgs/EmptyResult:cpswarm_msgs/EmptyActionGoal:actionlib_msgs/GoalID:cpswarm_msgs/EmptyFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" "sensor_msgs/NavSatStatus:sensor_msgs/NavSatFix:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" "actionlib_msgs/GoalStatus:cpswarm_msgs/TrackingGoal:cpswarm_msgs/TrackingResult:cpswarm_msgs/TrackingActionResult:cpswarm_msgs/TrackingActionFeedback:cpswarm_msgs/TrackingFeedback:cpswarm_msgs/TrackingActionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:cpswarm_msgs/TaskAllocationResult:geometry_msgs/PoseStamped:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" "swarmros/EventHeader:std_msgs/Header:std_msgs/Int8"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:cpswarm_msgs/EmptyGoal"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" "actionlib_msgs/GoalID:std_msgs/Header:cpswarm_msgs/TargetGoal:geometry_msgs/Point:cpswarm_msgs/TargetFeedback:cpswarm_msgs/TargetResult:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:cpswarm_msgs/TargetActionResult:cpswarm_msgs/TargetActionGoal:geometry_msgs/Pose:cpswarm_msgs/TargetActionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" "swarmros/EventHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" "geometry_msgs/PoseStamped:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:cpswarm_msgs/CoverageResult:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" "swarmros/EventHeader:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" "cpswarm_msgs/EmptyResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" "cpswarm_msgs/Vector:swarmros/EventHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" "cpswarm_msgs/TargetFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" "cpswarm_msgs/TaskAllocationFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" "cpswarm_msgs/PickAndPlaceFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" "cpswarm_msgs/PickAndPlaceActionGoal:actionlib_msgs/GoalID:std_msgs/Header:cpswarm_msgs/PickAndPlaceFeedback:cpswarm_msgs/PickAndPlaceGoal:cpswarm_msgs/PickAndPlaceActionFeedback:geometry_msgs/Point:cpswarm_msgs/PickAndPlaceResult:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:geometry_msgs/Pose:cpswarm_msgs/PickAndPlaceActionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" "cpswarm_msgs/TargetResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" "cpswarm_msgs/Vector:swarmros/EventHeader:cpswarm_msgs/VectorStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" "cpswarm_msgs/StateEvent:swarmros/EventHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" "cpswarm_msgs/TaskAllocationGoal:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" "cpswarm_msgs/CoverageFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" "sensor_msgs/NavSatStatus:sensor_msgs/NavSatFix:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:cpswarm_msgs/PickAndPlaceGoal:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" "cpswarm_msgs/EmptyFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" "actionlib_msgs/GoalID:cpswarm_msgs/CoverageGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" ""
)

get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_custom_target(_cpswarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cpswarm_msgs" "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)

### Generating Services
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_cpp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
)

### Generating Module File
_generate_module_cpp(cpswarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cpswarm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cpswarm_msgs_generate_messages cpswarm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_cpp _cpswarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cpswarm_msgs_gencpp)
add_dependencies(cpswarm_msgs_gencpp cpswarm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cpswarm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)

### Generating Services
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_eus(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
)

### Generating Module File
_generate_module_eus(cpswarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cpswarm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cpswarm_msgs_generate_messages cpswarm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_eus _cpswarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cpswarm_msgs_geneus)
add_dependencies(cpswarm_msgs_geneus cpswarm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cpswarm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)

### Generating Services
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_lisp(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
)

### Generating Module File
_generate_module_lisp(cpswarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cpswarm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cpswarm_msgs_generate_messages cpswarm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_lisp _cpswarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cpswarm_msgs_genlisp)
add_dependencies(cpswarm_msgs_genlisp cpswarm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cpswarm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)

### Generating Services
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_nodejs(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
)

### Generating Module File
_generate_module_nodejs(cpswarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cpswarm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cpswarm_msgs_generate_messages cpswarm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_nodejs _cpswarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cpswarm_msgs_gennodejs)
add_dependencies(cpswarm_msgs_gennodejs cpswarm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cpswarm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg;/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/swarmros/cmake/../msg/EventHeader.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_msg_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)

### Generating Services
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)
_generate_srv_py(cpswarm_msgs
  "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
)

### Generating Module File
_generate_module_py(cpswarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cpswarm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cpswarm_msgs_generate_messages cpswarm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg" NAME_WE)
add_dependencies(cpswarm_msgs_generate_messages_py _cpswarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cpswarm_msgs_genpy)
add_dependencies(cpswarm_msgs_genpy cpswarm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cpswarm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cpswarm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET swarmros_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp swarmros_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET cpswarm_msgs_generate_messages_cpp)
  add_dependencies(cpswarm_msgs_generate_messages_cpp cpswarm_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cpswarm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET swarmros_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus swarmros_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET cpswarm_msgs_generate_messages_eus)
  add_dependencies(cpswarm_msgs_generate_messages_eus cpswarm_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cpswarm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET swarmros_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp swarmros_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET cpswarm_msgs_generate_messages_lisp)
  add_dependencies(cpswarm_msgs_generate_messages_lisp cpswarm_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cpswarm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET swarmros_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs swarmros_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET cpswarm_msgs_generate_messages_nodejs)
  add_dependencies(cpswarm_msgs_generate_messages_nodejs cpswarm_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cpswarm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET swarmros_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py swarmros_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET cpswarm_msgs_generate_messages_py)
  add_dependencies(cpswarm_msgs_generate_messages_py cpswarm_msgs_generate_messages_py)
endif()
