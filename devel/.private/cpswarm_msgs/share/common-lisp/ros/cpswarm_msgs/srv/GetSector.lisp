; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetSector-request.msg.html

(cl:defclass <GetSector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSector-request (<GetSector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetSector-request> is deprecated: use cpswarm_msgs-srv:GetSector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSector-request>) ostream)
  "Serializes a message object of type '<GetSector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSector-request>) istream)
  "Deserializes a message object of type '<GetSector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSector-request>)))
  "Returns string type for a service object of type '<GetSector-request>"
  "cpswarm_msgs/GetSectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSector-request)))
  "Returns string type for a service object of type 'GetSector-request"
  "cpswarm_msgs/GetSectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSector-request>)))
  "Returns md5sum for a message object of type '<GetSector-request>"
  "32e1c0b6f254bb48e963512143e9aa6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSector-request)))
  "Returns md5sum for a message object of type 'GetSector-request"
  "32e1c0b6f254bb48e963512143e9aa6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSector-request>)))
  "Returns full string definition for message of type '<GetSector-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSector-request)))
  "Returns full string definition for message of type 'GetSector-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSector-request
))
;//! \htmlinclude GetSector-response.msg.html

(cl:defclass <GetSector-response> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetSector-response (<GetSector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetSector-response> is deprecated: use cpswarm_msgs-srv:GetSector-response instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <GetSector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:min-val is deprecated.  Use cpswarm_msgs-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <GetSector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:max-val is deprecated.  Use cpswarm_msgs-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSector-response>) ostream)
  "Serializes a message object of type '<GetSector-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSector-response>) istream)
  "Deserializes a message object of type '<GetSector-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSector-response>)))
  "Returns string type for a service object of type '<GetSector-response>"
  "cpswarm_msgs/GetSectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSector-response)))
  "Returns string type for a service object of type 'GetSector-response"
  "cpswarm_msgs/GetSectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSector-response>)))
  "Returns md5sum for a message object of type '<GetSector-response>"
  "32e1c0b6f254bb48e963512143e9aa6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSector-response)))
  "Returns md5sum for a message object of type 'GetSector-response"
  "32e1c0b6f254bb48e963512143e9aa6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSector-response>)))
  "Returns full string definition for message of type '<GetSector-response>"
  (cl:format cl:nil "float64 min~%float64 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSector-response)))
  "Returns full string definition for message of type 'GetSector-response"
  (cl:format cl:nil "float64 min~%float64 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSector-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSector-response
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSector)))
  'GetSector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSector)))
  'GetSector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSector)))
  "Returns string type for a service object of type '<GetSector>"
  "cpswarm_msgs/GetSector")