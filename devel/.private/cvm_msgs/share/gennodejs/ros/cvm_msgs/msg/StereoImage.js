// Auto-generated. Do not edit!

// (in-package cvm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let stereo_msgs = _finder('stereo_msgs');

//-----------------------------------------------------------

class StereoImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.leftImage = null;
      this.disparityImage = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('leftImage')) {
        this.leftImage = initObj.leftImage
      }
      else {
        this.leftImage = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('disparityImage')) {
        this.disparityImage = initObj.disparityImage
      }
      else {
        this.disparityImage = new stereo_msgs.msg.DisparityImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StereoImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [leftImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.leftImage, buffer, bufferOffset);
    // Serialize message field [disparityImage]
    bufferOffset = stereo_msgs.msg.DisparityImage.serialize(obj.disparityImage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoImage
    let len;
    let data = new StereoImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftImage]
    data.leftImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [disparityImage]
    data.disparityImage = stereo_msgs.msg.DisparityImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.Image.getMessageSize(object.leftImage);
    length += stereo_msgs.msg.DisparityImage.getMessageSize(object.disparityImage);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cvm_msgs/StereoImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5f1c29e66000c37c7aac14102a4beda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    sensor_msgs/Image leftImage                # Left rectified image
    stereo_msgs/DisparityImage disparityImage  # Disparity image estimated with respect to the left rectified image
    
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
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: stereo_msgs/DisparityImage
    # Separate header for compatibility with current TimeSynchronizer.
    # Likely to be removed in a later release, use image.header instead.
    Header header
    
    # Floating point disparity image. The disparities are pre-adjusted for any
    # x-offset between the principal points of the two cameras (in the case
    # that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)
    sensor_msgs/Image image
    
    # Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.
    float32 f # Focal length, pixels
    float32 T # Baseline, world units
    
    # Subwindow of (potentially) valid disparity values.
    sensor_msgs/RegionOfInterest valid_window
    
    # The range of disparities searched.
    # In the disparity image, any disparity less than min_disparity is invalid.
    # The disparity search range defines the horopter, or 3D volume that the
    # stereo algorithm can "see". Points with Z outside of:
    #     Z_min = fT / max_disparity
    #     Z_max = fT / min_disparity
    # could not be found.
    float32 min_disparity
    float32 max_disparity
    
    # Smallest allowed disparity increment. The smallest achievable depth range
    # resolution is delta_Z = (Z^2/fT)*delta_d.
    float32 delta_d
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StereoImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.leftImage !== undefined) {
      resolved.leftImage = sensor_msgs.msg.Image.Resolve(msg.leftImage)
    }
    else {
      resolved.leftImage = new sensor_msgs.msg.Image()
    }

    if (msg.disparityImage !== undefined) {
      resolved.disparityImage = stereo_msgs.msg.DisparityImage.Resolve(msg.disparityImage)
    }
    else {
      resolved.disparityImage = new stereo_msgs.msg.DisparityImage()
    }

    return resolved;
    }
};

module.exports = StereoImage;
