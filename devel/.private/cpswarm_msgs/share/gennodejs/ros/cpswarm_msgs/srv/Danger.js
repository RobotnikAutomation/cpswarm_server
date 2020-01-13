// Auto-generated. Do not edit!

// (in-package cpswarm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DangerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DangerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DangerRequest
    let len;
    let data = new DangerRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/DangerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DangerRequest(null);
    return resolved;
    }
};

class DangerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.danger = null;
      this.backoff = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('danger')) {
        this.danger = initObj.danger
      }
      else {
        this.danger = false;
      }
      if (initObj.hasOwnProperty('backoff')) {
        this.backoff = initObj.backoff
      }
      else {
        this.backoff = 0.0;
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
    // Serializes a message object of type DangerResponse
    // Serialize message field [danger]
    bufferOffset = _serializer.bool(obj.danger, buffer, bufferOffset);
    // Serialize message field [backoff]
    bufferOffset = _serializer.float64(obj.backoff, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.float64(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DangerResponse
    let len;
    let data = new DangerResponse(null);
    // Deserialize message field [danger]
    data.danger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [backoff]
    data.backoff = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/DangerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce2958a2ab9de30c0653c98ced6972cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool danger
    float64 backoff
    float64 direction
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DangerResponse(null);
    if (msg.danger !== undefined) {
      resolved.danger = msg.danger;
    }
    else {
      resolved.danger = false
    }

    if (msg.backoff !== undefined) {
      resolved.backoff = msg.backoff;
    }
    else {
      resolved.backoff = 0.0
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

module.exports = {
  Request: DangerRequest,
  Response: DangerResponse,
  md5sum() { return 'ce2958a2ab9de30c0653c98ced6972cd'; },
  datatype() { return 'cpswarm_msgs/Danger'; }
};
