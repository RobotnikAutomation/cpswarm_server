;; Auto-generated. Do not edit!


(when (boundp 'cvm_msgs::StereoImage)
  (if (not (find-package "CVM_MSGS"))
    (make-package "CVM_MSGS"))
  (shadow 'StereoImage (find-package "CVM_MSGS")))
(unless (find-package "CVM_MSGS::STEREOIMAGE")
  (make-package "CVM_MSGS::STEREOIMAGE"))

(in-package "ROS")
;;//! \htmlinclude StereoImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "STEREO_MSGS"))
  (ros::roseus-add-msgs "stereo_msgs"))


(defclass cvm_msgs::StereoImage
  :super ros::object
  :slots (_header _leftImage _disparityImage ))

(defmethod cvm_msgs::StereoImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:leftImage __leftImage) (instance sensor_msgs::Image :init))
    ((:disparityImage __disparityImage) (instance stereo_msgs::DisparityImage :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _leftImage __leftImage)
   (setq _disparityImage __disparityImage)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:leftImage
   (&rest __leftImage)
   (if (keywordp (car __leftImage))
       (send* _leftImage __leftImage)
     (progn
       (if __leftImage (setq _leftImage (car __leftImage)))
       _leftImage)))
  (:disparityImage
   (&rest __disparityImage)
   (if (keywordp (car __disparityImage))
       (send* _disparityImage __disparityImage)
     (progn
       (if __disparityImage (setq _disparityImage (car __disparityImage)))
       _disparityImage)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _leftImage
    (send _leftImage :serialization-length)
    ;; stereo_msgs/DisparityImage _disparityImage
    (send _disparityImage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _leftImage
       (send _leftImage :serialize s)
     ;; stereo_msgs/DisparityImage _disparityImage
       (send _disparityImage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _leftImage
     (send _leftImage :deserialize buf ptr-) (incf ptr- (send _leftImage :serialization-length))
   ;; stereo_msgs/DisparityImage _disparityImage
     (send _disparityImage :deserialize buf ptr-) (incf ptr- (send _disparityImage :serialization-length))
   ;;
   self)
  )

(setf (get cvm_msgs::StereoImage :md5sum-) "b5f1c29e66000c37c7aac14102a4beda")
(setf (get cvm_msgs::StereoImage :datatype-) "cvm_msgs/StereoImage")
(setf (get cvm_msgs::StereoImage :definition-)
      "Header header
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
# stereo algorithm can \"see\". Points with Z outside of:
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

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :cvm_msgs/StereoImage "b5f1c29e66000c37c7aac14102a4beda")


