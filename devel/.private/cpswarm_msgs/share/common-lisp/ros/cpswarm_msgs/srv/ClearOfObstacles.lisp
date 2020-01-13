; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude ClearOfObstacles-request.msg.html

(cl:defclass <ClearOfObstacles-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearOfObstacles-request (<ClearOfObstacles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearOfObstacles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearOfObstacles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<ClearOfObstacles-request> is deprecated: use cpswarm_msgs-srv:ClearOfObstacles-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearOfObstacles-request>) ostream)
  "Serializes a message object of type '<ClearOfObstacles-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearOfObstacles-request>) istream)
  "Deserializes a message object of type '<ClearOfObstacles-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearOfObstacles-request>)))
  "Returns string type for a service object of type '<ClearOfObstacles-request>"
  "cpswarm_msgs/ClearOfObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearOfObstacles-request)))
  "Returns string type for a service object of type 'ClearOfObstacles-request"
  "cpswarm_msgs/ClearOfObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearOfObstacles-request>)))
  "Returns md5sum for a message object of type '<ClearOfObstacles-request>"
  "0f13874ec47789a29a9f87f75379435d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearOfObstacles-request)))
  "Returns md5sum for a message object of type 'ClearOfObstacles-request"
  "0f13874ec47789a29a9f87f75379435d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearOfObstacles-request>)))
  "Returns full string definition for message of type '<ClearOfObstacles-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearOfObstacles-request)))
  "Returns full string definition for message of type 'ClearOfObstacles-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearOfObstacles-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearOfObstacles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearOfObstacles-request
))
;//! \htmlinclude ClearOfObstacles-response.msg.html

(cl:defclass <ClearOfObstacles-response> (roslisp-msg-protocol:ros-message)
  ((clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearOfObstacles-response (<ClearOfObstacles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearOfObstacles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearOfObstacles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<ClearOfObstacles-response> is deprecated: use cpswarm_msgs-srv:ClearOfObstacles-response instead.")))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <ClearOfObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:clear-val is deprecated.  Use cpswarm_msgs-srv:clear instead.")
  (clear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearOfObstacles-response>) ostream)
  "Serializes a message object of type '<ClearOfObstacles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearOfObstacles-response>) istream)
  "Deserializes a message object of type '<ClearOfObstacles-response>"
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearOfObstacles-response>)))
  "Returns string type for a service object of type '<ClearOfObstacles-response>"
  "cpswarm_msgs/ClearOfObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearOfObstacles-response)))
  "Returns string type for a service object of type 'ClearOfObstacles-response"
  "cpswarm_msgs/ClearOfObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearOfObstacles-response>)))
  "Returns md5sum for a message object of type '<ClearOfObstacles-response>"
  "0f13874ec47789a29a9f87f75379435d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearOfObstacles-response)))
  "Returns md5sum for a message object of type 'ClearOfObstacles-response"
  "0f13874ec47789a29a9f87f75379435d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearOfObstacles-response>)))
  "Returns full string definition for message of type '<ClearOfObstacles-response>"
  (cl:format cl:nil "bool clear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearOfObstacles-response)))
  "Returns full string definition for message of type 'ClearOfObstacles-response"
  (cl:format cl:nil "bool clear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearOfObstacles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearOfObstacles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearOfObstacles-response
    (cl:cons ':clear (clear msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearOfObstacles)))
  'ClearOfObstacles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearOfObstacles)))
  'ClearOfObstacles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearOfObstacles)))
  "Returns string type for a service object of type '<ClearOfObstacles>"
  "cpswarm_msgs/ClearOfObstacles")