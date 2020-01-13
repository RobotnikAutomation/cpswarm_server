;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::AreaDivisionEvent)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'AreaDivisionEvent (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::AREADIVISIONEVENT")
  (make-package "CPSWARM_MSGS::AREADIVISIONEVENT"))

(in-package "ROS")
;;//! \htmlinclude AreaDivisionEvent.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::AreaDivisionEvent
  :super ros::object
  :slots (_header _swarmio _pose ))

(defmethod cpswarm_msgs::AreaDivisionEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:swarmio
   (&rest __swarmio)
   (if (keywordp (car __swarmio))
       (send* _swarmio __swarmio)
     (progn
       (if __swarmio (setq _swarmio (car __swarmio)))
       _swarmio)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::AreaDivisionEvent :md5sum-) "bc68a77f3ebb69a548eb09351fe4ca61")
(setf (get cpswarm_msgs::AreaDivisionEvent :datatype-) "cpswarm_msgs/AreaDivisionEvent")
(setf (get cpswarm_msgs::AreaDivisionEvent :definition-)
      "std_msgs/Header header         # ros header
swarmros/EventHeader swarmio   # cpswarm swarmio swarmros header
geometry_msgs/PoseStamped pose # position of cps

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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



(provide :cpswarm_msgs/AreaDivisionEvent "bc68a77f3ebb69a548eb09351fe4ca61")


