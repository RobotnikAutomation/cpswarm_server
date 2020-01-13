;; Auto-generated. Do not edit!


(when (boundp 'cvm_msgs::BoundingBoxes)
  (if (not (find-package "CVM_MSGS"))
    (make-package "CVM_MSGS"))
  (shadow 'BoundingBoxes (find-package "CVM_MSGS")))
(unless (find-package "CVM_MSGS::BOUNDINGBOXES")
  (make-package "CVM_MSGS::BOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude BoundingBoxes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cvm_msgs::BoundingBoxes
  :super ros::object
  :slots (_header _boundingBoxes ))

(defmethod cvm_msgs::BoundingBoxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:boundingBoxes __boundingBoxes) (let (r) (dotimes (i 0) (push (instance cvm_msgs::BoundingBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _boundingBoxes __boundingBoxes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:boundingBoxes
   (&rest __boundingBoxes)
   (if (keywordp (car __boundingBoxes))
       (send* _boundingBoxes __boundingBoxes)
     (progn
       (if __boundingBoxes (setq _boundingBoxes (car __boundingBoxes)))
       _boundingBoxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cvm_msgs/BoundingBox[] _boundingBoxes
    (apply #'+ (send-all _boundingBoxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cvm_msgs/BoundingBox[] _boundingBoxes
     (write-long (length _boundingBoxes) s)
     (dolist (elem _boundingBoxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cvm_msgs/BoundingBox[] _boundingBoxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundingBoxes (let (r) (dotimes (i n) (push (instance cvm_msgs::BoundingBox :init) r)) r))
     (dolist (elem- _boundingBoxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cvm_msgs::BoundingBoxes :md5sum-) "df7c8971a0328dc0867e90b22d93ed86")
(setf (get cvm_msgs::BoundingBoxes :datatype-) "cvm_msgs/BoundingBoxes")
(setf (get cvm_msgs::BoundingBoxes :definition-)
      "Header header
BoundingBox[] boundingBoxes   # An array of bounding boxes

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
MSG: cvm_msgs/BoundingBox
Header header
uint32 xmin   # X coordinate of the upper left corner, where bounding box of an object starts
uint32 ymin   # Y coordinate of the upper left corner, where bounding box of an object starts
uint32 xmax   # X coordinate of the bottom right corner, where bounding box of an object ends
uint32 ymax   # Y coordinate of the bottom right corner, where bounding box of an object ends
string Class  # Class name of an object
float32 probability # Probability that the object belongs to the class
geometry_msgs/PointStamped position # Position of the object

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



(provide :cvm_msgs/BoundingBoxes "df7c8971a0328dc0867e90b22d93ed86")


