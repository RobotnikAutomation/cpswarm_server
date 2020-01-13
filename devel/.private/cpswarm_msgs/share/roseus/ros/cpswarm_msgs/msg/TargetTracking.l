;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::TargetTracking)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'TargetTracking (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::TARGETTRACKING")
  (make-package "CPSWARM_MSGS::TARGETTRACKING"))

(in-package "ROS")
;;//! \htmlinclude TargetTracking.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cpswarm_msgs::TargetTracking
  :super ros::object
  :slots (_header _id _tf ))

(defmethod cpswarm_msgs::TargetTracking
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:tf __tf) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _tf __tf)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; geometry_msgs/Transform _tf
    (send _tf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Transform _tf
       (send _tf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::TargetTracking :md5sum-) "b395e332ecb571e4d08f5115330d1f26")
(setf (get cpswarm_msgs::TargetTracking :datatype-) "cpswarm_msgs/TargetTracking")
(setf (get cpswarm_msgs::TargetTracking :definition-)
      "std_msgs/Header header          # ros header
uint32 id                       # id of the target
geometry_msgs/Transform tf      # transform between cps and target
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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cpswarm_msgs/TargetTracking "b395e332ecb571e4d08f5115330d1f26")


