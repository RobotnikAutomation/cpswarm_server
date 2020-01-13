// Auto-generated. Do not edit!

// (in-package cpswarm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ClosestBoundRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClosestBoundRequest
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClosestBoundRequest
    let len;
    let data = new ClosestBoundRequest(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/ClosestBoundRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c84ff13976aa04656e56e300124444';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClosestBoundRequest(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class ClosestBoundResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.coords = null;
      this.dist = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = [];
      }
      if (initObj.hasOwnProperty('coords')) {
        this.coords = initObj.coords
      }
      else {
        this.coords = [];
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClosestBoundResponse
    // Serialize message field [index]
    bufferOffset = _arraySerializer.uint32(obj.index, buffer, bufferOffset, null);
    // Serialize message field [coords]
    // Serialize the length for message field [coords]
    bufferOffset = _serializer.uint32(obj.coords.length, buffer, bufferOffset);
    obj.coords.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dist]
    bufferOffset = _serializer.float64(obj.dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClosestBoundResponse
    let len;
    let data = new ClosestBoundResponse(null);
    // Deserialize message field [index]
    data.index = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [coords]
    // Deserialize array length for message field [coords]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.coords = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.coords[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dist]
    data.dist = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.index.length;
    length += 24 * object.coords.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/ClosestBoundResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aa55fafaaefb11f42082ae554af926a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] index
    geometry_msgs/Point[] coords
    float64 dist
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClosestBoundResponse(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = []
    }

    if (msg.coords !== undefined) {
      resolved.coords = new Array(msg.coords.length);
      for (let i = 0; i < resolved.coords.length; ++i) {
        resolved.coords[i] = geometry_msgs.msg.Point.Resolve(msg.coords[i]);
      }
    }
    else {
      resolved.coords = []
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: ClosestBoundRequest,
  Response: ClosestBoundResponse,
  md5sum() { return '8837846bed2f577b9e2edeeefebc2265'; },
  datatype() { return 'cpswarm_msgs/ClosestBound'; }
};
