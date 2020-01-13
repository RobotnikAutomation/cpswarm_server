; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude Danger-request.msg.html

(cl:defclass <Danger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Danger-request (<Danger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Danger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Danger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<Danger-request> is deprecated: use cpswarm_msgs-srv:Danger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Danger-request>) ostream)
  "Serializes a message object of type '<Danger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Danger-request>) istream)
  "Deserializes a message object of type '<Danger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Danger-request>)))
  "Returns string type for a service object of type '<Danger-request>"
  "cpswarm_msgs/DangerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Danger-request)))
  "Returns string type for a service object of type 'Danger-request"
  "cpswarm_msgs/DangerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Danger-request>)))
  "Returns md5sum for a message object of type '<Danger-request>"
  "ce2958a2ab9de30c0653c98ced6972cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Danger-request)))
  "Returns md5sum for a message object of type 'Danger-request"
  "ce2958a2ab9de30c0653c98ced6972cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Danger-request>)))
  "Returns full string definition for message of type '<Danger-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Danger-request)))
  "Returns full string definition for message of type 'Danger-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Danger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Danger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Danger-request
))
;//! \htmlinclude Danger-response.msg.html

(cl:defclass <Danger-response> (roslisp-msg-protocol:ros-message)
  ((danger
    :reader danger
    :initarg :danger
    :type cl:boolean
    :initform cl:nil)
   (backoff
    :reader backoff
    :initarg :backoff
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0))
)

(cl:defclass Danger-response (<Danger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Danger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Danger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<Danger-response> is deprecated: use cpswarm_msgs-srv:Danger-response instead.")))

(cl:ensure-generic-function 'danger-val :lambda-list '(m))
(cl:defmethod danger-val ((m <Danger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:danger-val is deprecated.  Use cpswarm_msgs-srv:danger instead.")
  (danger m))

(cl:ensure-generic-function 'backoff-val :lambda-list '(m))
(cl:defmethod backoff-val ((m <Danger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:backoff-val is deprecated.  Use cpswarm_msgs-srv:backoff instead.")
  (backoff m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Danger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:direction-val is deprecated.  Use cpswarm_msgs-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Danger-response>) ostream)
  "Serializes a message object of type '<Danger-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'danger) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'backoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Danger-response>) istream)
  "Deserializes a message object of type '<Danger-response>"
    (cl:setf (cl:slot-value msg 'danger) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backoff) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Danger-response>)))
  "Returns string type for a service object of type '<Danger-response>"
  "cpswarm_msgs/DangerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Danger-response)))
  "Returns string type for a service object of type 'Danger-response"
  "cpswarm_msgs/DangerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Danger-response>)))
  "Returns md5sum for a message object of type '<Danger-response>"
  "ce2958a2ab9de30c0653c98ced6972cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Danger-response)))
  "Returns md5sum for a message object of type 'Danger-response"
  "ce2958a2ab9de30c0653c98ced6972cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Danger-response>)))
  "Returns full string definition for message of type '<Danger-response>"
  (cl:format cl:nil "bool danger~%float64 backoff~%float64 direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Danger-response)))
  "Returns full string definition for message of type 'Danger-response"
  (cl:format cl:nil "bool danger~%float64 backoff~%float64 direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Danger-response>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Danger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Danger-response
    (cl:cons ':danger (danger msg))
    (cl:cons ':backoff (backoff msg))
    (cl:cons ':direction (direction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Danger)))
  'Danger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Danger)))
  'Danger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Danger)))
  "Returns string type for a service object of type '<Danger>"
  "cpswarm_msgs/Danger")