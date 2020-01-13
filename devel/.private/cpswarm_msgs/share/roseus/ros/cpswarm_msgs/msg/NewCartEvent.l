;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::NewCartEvent)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'NewCartEvent (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::NEWCARTEVENT")
  (make-package "CPSWARM_MSGS::NEWCARTEVENT"))

(in-package "ROS")
;;//! \htmlinclude NewCartEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::NewCartEvent
  :super ros::object
  :slots (_header _swarmio _cart_id ))

(defmethod cpswarm_msgs::NewCartEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:cart_id __cart_id) (instance std_msgs::UInt32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _cart_id __cart_id)
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
  (:cart_id
   (&rest __cart_id)
   (if (keywordp (car __cart_id))
       (send* _cart_id __cart_id)
     (progn
       (if __cart_id (setq _cart_id (car __cart_id)))
       _cart_id)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; std_msgs/UInt32 _cart_id
    (send _cart_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; std_msgs/UInt32 _cart_id
       (send _cart_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; std_msgs/UInt32 _cart_id
     (send _cart_id :deserialize buf ptr-) (incf ptr- (send _cart_id :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::NewCartEvent :md5sum-) "5732f9d00f900eb5a97bb704f73f3cef")
(setf (get cpswarm_msgs::NewCartEvent :datatype-) "cpswarm_msgs/NewCartEvent")
(setf (get cpswarm_msgs::NewCartEvent :definition-)
      "std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
std_msgs/UInt32 cart_id	     # id of the new cart

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
MSG: std_msgs/UInt32
uint32 data
")



(provide :cpswarm_msgs/NewCartEvent "5732f9d00f900eb5a97bb704f73f3cef")


