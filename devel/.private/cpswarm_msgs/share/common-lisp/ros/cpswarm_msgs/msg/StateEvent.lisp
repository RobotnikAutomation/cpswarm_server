; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude StateEvent.msg.html

(cl:defclass <StateEvent> (roslisp-msg-protocol:ros-message)
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
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass StateEvent (<StateEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<StateEvent> is deprecated: use cpswarm_msgs-msg:StateEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <StateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:state-val is deprecated.  Use cpswarm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateEvent>) ostream)
  "Serializes a message object of type '<StateEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateEvent>) istream)
  "Deserializes a message object of type '<StateEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateEvent>)))
  "Returns string type for a message object of type '<StateEvent>"
  "cpswarm_msgs/StateEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateEvent)))
  "Returns string type for a message object of type 'StateEvent"
  "cpswarm_msgs/StateEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateEvent>)))
  "Returns md5sum for a message object of type '<StateEvent>"
  "1a5df14620d91348b445fa85a7015e57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateEvent)))
  "Returns md5sum for a message object of type 'StateEvent"
  "1a5df14620d91348b445fa85a7015e57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateEvent>)))
  "Returns full string definition for message of type '<StateEvent>"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%string state                 # state of the cps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateEvent)))
  "Returns full string definition for message of type 'StateEvent"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%string state                 # state of the cps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'StateEvent
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':state (state msg))
))
