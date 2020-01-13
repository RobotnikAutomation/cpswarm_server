# Install script for directory: /home/miguel/ws/cpswarm_server/src/robotnik_msgs-master

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
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE PROGRAM FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/_setup_util.py")
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
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE PROGRAM FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/env.sh")
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
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/setup.bash"
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/local_setup.bash"
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
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/setup.sh"
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/local_setup.sh"
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
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/setup.zsh"
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/local_setup.zsh"
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
file(INSTALL DESTINATION "/home/miguel/ws/cpswarm_server/install" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/encoders.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/inputs_outputs.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/ptz.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Data.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Interfaces.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Axis.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/AlarmSensor.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Alarms.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/MotorStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/MotorsStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/State.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/BatteryStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/BatteryStatusStamped.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/MotorHeadingOffset.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/MotorsStatusDifferential.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/InverterStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/RobotnikMotorsStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/ElevatorAction.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/ElevatorStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Cartesian_Euler_pose.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/alarmmonitor.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/alarmsmonitor.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/named_inputs_outputs.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/named_input_output.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Register.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Registers.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/StringArray.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/LaserMode.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/LaserStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/SafetyModuleStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/SubState.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/QueryAlarm.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/BatteryDockingStatus.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/BatteryDockingStatusStamped.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/BoolArray.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/MotorPID.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Pose2DArray.msg"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg/Pose2DStamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/srv" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/get_digital_input.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_analog_output.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_mode.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_ptz.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/get_mode.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_digital_output.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_odometry.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_height.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/enable_disable.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/home.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/axis_record.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_float_value.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetMotorStatus.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetElevator.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/get_alarms.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/ack_alarm.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_modbus_register.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/get_modbus_register.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/GetBool.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_CartesianEuler_pose.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/set_named_digital_output.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetLaserMode.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/ResetFromSubState.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/QueryAlarms.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetNamedDigitalOutput.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/InsertTask.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetMotorPID.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetMotorMode.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetBuzzer.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetEncoderTurns.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/GetMotorsHeadingOffset.srv"
    "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/srv/SetByte.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/action" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/action/SetElevator.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/msg" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorAction.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorGoal.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorResult.msg"
    "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/include/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/roseus/ros/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/common-lisp/ros/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/gennodejs/ros/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/lib/python2.7/dist-packages/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/lib/python2.7/dist-packages/robotnik_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgsConfig.cmake"
    "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs" TYPE FILE FILES "/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/miguel/ws/cpswarm_server/build/robotnik_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/miguel/ws/cpswarm_server/build/robotnik_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
