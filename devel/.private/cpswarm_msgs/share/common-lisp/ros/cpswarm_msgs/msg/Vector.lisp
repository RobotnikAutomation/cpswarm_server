; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude Vector.msg.html

(cl:defclass <Vector> (roslisp-msg-protocol:ros-message)
  ((magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0))
)

(cl:defclass Vector (<Vector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<Vector> is deprecated: use cpswarm_msgs-msg:Vector instead.")))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <Vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:magnitude-val is deprecated.  Use cpswarm_msgs-msg:magnitude instead.")
  (magnitude m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:direction-val is deprecated.  Use cpswarm_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector>) ostream)
  "Serializes a message object of type '<Vector>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector>) istream)
  "Deserializes a message object of type '<Vector>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector>)))
  "Returns string type for a message object of type '<Vector>"
  "cpswarm_msgs/Vector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector)))
  "Returns string type for a message object of type 'Vector"
  "cpswarm_msgs/Vector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector>)))
  "Returns md5sum for a message object of type '<Vector>"
  "eb4005f5e84d241c0c41a25e2094bb18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector)))
  "Returns md5sum for a message object of type 'Vector"
  "eb4005f5e84d241c0c41a25e2094bb18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector>)))
  "Returns full string definition for message of type '<Vector>"
  (cl:format cl:nil "float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector)))
  "Returns full string definition for message of type 'Vector"
  (cl:format cl:nil "float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector
    (cl:cons ':magnitude (magnitude msg))
    (cl:cons ':direction (direction msg))
))
