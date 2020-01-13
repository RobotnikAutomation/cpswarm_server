; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetVector-request.msg.html

(cl:defclass <GetVector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVector-request (<GetVector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetVector-request> is deprecated: use cpswarm_msgs-srv:GetVector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVector-request>) ostream)
  "Serializes a message object of type '<GetVector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVector-request>) istream)
  "Deserializes a message object of type '<GetVector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVector-request>)))
  "Returns string type for a service object of type '<GetVector-request>"
  "cpswarm_msgs/GetVectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVector-request)))
  "Returns string type for a service object of type 'GetVector-request"
  "cpswarm_msgs/GetVectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVector-request>)))
  "Returns md5sum for a message object of type '<GetVector-request>"
  "b3a9e4daa2a94d943fe4e153df5ee05c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVector-request)))
  "Returns md5sum for a message object of type 'GetVector-request"
  "b3a9e4daa2a94d943fe4e153df5ee05c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVector-request>)))
  "Returns full string definition for message of type '<GetVector-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVector-request)))
  "Returns full string definition for message of type 'GetVector-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVector-request
))
;//! \htmlinclude GetVector-response.msg.html

(cl:defclass <GetVector-response> (roslisp-msg-protocol:ros-message)
  ((vector
    :reader vector
    :initarg :vector
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass GetVector-response (<GetVector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetVector-response> is deprecated: use cpswarm_msgs-srv:GetVector-response instead.")))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <GetVector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:vector-val is deprecated.  Use cpswarm_msgs-srv:vector instead.")
  (vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVector-response>) ostream)
  "Serializes a message object of type '<GetVector-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVector-response>) istream)
  "Deserializes a message object of type '<GetVector-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVector-response>)))
  "Returns string type for a service object of type '<GetVector-response>"
  "cpswarm_msgs/GetVectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVector-response)))
  "Returns string type for a service object of type 'GetVector-response"
  "cpswarm_msgs/GetVectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVector-response>)))
  "Returns md5sum for a message object of type '<GetVector-response>"
  "b3a9e4daa2a94d943fe4e153df5ee05c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVector-response)))
  "Returns md5sum for a message object of type 'GetVector-response"
  "b3a9e4daa2a94d943fe4e153df5ee05c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVector-response>)))
  "Returns full string definition for message of type '<GetVector-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 vector~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVector-response)))
  "Returns full string definition for message of type 'GetVector-response"
  (cl:format cl:nil "geometry_msgs/Vector3 vector~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVector-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVector-response
    (cl:cons ':vector (vector msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVector)))
  'GetVector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVector)))
  'GetVector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVector)))
  "Returns string type for a service object of type '<GetVector>"
  "cpswarm_msgs/GetVector")