; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetDouble-request.msg.html

(cl:defclass <GetDouble-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDouble-request (<GetDouble-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDouble-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDouble-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetDouble-request> is deprecated: use cpswarm_msgs-srv:GetDouble-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDouble-request>) ostream)
  "Serializes a message object of type '<GetDouble-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDouble-request>) istream)
  "Deserializes a message object of type '<GetDouble-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDouble-request>)))
  "Returns string type for a service object of type '<GetDouble-request>"
  "cpswarm_msgs/GetDoubleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDouble-request)))
  "Returns string type for a service object of type 'GetDouble-request"
  "cpswarm_msgs/GetDoubleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDouble-request>)))
  "Returns md5sum for a message object of type '<GetDouble-request>"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDouble-request)))
  "Returns md5sum for a message object of type 'GetDouble-request"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDouble-request>)))
  "Returns full string definition for message of type '<GetDouble-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDouble-request)))
  "Returns full string definition for message of type 'GetDouble-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDouble-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDouble-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDouble-request
))
;//! \htmlinclude GetDouble-response.msg.html

(cl:defclass <GetDouble-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetDouble-response (<GetDouble-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDouble-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDouble-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetDouble-response> is deprecated: use cpswarm_msgs-srv:GetDouble-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetDouble-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:value-val is deprecated.  Use cpswarm_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDouble-response>) ostream)
  "Serializes a message object of type '<GetDouble-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDouble-response>) istream)
  "Deserializes a message object of type '<GetDouble-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDouble-response>)))
  "Returns string type for a service object of type '<GetDouble-response>"
  "cpswarm_msgs/GetDoubleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDouble-response)))
  "Returns string type for a service object of type 'GetDouble-response"
  "cpswarm_msgs/GetDoubleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDouble-response>)))
  "Returns md5sum for a message object of type '<GetDouble-response>"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDouble-response)))
  "Returns md5sum for a message object of type 'GetDouble-response"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDouble-response>)))
  "Returns full string definition for message of type '<GetDouble-response>"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDouble-response)))
  "Returns full string definition for message of type 'GetDouble-response"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDouble-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDouble-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDouble-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDouble)))
  'GetDouble-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDouble)))
  'GetDouble-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDouble)))
  "Returns string type for a service object of type '<GetDouble>"
  "cpswarm_msgs/GetDouble")