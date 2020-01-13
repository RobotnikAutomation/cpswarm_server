// Auto-generated. Do not edit!

// (in-package cpswarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VectorStamped = require('./VectorStamped.js');

//-----------------------------------------------------------

class ArrayOfVectors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vectors = null;
    }
    else {
      if (initObj.hasOwnProperty('vectors')) {
        this.vectors = initObj.vectors
      }
      else {
        this.vectors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArrayOfVectors
    // Serialize message field [vectors]
    // Serialize the length for message field [vectors]
    bufferOffset = _serializer.uint32(obj.vectors.length, buffer, bufferOffset);
    obj.vectors.forEach((val) => {
      bufferOffset = VectorStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArrayOfVectors
    let len;
    let data = new ArrayOfVectors(null);
    // Deserialize message field [vectors]
    // Deserialize array length for message field [vectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vectors[i] = VectorStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vectors.forEach((val) => {
      length += VectorStamped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cpswarm_msgs/ArrayOfVectors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1fa763496c4cf1fa83f30e13880a5ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cpswarm_msgs/VectorStamped[] vectors # Array of vector elements
    
    ================================================================================
    MSG: cpswarm_msgs/VectorStamped
    std_msgs/Header header       # ros header
    swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
    cpswarm_msgs/Vector vector   # cpswarm vector
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: swarmros/EventHeader
    string name # Name of the event
    string node # UUID of the source or target node
    ================================================================================
    MSG: cpswarm_msgs/Vector
    float32 magnitude # magnitude of vector
    float32 direction # direction of vector
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArrayOfVectors(null);
    if (msg.vectors !== undefined) {
      resolved.vectors = new Array(msg.vectors.length);
      for (let i = 0; i < resolved.vectors.length; ++i) {
        resolved.vectors[i] = VectorStamped.Resolve(msg.vectors[i]);
      }
    }
    else {
      resolved.vectors = []
    }

    return resolved;
    }
};

module.exports = ArrayOfVectors;
