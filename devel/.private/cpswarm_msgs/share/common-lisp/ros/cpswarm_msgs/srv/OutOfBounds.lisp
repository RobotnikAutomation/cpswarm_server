; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude OutOfBounds-request.msg.html

(cl:defclass <OutOfBounds-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass OutOfBounds-request (<OutOfBounds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutOfBounds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutOfBounds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<OutOfBounds-request> is deprecated: use cpswarm_msgs-srv:OutOfBounds-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <OutOfBounds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:pose-val is deprecated.  Use cpswarm_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutOfBounds-request>) ostream)
  "Serializes a message object of type '<OutOfBounds-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutOfBounds-request>) istream)
  "Deserializes a message object of type '<OutOfBounds-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutOfBounds-request>)))
  "Returns string type for a service object of type '<OutOfBounds-request>"
  "cpswarm_msgs/OutOfBoundsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutOfBounds-request)))
  "Returns string type for a service object of type 'OutOfBounds-request"
  "cpswarm_msgs/OutOfBoundsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutOfBounds-request>)))
  "Returns md5sum for a message object of type '<OutOfBounds-request>"
  "8dcfdeb668bad33e99a5bc16965e986d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutOfBounds-request)))
  "Returns md5sum for a message object of type 'OutOfBounds-request"
  "8dcfdeb668bad33e99a5bc16965e986d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutOfBounds-request>)))
  "Returns full string definition for message of type '<OutOfBounds-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutOfBounds-request)))
  "Returns full string definition for message of type 'OutOfBounds-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutOfBounds-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutOfBounds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OutOfBounds-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude OutOfBounds-response.msg.html

(cl:defclass <OutOfBounds-response> (roslisp-msg-protocol:ros-message)
  ((out
    :reader out
    :initarg :out
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OutOfBounds-response (<OutOfBounds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutOfBounds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutOfBounds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<OutOfBounds-response> is deprecated: use cpswarm_msgs-srv:OutOfBounds-response instead.")))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <OutOfBounds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:out-val is deprecated.  Use cpswarm_msgs-srv:out instead.")
  (out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutOfBounds-response>) ostream)
  "Serializes a message object of type '<OutOfBounds-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'out) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutOfBounds-response>) istream)
  "Deserializes a message object of type '<OutOfBounds-response>"
    (cl:setf (cl:slot-value msg 'out) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutOfBounds-response>)))
  "Returns string type for a service object of type '<OutOfBounds-response>"
  "cpswarm_msgs/OutOfBoundsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutOfBounds-response)))
  "Returns string type for a service object of type 'OutOfBounds-response"
  "cpswarm_msgs/OutOfBoundsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutOfBounds-response>)))
  "Returns md5sum for a message object of type '<OutOfBounds-response>"
  "8dcfdeb668bad33e99a5bc16965e986d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutOfBounds-response)))
  "Returns md5sum for a message object of type 'OutOfBounds-response"
  "8dcfdeb668bad33e99a5bc16965e986d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutOfBounds-response>)))
  "Returns full string definition for message of type '<OutOfBounds-response>"
  (cl:format cl:nil "bool out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutOfBounds-response)))
  "Returns full string definition for message of type 'OutOfBounds-response"
  (cl:format cl:nil "bool out~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutOfBounds-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutOfBounds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OutOfBounds-response
    (cl:cons ':out (out msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OutOfBounds)))
  'OutOfBounds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OutOfBounds)))
  'OutOfBounds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutOfBounds)))
  "Returns string type for a service object of type '<OutOfBounds>"
  "cpswarm_msgs/OutOfBounds")