
"use strict";

let set_modbus_register = require('./set_modbus_register.js')
let axis_record = require('./axis_record.js')
let get_alarms = require('./get_alarms.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let set_odometry = require('./set_odometry.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let set_mode = require('./set_mode.js')
let set_ptz = require('./set_ptz.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let QueryAlarms = require('./QueryAlarms.js')
let home = require('./home.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let enable_disable = require('./enable_disable.js')
let SetMotorPID = require('./SetMotorPID.js')
let set_height = require('./set_height.js')
let get_digital_input = require('./get_digital_input.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let get_mode = require('./get_mode.js')
let set_digital_output = require('./set_digital_output.js')
let SetLaserMode = require('./SetLaserMode.js')
let SetElevator = require('./SetElevator.js')
let ack_alarm = require('./ack_alarm.js')
let InsertTask = require('./InsertTask.js')
let set_analog_output = require('./set_analog_output.js')
let SetByte = require('./SetByte.js')
let SetBuzzer = require('./SetBuzzer.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let get_modbus_register = require('./get_modbus_register.js')
let SetMotorMode = require('./SetMotorMode.js')
let set_float_value = require('./set_float_value.js')
let GetBool = require('./GetBool.js')

module.exports = {
  set_modbus_register: set_modbus_register,
  axis_record: axis_record,
  get_alarms: get_alarms,
  set_named_digital_output: set_named_digital_output,
  set_odometry: set_odometry,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  set_mode: set_mode,
  set_ptz: set_ptz,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  QueryAlarms: QueryAlarms,
  home: home,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  ResetFromSubState: ResetFromSubState,
  enable_disable: enable_disable,
  SetMotorPID: SetMotorPID,
  set_height: set_height,
  get_digital_input: get_digital_input,
  SetMotorStatus: SetMotorStatus,
  get_mode: get_mode,
  set_digital_output: set_digital_output,
  SetLaserMode: SetLaserMode,
  SetElevator: SetElevator,
  ack_alarm: ack_alarm,
  InsertTask: InsertTask,
  set_analog_output: set_analog_output,
  SetByte: SetByte,
  SetBuzzer: SetBuzzer,
  SetEncoderTurns: SetEncoderTurns,
  get_modbus_register: get_modbus_register,
  SetMotorMode: SetMotorMode,
  set_float_value: set_float_value,
  GetBool: GetBool,
};
