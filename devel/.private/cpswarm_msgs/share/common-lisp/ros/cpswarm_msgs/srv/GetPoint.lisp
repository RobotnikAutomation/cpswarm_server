; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetPoint-request.msg.html

(cl:defclass <GetPoint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPoint-request (<GetPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetPoint-request> is deprecated: use cpswarm_msgs-srv:GetPoint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoint-request>) ostream)
  "Serializes a message object of type '<GetPoint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoint-request>) istream)
  "Deserializes a message object of type '<GetPoint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoint-request>)))
  "Returns string type for a service object of type '<GetPoint-request>"
  "cpswarm_msgs/GetPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoint-request)))
  "Returns string type for a service object of type 'GetPoint-request"
  "cpswarm_msgs/GetPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoint-request>)))
  "Returns md5sum for a message object of type '<GetPoint-request>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoint-request)))
  "Returns md5sum for a message object of type 'GetPoint-request"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoint-request>)))
  "Returns full string definition for message of type '<GetPoint-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoint-request)))
  "Returns full string definition for message of type 'GetPoint-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoint-request
))
;//! \htmlinclude GetPoint-response.msg.html

(cl:defclass <GetPoint-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetPoint-response (<GetPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetPoint-response> is deprecated: use cpswarm_msgs-srv:GetPoint-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:point-val is deprecated.  Use cpswarm_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoint-response>) ostream)
  "Serializes a message object of type '<GetPoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoint-response>) istream)
  "Deserializes a message object of type '<GetPoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoint-response>)))
  "Returns string type for a service object of type '<GetPoint-response>"
  "cpswarm_msgs/GetPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoint-response)))
  "Returns string type for a service object of type 'GetPoint-response"
  "cpswarm_msgs/GetPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoint-response>)))
  "Returns md5sum for a message object of type '<GetPoint-response>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoint-response)))
  "Returns md5sum for a message object of type 'GetPoint-response"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoint-response>)))
  "Returns full string definition for message of type '<GetPoint-response>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoint-response)))
  "Returns full string definition for message of type 'GetPoint-response"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoint-response
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPoint)))
  'GetPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPoint)))
  'GetPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoint)))
  "Returns string type for a service object of type '<GetPoint>"
  "cpswarm_msgs/GetPoint")