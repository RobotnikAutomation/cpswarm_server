;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::TaskAllocationEvent)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'TaskAllocationEvent (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::TASKALLOCATIONEVENT")
  (make-package "CPSWARM_MSGS::TASKALLOCATIONEVENT"))

(in-package "ROS")
;;//! \htmlinclude TaskAllocationEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::TaskAllocationEvent
  :super ros::object
  :slots (_header _swarmio _id _bid ))

(defmethod cpswarm_msgs::TaskAllocationEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:id __id) 0)
    ((:bid __bid) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _id (round __id))
   (setq _bid (float __bid))
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
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:bid
   (&optional __bid)
   (if __bid (setq _bid __bid)) _bid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; int32 _id
    4
    ;; float64 _bid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; float64 _bid
       (sys::poke _bid (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _bid
     (setq _bid (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cpswarm_msgs::TaskAllocationEvent :md5sum-) "c9a831cc7b94bbe736c22e9f2e30884b")
(setf (get cpswarm_msgs::TaskAllocationEvent :datatype-) "cpswarm_msgs/TaskAllocationEvent")
(setf (get cpswarm_msgs::TaskAllocationEvent :definition-)
      "std_msgs/Header header              # ros header
swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header
int32 id                            # id of the task
float64 bid                         # bid of the cps for the task (inverse of cost)

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



(provide :cpswarm_msgs/TaskAllocationEvent "c9a831cc7b94bbe736c22e9f2e30884b")


