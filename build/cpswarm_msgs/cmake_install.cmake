# Install script for directory: /home/miguel/ws/cpswarm_server/src/cpswarm_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/miguel/ws/cpswarm_server/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE PROGRAM FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE PROGRAM FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/setup.bash;/home/miguel/ws/cpswarm_server/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/setup.bash"
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/setup.sh;/home/miguel/ws/cpswarm_server/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/setup.sh"
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/setup.zsh;/home/miguel/ws/cpswarm_server/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/setup.zsh"
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/ws/cpswarm_server/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/AreaDivisionEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfPositions.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfStates.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/ArrayOfVectors.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CartKnownEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/CurrentState.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/NewCartEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Position.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/StateEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetPositionEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocatedEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TaskAllocationEvent.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/TargetTracking.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Vector.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/VectorStamped.msg"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg/Velocity.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/srv" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClearOfObstacles.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/ClosestBound.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/Danger.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/FixToPose.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetDouble.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetGpsFix.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoint.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetPoints.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetSector.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetVector.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/GetWaypoint.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/NedToEnu.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/OutOfBounds.srv"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/srv/PoseToFix.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/action" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/Coverage.action"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/Empty.action"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/Target.action"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/TaskAllocation.action"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/Tracking.action"
    "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/action/PickAndPlace.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/CoverageFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/EmptyFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TargetFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TaskAllocationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/TrackingFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg/PickAndPlaceFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/cmake" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/cpswarm_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/include/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/roseus/ros/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/common-lisp/ros/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/gennodejs/ros/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/lib/python2.7/dist-packages/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/lib/python2.7/dist-packages/cpswarm_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/cpswarm_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/cmake" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/cpswarm_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs/cmake" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/cpswarm_msgsConfig.cmake"
    "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/catkin_generated/installspace/cpswarm_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cpswarm_msgs" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/miguel/ws/cpswarm_server/build/cpswarm_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
