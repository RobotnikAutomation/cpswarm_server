;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::ArrayOfStates)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'ArrayOfStates (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::ARRAYOFSTATES")
  (make-package "CPSWARM_MSGS::ARRAYOFSTATES"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfStates.msg.html


(defclass cpswarm_msgs::ArrayOfStates
  :super ros::object
  :slots (_states ))

(defmethod cpswarm_msgs::ArrayOfStates
  (:init
   (&key
    ((:states __states) (let (r) (dotimes (i 0) (push (instance cpswarm_msgs::StateEvent :init) r)) r))
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; cpswarm_msgs/StateEvent[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cpswarm_msgs/StateEvent[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cpswarm_msgs/StateEvent[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance cpswarm_msgs::StateEvent :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cpswarm_msgs::ArrayOfStates :md5sum-) "f75e4178e3e7edf854c68e5181aa9c80")
(setf (get cpswarm_msgs::ArrayOfStates :datatype-) "cpswarm_msgs/ArrayOfStates")
(setf (get cpswarm_msgs::ArrayOfStates :definition-)
      "cpswarm_msgs/StateEvent[] states # Array of state events

================================================================================
MSG: cpswarm_msgs/StateEvent
std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
string state                 # state of the cps

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
")



(provide :cpswarm_msgs/ArrayOfStates "f75e4178e3e7edf854c68e5181aa9c80")


