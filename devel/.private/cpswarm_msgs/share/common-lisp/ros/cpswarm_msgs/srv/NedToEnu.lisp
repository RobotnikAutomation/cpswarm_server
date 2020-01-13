; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude NedToEnu-request.msg.html

(cl:defclass <NedToEnu-request> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass NedToEnu-request (<NedToEnu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NedToEnu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NedToEnu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<NedToEnu-request> is deprecated: use cpswarm_msgs-srv:NedToEnu-request instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <NedToEnu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:yaw-val is deprecated.  Use cpswarm_msgs-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NedToEnu-request>) ostream)
  "Serializes a message object of type '<NedToEnu-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NedToEnu-request>) istream)
  "Deserializes a message object of type '<NedToEnu-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NedToEnu-request>)))
  "Returns string type for a service object of type '<NedToEnu-request>"
  "cpswarm_msgs/NedToEnuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NedToEnu-request)))
  "Returns string type for a service object of type 'NedToEnu-request"
  "cpswarm_msgs/NedToEnuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NedToEnu-request>)))
  "Returns md5sum for a message object of type '<NedToEnu-request>"
  "66c5e4df326badf03ba3dcd62381cf2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NedToEnu-request)))
  "Returns md5sum for a message object of type 'NedToEnu-request"
  "66c5e4df326badf03ba3dcd62381cf2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NedToEnu-request>)))
  "Returns full string definition for message of type '<NedToEnu-request>"
  (cl:format cl:nil "float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NedToEnu-request)))
  "Returns full string definition for message of type 'NedToEnu-request"
  (cl:format cl:nil "float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NedToEnu-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NedToEnu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NedToEnu-request
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude NedToEnu-response.msg.html

(cl:defclass <NedToEnu-response> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass NedToEnu-response (<NedToEnu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NedToEnu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NedToEnu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<NedToEnu-response> is deprecated: use cpswarm_msgs-srv:NedToEnu-response instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <NedToEnu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:yaw-val is deprecated.  Use cpswarm_msgs-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NedToEnu-response>) ostream)
  "Serializes a message object of type '<NedToEnu-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NedToEnu-response>) istream)
  "Deserializes a message object of type '<NedToEnu-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NedToEnu-response>)))
  "Returns string type for a service object of type '<NedToEnu-response>"
  "cpswarm_msgs/NedToEnuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NedToEnu-response)))
  "Returns string type for a service object of type 'NedToEnu-response"
  "cpswarm_msgs/NedToEnuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NedToEnu-response>)))
  "Returns md5sum for a message object of type '<NedToEnu-response>"
  "66c5e4df326badf03ba3dcd62381cf2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NedToEnu-response)))
  "Returns md5sum for a message object of type 'NedToEnu-response"
  "66c5e4df326badf03ba3dcd62381cf2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NedToEnu-response>)))
  "Returns full string definition for message of type '<NedToEnu-response>"
  (cl:format cl:nil "float64 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NedToEnu-response)))
  "Returns full string definition for message of type 'NedToEnu-response"
  (cl:format cl:nil "float64 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NedToEnu-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NedToEnu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NedToEnu-response
    (cl:cons ':yaw (yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NedToEnu)))
  'NedToEnu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NedToEnu)))
  'NedToEnu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NedToEnu)))
  "Returns string type for a service object of type '<NedToEnu>"
  "cpswarm_msgs/NedToEnu")