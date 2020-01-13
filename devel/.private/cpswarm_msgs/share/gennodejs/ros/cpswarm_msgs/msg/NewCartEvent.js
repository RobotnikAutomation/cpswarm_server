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

class NewCartEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.swarmio = null;
      this.cart_id = null;
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
      if (initObj.hasOwnProperty('cart_id')) {
        this.cart_id = initObj.cart_id
      }
      else {
        this.cart_id = new std_msgs.msg.UInt32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewCartEvent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [swarmio]
    bufferOffset = swarmros.msg.EventHeader.serialize(obj.swarmio, buffer, bufferOffset);
    // Serialize message field [cart_id]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.cart_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewCartEvent
    let len;
    let data = new NewCartEvent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [swarmio]
    data.swarmio = swarmros.msg.EventHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [cart_id]
    data.cart_id = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += swarmros.msg.EventHeader.getMessageSize(object.swarmio);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cpswarm_msgs/NewCartEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5732f9d00f900eb5a97bb704f73f3cef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header       # ros header
    swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
    std_msgs/UInt32 cart_id	     # id of the new cart
    
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
    MSG: std_msgs/UInt32
    uint32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewCartEvent(null);
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

    if (msg.cart_id !== undefined) {
      resolved.cart_id = std_msgs.msg.UInt32.Resolve(msg.cart_id)
    }
    else {
      resolved.cart_id = new std_msgs.msg.UInt32()
    }

    return resolved;
    }
};

module.exports = NewCartEvent;
