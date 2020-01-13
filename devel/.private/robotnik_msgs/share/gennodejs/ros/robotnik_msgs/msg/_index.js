
"use strict";

let named_inputs_outputs = require('./named_inputs_outputs.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let ptz = require('./ptz.js');
let Interfaces = require('./Interfaces.js');
let Register = require('./Register.js');
let MotorsStatus = require('./MotorsStatus.js');
let StringArray = require('./StringArray.js');
let BoolArray = require('./BoolArray.js');
let named_input_output = require('./named_input_output.js');
let BatteryStatus = require('./BatteryStatus.js');
let SubState = require('./SubState.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let InverterStatus = require('./InverterStatus.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let Alarms = require('./Alarms.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let State = require('./State.js');
let LaserStatus = require('./LaserStatus.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let MotorPID = require('./MotorPID.js');
let Pose2DArray = require('./Pose2DArray.js');
let Axis = require('./Axis.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let encoders = require('./encoders.js');
let inputs_outputs = require('./inputs_outputs.js');
let Registers = require('./Registers.js');
let QueryAlarm = require('./QueryAlarm.js');
let MotorStatus = require('./MotorStatus.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let Data = require('./Data.js');
let alarmmonitor = require('./alarmmonitor.js');
let AlarmSensor = require('./AlarmSensor.js');
let LaserMode = require('./LaserMode.js');
let ElevatorAction = require('./ElevatorAction.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');

module.exports = {
  named_inputs_outputs: named_inputs_outputs,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  ptz: ptz,
  Interfaces: Interfaces,
  Register: Register,
  MotorsStatus: MotorsStatus,
  StringArray: StringArray,
  BoolArray: BoolArray,
  named_input_output: named_input_output,
  BatteryStatus: BatteryStatus,
  SubState: SubState,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  SafetyModuleStatus: SafetyModuleStatus,
  InverterStatus: InverterStatus,
  BatteryStatusStamped: BatteryStatusStamped,
  Alarms: Alarms,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  MotorHeadingOffset: MotorHeadingOffset,
  State: State,
  LaserStatus: LaserStatus,
  Pose2DStamped: Pose2DStamped,
  MotorPID: MotorPID,
  Pose2DArray: Pose2DArray,
  Axis: Axis,
  BatteryDockingStatus: BatteryDockingStatus,
  ElevatorStatus: ElevatorStatus,
  encoders: encoders,
  inputs_outputs: inputs_outputs,
  Registers: Registers,
  QueryAlarm: QueryAlarm,
  MotorStatus: MotorStatus,
  alarmsmonitor: alarmsmonitor,
  Data: Data,
  alarmmonitor: alarmmonitor,
  AlarmSensor: AlarmSensor,
  LaserMode: LaserMode,
  ElevatorAction: ElevatorAction,
  MotorsStatusDifferential: MotorsStatusDifferential,
  SetElevatorActionGoal: SetElevatorActionGoal,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorAction: SetElevatorAction,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorResult: SetElevatorResult,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
};
