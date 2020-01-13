;; Auto-generated. Do not edit!


(when (boundp 'cvm_msgs::BoundingBox)
  (if (not (find-package "CVM_MSGS"))
    (make-package "CVM_MSGS"))
  (shadow 'BoundingBox (find-package "CVM_MSGS")))
(unless (find-package "CVM_MSGS::BOUNDINGBOX")
  (make-package "CVM_MSGS::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cvm_msgs::BoundingBox
  :super ros::object
  :slots (_header _xmin _ymin _xmax _ymax _Class _probability _position ))

(defmethod cvm_msgs::BoundingBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    ((:Class __Class) "")
    ((:probability __probability) 0.0)
    ((:position __position) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   (setq _Class (string __Class))
   (setq _probability (float __probability))
   (setq _position __position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _xmin
    4
    ;; uint32 _ymin
    4
    ;; uint32 _xmax
    4
    ;; uint32 _ymax
    4
    ;; string _Class
    4 (length _Class)
    ;; float32 _probability
    4
    ;; geometry_msgs/PointStamped _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _xmin
       (write-long _xmin s)
     ;; uint32 _ymin
       (write-long _ymin s)
     ;; uint32 _xmax
       (write-long _xmax s)
     ;; uint32 _ymax
       (write-long _ymax s)
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PointStamped _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _xmin
     (setq _xmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ymin
     (setq _ymin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _xmax
     (setq _xmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ymax
     (setq _ymax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PointStamped _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get cvm_msgs::BoundingBox :md5sum-) "0b905f380e18540a3de0b81060a0fe21")
(setf (get cvm_msgs::BoundingBox :datatype-) "cvm_msgs/BoundingBox")
(setf (get cvm_msgs::BoundingBox :definition-)
      "Header header
uint32 xmin   # X coordinate of the upper left corner, where bounding box of an object starts
uint32 ymin   # Y coordinate of the upper left corner, where bounding box of an object starts
uint32 xmax   # X coordinate of the bottom right corner, where bounding box of an object ends
uint32 ymax   # Y coordinate of the bottom right corner, where bounding box of an object ends
string Class  # Class name of an object
float32 probability # Probability that the object belongs to the class
geometry_msgs/PointStamped position # Position of the object

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
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :cvm_msgs/BoundingBox "0b905f380e18540a3de0b81060a0fe21")


