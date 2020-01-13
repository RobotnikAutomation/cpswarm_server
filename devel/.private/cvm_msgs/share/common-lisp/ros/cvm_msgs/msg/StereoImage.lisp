; Auto-generated. Do not edit!


(cl:in-package cvm_msgs-msg)


;//! \htmlinclude StereoImage.msg.html

(cl:defclass <StereoImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftImage
    :reader leftImage
    :initarg :leftImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (disparityImage
    :reader disparityImage
    :initarg :disparityImage
    :type stereo_msgs-msg:DisparityImage
    :initform (cl:make-instance 'stereo_msgs-msg:DisparityImage)))
)

(cl:defclass StereoImage (<StereoImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cvm_msgs-msg:<StereoImage> is deprecated: use cvm_msgs-msg:StereoImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StereoImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cvm_msgs-msg:header-val is deprecated.  Use cvm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'leftImage-val :lambda-list '(m))
(cl:defmethod leftImage-val ((m <StereoImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cvm_msgs-msg:leftImage-val is deprecated.  Use cvm_msgs-msg:leftImage instead.")
  (leftImage m))

(cl:ensure-generic-function 'disparityImage-val :lambda-list '(m))
(cl:defmethod disparityImage-val ((m <StereoImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cvm_msgs-msg:disparityImage-val is deprecated.  Use cvm_msgs-msg:disparityImage instead.")
  (disparityImage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoImage>) ostream)
  "Serializes a message object of type '<StereoImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leftImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disparityImage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoImage>) istream)
  "Deserializes a message object of type '<StereoImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leftImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disparityImage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoImage>)))
  "Returns string type for a message object of type '<StereoImage>"
  "cvm_msgs/StereoImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoImage)))
  "Returns string type for a message object of type 'StereoImage"
  "cvm_msgs/StereoImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoImage>)))
  "Returns md5sum for a message object of type '<StereoImage>"
  "b5f1c29e66000c37c7aac14102a4beda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoImage)))
  "Returns md5sum for a message object of type 'StereoImage"
  "b5f1c29e66000c37c7aac14102a4beda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoImage>)))
  "Returns full string definition for message of type '<StereoImage>"
  (cl:format cl:nil "Header header~%sensor_msgs/Image leftImage                # Left rectified image~%stereo_msgs/DisparityImage disparityImage  # Disparity image estimated with respect to the left rectified image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: stereo_msgs/DisparityImage~%# Separate header for compatibility with current TimeSynchronizer.~%# Likely to be removed in a later release, use image.header instead.~%Header header~%~%# Floating point disparity image. The disparities are pre-adjusted for any~%# x-offset between the principal points of the two cameras (in the case~%# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)~%sensor_msgs/Image image~%~%# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.~%float32 f # Focal length, pixels~%float32 T # Baseline, world units~%~%# Subwindow of (potentially) valid disparity values.~%sensor_msgs/RegionOfInterest valid_window~%~%# The range of disparities searched.~%# In the disparity image, any disparity less than min_disparity is invalid.~%# The disparity search range defines the horopter, or 3D volume that the~%# stereo algorithm can \"see\". Points with Z outside of:~%#     Z_min = fT / max_disparity~%#     Z_max = fT / min_disparity~%# could not be found.~%float32 min_disparity~%float32 max_disparity~%~%# Smallest allowed disparity increment. The smallest achievable depth range~%# resolution is delta_Z = (Z^2/fT)*delta_d.~%float32 delta_d~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoImage)))
  "Returns full string definition for message of type 'StereoImage"
  (cl:format cl:nil "Header header~%sensor_msgs/Image leftImage                # Left rectified image~%stereo_msgs/DisparityImage disparityImage  # Disparity image estimated with respect to the left rectified image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: stereo_msgs/DisparityImage~%# Separate header for compatibility with current TimeSynchronizer.~%# Likely to be removed in a later release, use image.header instead.~%Header header~%~%# Floating point disparity image. The disparities are pre-adjusted for any~%# x-offset between the principal points of the two cameras (in the case~%# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)~%sensor_msgs/Image image~%~%# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.~%float32 f # Focal length, pixels~%float32 T # Baseline, world units~%~%# Subwindow of (potentially) valid disparity values.~%sensor_msgs/RegionOfInterest valid_window~%~%# The range of disparities searched.~%# In the disparity image, any disparity less than min_disparity is invalid.~%# The disparity search range defines the horopter, or 3D volume that the~%# stereo algorithm can \"see\". Points with Z outside of:~%#     Z_min = fT / max_disparity~%#     Z_max = fT / min_disparity~%# could not be found.~%float32 min_disparity~%float32 max_disparity~%~%# Smallest allowed disparity increment. The smallest achievable depth range~%# resolution is delta_Z = (Z^2/fT)*delta_d.~%float32 delta_d~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leftImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disparityImage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoImage>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoImage
    (cl:cons ':header (header msg))
    (cl:cons ':leftImage (leftImage msg))
    (cl:cons ':disparityImage (disparityImage msg))
))
