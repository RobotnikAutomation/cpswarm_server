; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetPoints-request.msg.html

(cl:defclass <GetPoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPoints-request (<GetPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetPoints-request> is deprecated: use cpswarm_msgs-srv:GetPoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoints-request>) ostream)
  "Serializes a message object of type '<GetPoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoints-request>) istream)
  "Deserializes a message object of type '<GetPoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoints-request>)))
  "Returns string type for a service object of type '<GetPoints-request>"
  "cpswarm_msgs/GetPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoints-request)))
  "Returns string type for a service object of type 'GetPoints-request"
  "cpswarm_msgs/GetPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoints-request>)))
  "Returns md5sum for a message object of type '<GetPoints-request>"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoints-request)))
  "Returns md5sum for a message object of type 'GetPoints-request"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoints-request>)))
  "Returns full string definition for message of type '<GetPoints-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoints-request)))
  "Returns full string definition for message of type 'GetPoints-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoints-request
))
;//! \htmlinclude GetPoints-response.msg.html

(cl:defclass <GetPoints-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetPoints-response (<GetPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetPoints-response> is deprecated: use cpswarm_msgs-srv:GetPoints-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:points-val is deprecated.  Use cpswarm_msgs-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoints-response>) ostream)
  "Serializes a message object of type '<GetPoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoints-response>) istream)
  "Deserializes a message object of type '<GetPoints-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoints-response>)))
  "Returns string type for a service object of type '<GetPoints-response>"
  "cpswarm_msgs/GetPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoints-response)))
  "Returns string type for a service object of type 'GetPoints-response"
  "cpswarm_msgs/GetPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoints-response>)))
  "Returns md5sum for a message object of type '<GetPoints-response>"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoints-response)))
  "Returns md5sum for a message object of type 'GetPoints-response"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoints-response>)))
  "Returns full string definition for message of type '<GetPoints-response>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoints-response)))
  "Returns full string definition for message of type 'GetPoints-response"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoints-response
    (cl:cons ':points (points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPoints)))
  'GetPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPoints)))
  'GetPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoints)))
  "Returns string type for a service object of type '<GetPoints>"
  "cpswarm_msgs/GetPoints")