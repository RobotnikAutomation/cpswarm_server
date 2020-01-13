;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::CartKnownEvent)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'CartKnownEvent (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::CARTKNOWNEVENT")
  (make-package "CPSWARM_MSGS::CARTKNOWNEVENT"))

(in-package "ROS")
;;//! \htmlinclude CartKnownEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SWARMROS"))
  (ros::roseus-add-msgs "swarmros"))


(defclass cpswarm_msgs::CartKnownEvent
  :super ros::object
  :slots (_header _swarmio _cart_known ))

(defmethod cpswarm_msgs::CartKnownEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:swarmio __swarmio) (instance swarmros::EventHeader :init))
    ((:cart_known __cart_known) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _swarmio __swarmio)
   (setq _cart_known __cart_known)
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
  (:cart_known
   (&rest __cart_known)
   (if (keywordp (car __cart_known))
       (send* _cart_known __cart_known)
     (progn
       (if __cart_known (setq _cart_known (car __cart_known)))
       _cart_known)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarmros/EventHeader _swarmio
    (send _swarmio :serialization-length)
    ;; std_msgs/Bool _cart_known
    (send _cart_known :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarmros/EventHeader _swarmio
       (send _swarmio :serialize s)
     ;; std_msgs/Bool _cart_known
       (send _cart_known :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarmros/EventHeader _swarmio
     (send _swarmio :deserialize buf ptr-) (incf ptr- (send _swarmio :serialization-length))
   ;; std_msgs/Bool _cart_known
     (send _cart_known :deserialize buf ptr-) (incf ptr- (send _cart_known :serialization-length))
   ;;
   self)
  )

(setf (get cpswarm_msgs::CartKnownEvent :md5sum-) "43ddb48922c2d60178e2627e25c07e65")
(setf (get cpswarm_msgs::CartKnownEvent :datatype-) "cpswarm_msgs/CartKnownEvent")
(setf (get cpswarm_msgs::CartKnownEvent :definition-)
      "std_msgs/Header header       # ros header
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header
std_msgs/Bool cart_known	     # boolean if the cart is known

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
MSG: std_msgs/Bool
bool data
")



(provide :cpswarm_msgs/CartKnownEvent "43ddb48922c2d60178e2627e25c07e65")


