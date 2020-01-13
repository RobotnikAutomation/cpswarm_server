; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude NewCartEvent.msg.html

(cl:defclass <NewCartEvent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (swarmio
    :reader swarmio
    :initarg :swarmio
    :type swarmros-msg:EventHeader
    :initform (cl:make-instance 'swarmros-msg:EventHeader))
   (cart_id
    :reader cart_id
    :initarg :cart_id
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32)))
)

(cl:defclass NewCartEvent (<NewCartEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewCartEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewCartEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<NewCartEvent> is deprecated: use cpswarm_msgs-msg:NewCartEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NewCartEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <NewCartEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'cart_id-val :lambda-list '(m))
(cl:defmethod cart_id-val ((m <NewCartEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:cart_id-val is deprecated.  Use cpswarm_msgs-msg:cart_id instead.")
  (cart_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewCartEvent>) ostream)
  "Serializes a message object of type '<NewCartEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cart_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewCartEvent>) istream)
  "Deserializes a message object of type '<NewCartEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cart_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewCartEvent>)))
  "Returns string type for a message object of type '<NewCartEvent>"
  "cpswarm_msgs/NewCartEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewCartEvent)))
  "Returns string type for a message object of type 'NewCartEvent"
  "cpswarm_msgs/NewCartEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewCartEvent>)))
  "Returns md5sum for a message object of type '<NewCartEvent>"
  "5732f9d00f900eb5a97bb704f73f3cef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewCartEvent)))
  "Returns md5sum for a message object of type 'NewCartEvent"
  "5732f9d00f900eb5a97bb704f73f3cef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewCartEvent>)))
  "Returns full string definition for message of type '<NewCartEvent>"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%std_msgs/UInt32 cart_id	     # id of the new cart~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewCartEvent)))
  "Returns full string definition for message of type 'NewCartEvent"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%std_msgs/UInt32 cart_id	     # id of the new cart~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewCartEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cart_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewCartEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'NewCartEvent
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':cart_id (cart_id msg))
))
