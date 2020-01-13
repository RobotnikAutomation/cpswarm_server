// Auto-generated. Do not edit!

// (in-package cpswarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Vector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.magnitude = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vector
    // Serialize message field [magnitude]
    bufferOffset = _serializer.float32(obj.magnitude, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.float32(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vector
    let len;
    let data = new Vector(null);
    // Deserialize message field [magnitude]
    data.magnitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cpswarm_msgs/Vector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb4005f5e84d241c0c41a25e2094bb18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 magnitude # magnitude of vector
    float32 direction # direction of vector
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vector(null);
    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0.0
    }

    return resolved;
    }
};

module.exports = Vector;
