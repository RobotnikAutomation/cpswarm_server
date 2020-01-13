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

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetGpsFixRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGpsFixRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGpsFixRequest
    let len;
    let data = new GetGpsFixRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/GetGpsFixRequest';
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
    const resolved = new GetGpsFixRequest(null);
    return resolved;
    }
};

class GetGpsFixResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fix = null;
    }
    else {
      if (initObj.hasOwnProperty('fix')) {
        this.fix = initObj.fix
      }
      else {
        this.fix = new sensor_msgs.msg.NavSatFix();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGpsFixResponse
    // Serialize message field [fix]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.fix, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGpsFixResponse
    let len;
    let data = new GetGpsFixResponse(null);
    // Deserialize message field [fix]
    data.fix = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.fix);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cpswarm_msgs/GetGpsFixResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0109a02ab052d5bea76fe383f5f78bd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/NavSatFix fix
    
    
    ================================================================================
    MSG: sensor_msgs/NavSatFix
    # Navigation Satellite fix for any Global Navigation Satellite System
    #
    # Specified using the WGS 84 reference ellipsoid
    
    # header.stamp specifies the ROS time for this measurement (the
    #        corresponding satellite time may be reported using the
    #        sensor_msgs/TimeReference message).
    #
    # header.frame_id is the frame of reference reported by the satellite
    #        receiver, usually the location of the antenna.  This is a
    #        Euclidean frame relative to the vehicle, not a reference
    #        ellipsoid.
    Header header
    
    # satellite fix status information
    NavSatStatus status
    
    # Latitude [degrees]. Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is west.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid
    # (quiet NaN if no altitude is available).
    float64 altitude
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    #
    # Beware: this coordinate system exhibits singularities at the poles.
    
    float64[9] position_covariance
    
    # If the covariance of the fix is known, fill it in completely. If the
    # GPS receiver provides the variance of each measurement, put them
    # along the diagonal. If only Dilution of Precision is available,
    # estimate an approximate covariance from that.
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    
    uint8 position_covariance_type
    
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
    MSG: sensor_msgs/NavSatStatus
    # Navigation Satellite fix status for any Global Navigation Satellite System
    
    # Whether to output an augmented fix is determined by both the fix
    # type and the last time differential corrections were received.  A
    # fix is valid when status >= STATUS_FIX.
    
    int8 STATUS_NO_FIX =  -1        # unable to fix position
    int8 STATUS_FIX =      0        # unaugmented fix
    int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
    int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation
    
    int8 status
    
    # Bits defining which Global Navigation Satellite System signals were
    # used by the receiver.
    
    uint16 SERVICE_GPS =     1
    uint16 SERVICE_GLONASS = 2
    uint16 SERVICE_COMPASS = 4      # includes BeiDou.
    uint16 SERVICE_GALILEO = 8
    
    uint16 service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGpsFixResponse(null);
    if (msg.fix !== undefined) {
      resolved.fix = sensor_msgs.msg.NavSatFix.Resolve(msg.fix)
    }
    else {
      resolved.fix = new sensor_msgs.msg.NavSatFix()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetGpsFixRequest,
  Response: GetGpsFixResponse,
  md5sum() { return '0109a02ab052d5bea76fe383f5f78bd2'; },
  datatype() { return 'cpswarm_msgs/GetGpsFix'; }
};
