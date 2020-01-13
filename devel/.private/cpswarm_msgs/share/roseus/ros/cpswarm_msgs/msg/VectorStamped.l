;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::VectorStamped)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'VectorStamped (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::VECTORSTAMPED")
  (make-package "CPSWARM_MSGS::VECTORSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude VectorStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::VectorStamped
  :super ros::object
  :slots (_header _swarmio _vector ))

(defmethod cpswarm_msgs::VectorStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:vector __vector) (instance cpswarm_msgs::Vector :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _vector __vector)
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
  (:vector
   (&rest __vector)
   (if (keywordp (car __vector))
       (send* _vector __vector)
     (progn
       (if __vector (setq _vector (car __vector)))
       _vector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; cpswarm_msgs/Vector _vector
    (send _vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; cpswarm_msgs/Vector _vector
       (send _vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; cpswarm_msgs/Vector _vector
     (send _vector :deserialize buf ptr-) (incf ptr- (send _vector :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::VectorStamped :md5sum-) "8722cb4dba82d85a17fc91ee62b2f53a")
(setf (get cpswarm_msgs::VectorStamped :datatype-) "cpswarm_msgs/VectorStamped")
(setf (get cpswarm_msgs::VectorStamped :definition-)
      "std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
cpswarm_msgs/Vector vector   # cpswarm vector

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
MSG: cpswarm_msgs/Vector
float32 magnitude # magnitude of vector
float32 direction # direction of vector

")



(provide :cpswarm_msgs/VectorStamped "8722cb4dba82d85a17fc91ee62b2f53a")


