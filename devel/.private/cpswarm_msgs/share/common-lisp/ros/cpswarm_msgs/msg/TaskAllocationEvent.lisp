; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude TaskAllocationEvent.msg.html

(cl:defclass <TaskAllocationEvent> (roslisp-msg-protocol:ros-message)
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
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (bid
    :reader bid
    :initarg :bid
    :type cl:float
    :initform 0.0))
)

(cl:defclass TaskAllocationEvent (<TaskAllocationEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAllocationEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAllocationEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<TaskAllocationEvent> is deprecated: use cpswarm_msgs-msg:TaskAllocationEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TaskAllocationEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <TaskAllocationEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TaskAllocationEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:id-val is deprecated.  Use cpswarm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bid-val :lambda-list '(m))
(cl:defmethod bid-val ((m <TaskAllocationEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:bid-val is deprecated.  Use cpswarm_msgs-msg:bid instead.")
  (bid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAllocationEvent>) ostream)
  "Serializes a message object of type '<TaskAllocationEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAllocationEvent>) istream)
  "Deserializes a message object of type '<TaskAllocationEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bid) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAllocationEvent>)))
  "Returns string type for a message object of type '<TaskAllocationEvent>"
  "cpswarm_msgs/TaskAllocationEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAllocationEvent)))
  "Returns string type for a message object of type 'TaskAllocationEvent"
  "cpswarm_msgs/TaskAllocationEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAllocationEvent>)))
  "Returns md5sum for a message object of type '<TaskAllocationEvent>"
  "c9a831cc7b94bbe736c22e9f2e30884b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAllocationEvent)))
  "Returns md5sum for a message object of type 'TaskAllocationEvent"
  "c9a831cc7b94bbe736c22e9f2e30884b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAllocationEvent>)))
  "Returns full string definition for message of type '<TaskAllocationEvent>"
  (cl:format cl:nil "std_msgs/Header header              # ros header~%swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header~%int32 id                            # id of the task~%float64 bid                         # bid of the cps for the task (inverse of cost)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAllocationEvent)))
  "Returns full string definition for message of type 'TaskAllocationEvent"
  (cl:format cl:nil "std_msgs/Header header              # ros header~%swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header~%int32 id                            # id of the task~%float64 bid                         # bid of the cps for the task (inverse of cost)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAllocationEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAllocationEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAllocationEvent
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':id (id msg))
    (cl:cons ':bid (bid msg))
))
