; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude ArrayOfPositions.msg.html

(cl:defclass <ArrayOfPositions> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector cpswarm_msgs-msg:Position)
   :initform (cl:make-array 0 :element-type 'cpswarm_msgs-msg:Position :initial-element (cl:make-instance 'cpswarm_msgs-msg:Position))))
)

(cl:defclass ArrayOfPositions (<ArrayOfPositions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfPositions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfPositions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<ArrayOfPositions> is deprecated: use cpswarm_msgs-msg:ArrayOfPositions instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <ArrayOfPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:positions-val is deprecated.  Use cpswarm_msgs-msg:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfPositions>) ostream)
  "Serializes a message object of type '<ArrayOfPositions>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfPositions>) istream)
  "Deserializes a message object of type '<ArrayOfPositions>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cpswarm_msgs-msg:Position))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfPositions>)))
  "Returns string type for a message object of type '<ArrayOfPositions>"
  "cpswarm_msgs/ArrayOfPositions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfPositions)))
  "Returns string type for a message object of type 'ArrayOfPositions"
  "cpswarm_msgs/ArrayOfPositions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfPositions>)))
  "Returns md5sum for a message object of type '<ArrayOfPositions>"
  "84b21520bc4c50c456f805931a1d5707")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfPositions)))
  "Returns md5sum for a message object of type 'ArrayOfPositions"
  "84b21520bc4c50c456f805931a1d5707")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfPositions>)))
  "Returns full string definition for message of type '<ArrayOfPositions>"
  (cl:format cl:nil "cpswarm_msgs/Position[] positions # Array of position elements~%~%================================================================================~%MSG: cpswarm_msgs/Position~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%geometry_msgs/Pose pose      # cps position in local coordinates~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfPositions)))
  "Returns full string definition for message of type 'ArrayOfPositions"
  (cl:format cl:nil "cpswarm_msgs/Position[] positions # Array of position elements~%~%================================================================================~%MSG: cpswarm_msgs/Position~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%geometry_msgs/Pose pose      # cps position in local coordinates~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfPositions>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfPositions>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfPositions
    (cl:cons ':positions (positions msg))
))
