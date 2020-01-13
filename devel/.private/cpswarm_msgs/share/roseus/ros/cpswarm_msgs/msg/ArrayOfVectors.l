;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::ArrayOfVectors)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'ArrayOfVectors (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::ARRAYOFVECTORS")
  (make-package "CPSWARM_MSGS::ARRAYOFVECTORS"))

(in-package "ROS")
;;//! \htmlinclude ArrayOfVectors.msg.html


(defclass cpswarm_msgs::ArrayOfVectors
  :super ros::object
  :slots (_vectors ))

(defmethod cpswarm_msgs::ArrayOfVectors
  (:init
   (&key
    ((:vectors __vectors) (let (r) (dotimes (i 0) (push (instance cpswarm_msgs::VectorStamped :init) r)) r))
    )
   (send-super :init)
   (setq _vectors __vectors)
   self)
  (:vectors
   (&rest __vectors)
   (if (keywordp (car __vectors))
       (send* _vectors __vectors)
     (progn
       (if __vectors (setq _vectors (car __vectors)))
       _vectors)))
  (:serialization-length
   ()
   (+
    ;; cpswarm_msgs/VectorStamped[] _vectors
    (apply #'+ (send-all _vectors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cpswarm_msgs/VectorStamped[] _vectors
     (write-long (length _vectors) s)
     (dolist (elem _vectors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cpswarm_msgs/VectorStamped[] _vectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vectors (let (r) (dotimes (i n) (push (instance cpswarm_msgs::VectorStamped :init) r)) r))
     (dolist (elem- _vectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cpswarm_msgs::ArrayOfVectors :md5sum-) "c1fa763496c4cf1fa83f30e13880a5ac")
(setf (get cpswarm_msgs::ArrayOfVectors :datatype-) "cpswarm_msgs/ArrayOfVectors")
(setf (get cpswarm_msgs::ArrayOfVectors :definition-)
      "cpswarm_msgs/VectorStamped[] vectors # Array of vector elements

================================================================================
MSG: cpswarm_msgs/VectorStamped
std_msgs/Header header       # ros header
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



(provide :cpswarm_msgs/ArrayOfVectors "c1fa763496c4cf1fa83f30e13880a5ac")


