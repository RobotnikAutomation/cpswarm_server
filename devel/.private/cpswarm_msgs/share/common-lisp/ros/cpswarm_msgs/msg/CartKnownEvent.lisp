; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude CartKnownEvent.msg.html

(cl:defclass <CartKnownEvent> (roslisp-msg-protocol:ros-message)
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
   (cart_known
    :reader cart_known
    :initarg :cart_known
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass CartKnownEvent (<CartKnownEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartKnownEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartKnownEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<CartKnownEvent> is deprecated: use cpswarm_msgs-msg:CartKnownEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CartKnownEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <CartKnownEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'cart_known-val :lambda-list '(m))
(cl:defmethod cart_known-val ((m <CartKnownEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:cart_known-val is deprecated.  Use cpswarm_msgs-msg:cart_known instead.")
  (cart_known m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartKnownEvent>) ostream)
  "Serializes a message object of type '<CartKnownEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cart_known) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartKnownEvent>) istream)
  "Deserializes a message object of type '<CartKnownEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cart_known) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartKnownEvent>)))
  "Returns string type for a message object of type '<CartKnownEvent>"
  "cpswarm_msgs/CartKnownEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartKnownEvent)))
  "Returns string type for a message object of type 'CartKnownEvent"
  "cpswarm_msgs/CartKnownEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartKnownEvent>)))
  "Returns md5sum for a message object of type '<CartKnownEvent>"
  "43ddb48922c2d60178e2627e25c07e65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartKnownEvent)))
  "Returns md5sum for a message object of type 'CartKnownEvent"
  "43ddb48922c2d60178e2627e25c07e65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartKnownEvent>)))
  "Returns full string definition for message of type '<CartKnownEvent>"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%std_msgs/Bool cart_known	     # boolean if the cart is known~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartKnownEvent)))
  "Returns full string definition for message of type 'CartKnownEvent"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%std_msgs/Bool cart_known	     # boolean if the cart is known~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartKnownEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cart_known))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartKnownEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'CartKnownEvent
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':cart_known (cart_known msg))
))
