; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetWaypoint-request.msg.html

(cl:defclass <GetWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetWaypoint-request (<GetWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetWaypoint-request> is deprecated: use cpswarm_msgs-srv:GetWaypoint-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GetWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:position-val is deprecated.  Use cpswarm_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <GetWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:tolerance-val is deprecated.  Use cpswarm_msgs-srv:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoint-request>) ostream)
  "Serializes a message object of type '<GetWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoint-request>) istream)
  "Deserializes a message object of type '<GetWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoint-request>)))
  "Returns string type for a service object of type '<GetWaypoint-request>"
  "cpswarm_msgs/GetWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint-request)))
  "Returns string type for a service object of type 'GetWaypoint-request"
  "cpswarm_msgs/GetWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoint-request>)))
  "Returns md5sum for a message object of type '<GetWaypoint-request>"
  "60903162a9fb13eb0253b5b0ab0c0cd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoint-request)))
  "Returns md5sum for a message object of type 'GetWaypoint-request"
  "60903162a9fb13eb0253b5b0ab0c0cd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoint-request>)))
  "Returns full string definition for message of type '<GetWaypoint-request>"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 tolerance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoint-request)))
  "Returns full string definition for message of type 'GetWaypoint-request"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 tolerance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoint-request
    (cl:cons ':position (position msg))
    (cl:cons ':tolerance (tolerance msg))
))
;//! \htmlinclude GetWaypoint-response.msg.html

(cl:defclass <GetWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetWaypoint-response (<GetWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetWaypoint-response> is deprecated: use cpswarm_msgs-srv:GetWaypoint-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:point-val is deprecated.  Use cpswarm_msgs-srv:point instead.")
  (point m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <GetWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:valid-val is deprecated.  Use cpswarm_msgs-srv:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoint-response>) ostream)
  "Serializes a message object of type '<GetWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoint-response>) istream)
  "Deserializes a message object of type '<GetWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoint-response>)))
  "Returns string type for a service object of type '<GetWaypoint-response>"
  "cpswarm_msgs/GetWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint-response)))
  "Returns string type for a service object of type 'GetWaypoint-response"
  "cpswarm_msgs/GetWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoint-response>)))
  "Returns md5sum for a message object of type '<GetWaypoint-response>"
  "60903162a9fb13eb0253b5b0ab0c0cd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoint-response)))
  "Returns md5sum for a message object of type 'GetWaypoint-response"
  "60903162a9fb13eb0253b5b0ab0c0cd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoint-response>)))
  "Returns full string definition for message of type '<GetWaypoint-response>"
  (cl:format cl:nil "geometry_msgs/Point point~%bool valid~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoint-response)))
  "Returns full string definition for message of type 'GetWaypoint-response"
  (cl:format cl:nil "geometry_msgs/Point point~%bool valid~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoint-response
    (cl:cons ':point (point msg))
    (cl:cons ':valid (valid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypoint)))
  'GetWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypoint)))
  'GetWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint)))
  "Returns string type for a service object of type '<GetWaypoint>"
  "cpswarm_msgs/GetWaypoint")