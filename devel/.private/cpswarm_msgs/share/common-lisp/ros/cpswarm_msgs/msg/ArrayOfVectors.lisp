; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude ArrayOfVectors.msg.html

(cl:defclass <ArrayOfVectors> (roslisp-msg-protocol:ros-message)
  ((vectors
    :reader vectors
    :initarg :vectors
    :type (cl:vector cpswarm_msgs-msg:VectorStamped)
   :initform (cl:make-array 0 :element-type 'cpswarm_msgs-msg:VectorStamped :initial-element (cl:make-instance 'cpswarm_msgs-msg:VectorStamped))))
)

(cl:defclass ArrayOfVectors (<ArrayOfVectors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfVectors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfVectors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<ArrayOfVectors> is deprecated: use cpswarm_msgs-msg:ArrayOfVectors instead.")))

(cl:ensure-generic-function 'vectors-val :lambda-list '(m))
(cl:defmethod vectors-val ((m <ArrayOfVectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:vectors-val is deprecated.  Use cpswarm_msgs-msg:vectors instead.")
  (vectors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfVectors>) ostream)
  "Serializes a message object of type '<ArrayOfVectors>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vectors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vectors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfVectors>) istream)
  "Deserializes a message object of type '<ArrayOfVectors>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vectors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vectors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cpswarm_msgs-msg:VectorStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfVectors>)))
  "Returns string type for a message object of type '<ArrayOfVectors>"
  "cpswarm_msgs/ArrayOfVectors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfVectors)))
  "Returns string type for a message object of type 'ArrayOfVectors"
  "cpswarm_msgs/ArrayOfVectors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfVectors>)))
  "Returns md5sum for a message object of type '<ArrayOfVectors>"
  "c1fa763496c4cf1fa83f30e13880a5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfVectors)))
  "Returns md5sum for a message object of type 'ArrayOfVectors"
  "c1fa763496c4cf1fa83f30e13880a5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfVectors>)))
  "Returns full string definition for message of type '<ArrayOfVectors>"
  (cl:format cl:nil "cpswarm_msgs/VectorStamped[] vectors # Array of vector elements~%~%================================================================================~%MSG: cpswarm_msgs/VectorStamped~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%cpswarm_msgs/Vector vector   # cpswarm vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: cpswarm_msgs/Vector~%float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfVectors)))
  "Returns full string definition for message of type 'ArrayOfVectors"
  (cl:format cl:nil "cpswarm_msgs/VectorStamped[] vectors # Array of vector elements~%~%================================================================================~%MSG: cpswarm_msgs/VectorStamped~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%cpswarm_msgs/Vector vector   # cpswarm vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: cpswarm_msgs/Vector~%float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfVectors>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfVectors>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfVectors
    (cl:cons ':vectors (vectors msg))
))
