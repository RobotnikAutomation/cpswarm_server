;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::TaskAllocatedEvent)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'TaskAllocatedEvent (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::TASKALLOCATEDEVENT")
  (make-package "CPSWARM_MSGS::TASKALLOCATEDEVENT"))

(in-package "ROS")
;;//! \htmlinclude TaskAllocatedEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::TaskAllocatedEvent
  :super ros::object
  :slots (_header _swarmio _task_id _cps_id ))

(defmethod cpswarm_msgs::TaskAllocatedEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:task_id __task_id) 0)
    ((:cps_id __cps_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _task_id (round __task_id))
   (setq _cps_id (string __cps_id))
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
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:cps_id
   (&optional __cps_id)
   (if __cps_id (setq _cps_id __cps_id)) _cps_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; int32 _task_id
    4
    ;; string _cps_id
    4 (length _cps_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; int32 _task_id
       (write-long _task_id s)
     ;; string _cps_id
       (write-long (length _cps_id) s) (princ _cps_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _cps_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cps_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cpswarm_msgs::TaskAllocatedEvent :md5sum-) "3bff5f7aacea32004625f4f70ddf4f9c")
(setf (get cpswarm_msgs::TaskAllocatedEvent :datatype-) "cpswarm_msgs/TaskAllocatedEvent")
(setf (get cpswarm_msgs::TaskAllocatedEvent :definition-)
      "std_msgs/Header header              # ros header
swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header
int32 task_id                       # id of the task
string cps_id                       # uuid of the cps to which the task has been allocated

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



(provide :cpswarm_msgs/TaskAllocatedEvent "3bff5f7aacea32004625f4f70ddf4f9c")


