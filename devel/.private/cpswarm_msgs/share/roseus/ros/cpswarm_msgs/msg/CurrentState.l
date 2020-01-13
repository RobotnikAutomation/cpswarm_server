;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::CurrentState)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'CurrentState (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::CURRENTSTATE")
  (make-package "CPSWARM_MSGS::CURRENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude CurrentState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::CurrentState
  :super ros::object
  :slots (_header _swarmio _state ))

(defmethod cpswarm_msgs::CurrentState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:state __state) (instance std_msgs::Int8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _state __state)
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
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; std_msgs/Int8 _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; std_msgs/Int8 _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; std_msgs/Int8 _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::CurrentState :md5sum-) "c47fdaa1353b6fe8b7832a0a71dd5f47")
(setf (get cpswarm_msgs::CurrentState :datatype-) "cpswarm_msgs/CurrentState")
(setf (get cpswarm_msgs::CurrentState :definition-)
      "std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
std_msgs/Int8 state	     # 0 init 1 run 2 slow 3 stop

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
MSG: std_msgs/Int8
int8 data

")



(provide :cpswarm_msgs/CurrentState "c47fdaa1353b6fe8b7832a0a71dd5f47")


