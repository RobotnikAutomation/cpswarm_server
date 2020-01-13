// Auto-generated. Do not edit!

// (in-package cpswarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let swarmros = _finder('swarmros');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TaskAllocatedEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.swarmio = null;
      this.task_id = null;
      this.cps_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('swarmio')) {
        this.swarmio = initObj.swarmio
      }
      else {
        this.swarmio = new swarmros.msg.EventHeader();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('cps_id')) {
        this.cps_id = initObj.cps_id
      }
      else {
        this.cps_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskAllocatedEvent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [swarmio]
    bufferOffset = swarmros.msg.EventHeader.serialize(obj.swarmio, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [cps_id]
    bufferOffset = _serializer.string(obj.cps_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAllocatedEvent
    let len;
    let data = new TaskAllocatedEvent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [swarmio]
    data.swarmio = swarmros.msg.EventHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cps_id]
    data.cps_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += swarmros.msg.EventHeader.getMessageSize(object.swarmio);
    length += object.cps_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cpswarm_msgs/TaskAllocatedEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bff5f7aacea32004625f4f70ddf4f9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header              # ros header
    swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header
    int32 task_id                       # id of the task
    string cps_id                       # uuid of the cps to which the task has been allocated
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAllocatedEvent(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.swarmio !== undefined) {
      resolved.swarmio = swarmros.msg.EventHeader.Resolve(msg.swarmio)
    }
    else {
      resolved.swarmio = new swarmros.msg.EventHeader()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.cps_id !== undefined) {
      resolved.cps_id = msg.cps_id;
    }
    else {
      resolved.cps_id = ''
    }

    return resolved;
    }
};

module.exports = TaskAllocatedEvent;
