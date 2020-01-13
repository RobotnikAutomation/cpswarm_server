; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude ClosestBound-request.msg.html

(cl:defclass <ClosestBound-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ClosestBound-request (<ClosestBound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestBound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestBound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<ClosestBound-request> is deprecated: use cpswarm_msgs-srv:ClosestBound-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <ClosestBound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:point-val is deprecated.  Use cpswarm_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestBound-request>) ostream)
  "Serializes a message object of type '<ClosestBound-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestBound-request>) istream)
  "Deserializes a message object of type '<ClosestBound-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestBound-request>)))
  "Returns string type for a service object of type '<ClosestBound-request>"
  "cpswarm_msgs/ClosestBoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestBound-request)))
  "Returns string type for a service object of type 'ClosestBound-request"
  "cpswarm_msgs/ClosestBoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestBound-request>)))
  "Returns md5sum for a message object of type '<ClosestBound-request>"
  "8837846bed2f577b9e2edeeefebc2265")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestBound-request)))
  "Returns md5sum for a message object of type 'ClosestBound-request"
  "8837846bed2f577b9e2edeeefebc2265")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestBound-request>)))
  "Returns full string definition for message of type '<ClosestBound-request>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestBound-request)))
  "Returns full string definition for message of type 'ClosestBound-request"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestBound-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestBound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestBound-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude ClosestBound-response.msg.html

(cl:defclass <ClosestBound-response> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (coords
    :reader coords
    :initarg :coords
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClosestBound-response (<ClosestBound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestBound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestBound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<ClosestBound-response> is deprecated: use cpswarm_msgs-srv:ClosestBound-response instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ClosestBound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:index-val is deprecated.  Use cpswarm_msgs-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'coords-val :lambda-list '(m))
(cl:defmethod coords-val ((m <ClosestBound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:coords-val is deprecated.  Use cpswarm_msgs-srv:coords instead.")
  (coords m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <ClosestBound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:dist-val is deprecated.  Use cpswarm_msgs-srv:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestBound-response>) ostream)
  "Serializes a message object of type '<ClosestBound-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'index))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coords))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'coords))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestBound-response>) istream)
  "Deserializes a message object of type '<ClosestBound-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'index) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'index)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coords) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coords)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestBound-response>)))
  "Returns string type for a service object of type '<ClosestBound-response>"
  "cpswarm_msgs/ClosestBoundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestBound-response)))
  "Returns string type for a service object of type 'ClosestBound-response"
  "cpswarm_msgs/ClosestBoundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestBound-response>)))
  "Returns md5sum for a message object of type '<ClosestBound-response>"
  "8837846bed2f577b9e2edeeefebc2265")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestBound-response)))
  "Returns md5sum for a message object of type 'ClosestBound-response"
  "8837846bed2f577b9e2edeeefebc2265")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestBound-response>)))
  "Returns full string definition for message of type '<ClosestBound-response>"
  (cl:format cl:nil "uint32[] index~%geometry_msgs/Point[] coords~%float64 dist~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestBound-response)))
  "Returns full string definition for message of type 'ClosestBound-response"
  (cl:format cl:nil "uint32[] index~%geometry_msgs/Point[] coords~%float64 dist~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestBound-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coords) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestBound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestBound-response
    (cl:cons ':index (index msg))
    (cl:cons ':coords (coords msg))
    (cl:cons ':dist (dist msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClosestBound)))
  'ClosestBound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClosestBound)))
  'ClosestBound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestBound)))
  "Returns string type for a service object of type '<ClosestBound>"
  "cpswarm_msgs/ClosestBound")