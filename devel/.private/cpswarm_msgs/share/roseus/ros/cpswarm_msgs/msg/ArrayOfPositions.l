;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::ArrayOfPositions)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'ArrayOfPositions (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::ARRAYOFPOSITIONS")
  (make-package "CPSWARM_MSGS::ARRAYOFPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfPositions.msg.html


(defclass cpswarm_msgs::ArrayOfPositions
  :super ros::object
  :slots (_positions ))

(defmethod cpswarm_msgs::ArrayOfPositions
  (:init
   (&key
    ((:positions __positions) (let (r) (dotimes (i 0) (push (instance cpswarm_msgs::Position :init) r)) r))
    )
   (send-super :init)
   (setq _positions __positions)
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; cpswarm_msgs/Position[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cpswarm_msgs/Position[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cpswarm_msgs/Position[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance cpswarm_msgs::Position :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cpswarm_msgs::ArrayOfPositions :md5sum-) "84b21520bc4c50c456f805931a1d5707")
(setf (get cpswarm_msgs::ArrayOfPositions :datatype-) "cpswarm_msgs/ArrayOfPositions")
(setf (get cpswarm_msgs::ArrayOfPositions :definition-)
      "cpswarm_msgs/Position[] positions # Array of position elements

================================================================================
MSG: cpswarm_msgs/Position
std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
geometry_msgs/Pose pose      # cps position in local coordinates

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



(provide :cpswarm_msgs/ArrayOfPositions "84b21520bc4c50c456f805931a1d5707")


