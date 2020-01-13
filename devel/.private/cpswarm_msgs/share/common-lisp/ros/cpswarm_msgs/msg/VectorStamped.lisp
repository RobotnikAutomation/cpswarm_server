; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude VectorStamped.msg.html

(cl:defclass <VectorStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (swarmio
    :reader swarmio
    :initarg :swarmio
    :type swarmros-msg:EventHeader
    :initform (cl:make-instance 'swarmros-msg:EventHeader))
   (vector
    :reader vector
    :initarg :vector
    :type cpswarm_msgs-msg:Vector
    :initform (cl:make-instance 'cpswarm_msgs-msg:Vector)))
)

(cl:defclass VectorStamped (<VectorStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<VectorStamped> is deprecated: use cpswarm_msgs-msg:VectorStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VectorStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <VectorStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <VectorStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:vector-val is deprecated.  Use cpswarm_msgs-msg:vector instead.")
  (vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorStamped>) ostream)
  "Serializes a message object of type '<VectorStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorStamped>) istream)
  "Deserializes a message object of type '<VectorStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorStamped>)))
  "Returns string type for a message object of type '<VectorStamped>"
  "cpswarm_msgs/VectorStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorStamped)))
  "Returns string type for a message object of type 'VectorStamped"
  "cpswarm_msgs/VectorStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorStamped>)))
  "Returns md5sum for a message object of type '<VectorStamped>"
  "8722cb4dba82d85a17fc91ee62b2f53a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorStamped)))
  "Returns md5sum for a message object of type 'VectorStamped"
  "8722cb4dba82d85a17fc91ee62b2f53a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorStamped>)))
  "Returns full string definition for message of type '<VectorStamped>"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%cpswarm_msgs/Vector vector   # cpswarm vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: cpswarm_msgs/Vector~%float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorStamped)))
  "Returns full string definition for message of type 'VectorStamped"
  (cl:format cl:nil "std_msgs/Header header       # ros header~%swarmros/EventHeader swarmio # cpswarm swarmio swarmros header~%cpswarm_msgs/Vector vector   # cpswarm vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%================================================================================~%MSG: cpswarm_msgs/Vector~%float32 magnitude # magnitude of vector~%float32 direction # direction of vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorStamped
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':vector (vector msg))
))
