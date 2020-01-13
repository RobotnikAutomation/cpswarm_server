; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude ArrayOfStates.msg.html

(cl:defclass <ArrayOfStates> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector cpswarm_msgs-msg:StateEvent)
   :initform (cl:make-array 0 :element-type 'cpswarm_msgs-msg:StateEvent :initial-element (cl:make-instance 'cpswarm_msgs-msg:StateEvent))))
)

(cl:defclass ArrayOfStates (<ArrayOfStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<ArrayOfStates> is deprecated: use cpswarm_msgs-msg:ArrayOfStates instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <ArrayOfStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:states-val is deprecated.  Use cpswarm_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfStates>) ostream)
  "Serializes a message object of type '<ArrayOfStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfStates>) istream)
  "Deserializes a message object of type '<ArrayOfStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cpswarm_msgs-msg:StateEvent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfStates>)))
  "Returns string type for a message object of type '<ArrayOfStates>"
  "cpswarm_msgs/ArrayOfStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfStates)))
  "Returns string type for a message object of type 'ArrayOfStates"
  "cpswarm_msgs/ArrayOfStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfStates>)))
  "Returns md5sum for a message object of type '<ArrayOfStates>"
  "f75e4178e3e7edf854c68e5181aa9c80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfStates)))
  "Returns md5sum for a message object of type 'ArrayOfStates"
  "f75e4178e3e7edf854c68e5181aa9c80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfStates>)))
  "Returns full string definition for message of type '<ArrayOfStates>"
  (cl:format cl:nil "cpswarm_msgs/StateEvent[] states # Array of state events~%~%================================================================================~%MSG: cpswarm_msgs/StateEvent~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%string state                 # state of the cps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfStates)))
  "Returns full string definition for message of type 'ArrayOfStates"
  (cl:format cl:nil "cpswarm_msgs/StateEvent[] states # Array of state events~%~%================================================================================~%MSG: cpswarm_msgs/StateEvent~%std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%string state                 # state of the cps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfStates>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfStates
    (cl:cons ':states (states msg))
))
