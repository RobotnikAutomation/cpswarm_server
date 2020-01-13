; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude TargetTracking.msg.html

(cl:defclass <TargetTracking> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (tf
    :reader tf
    :initarg :tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass TargetTracking (<TargetTracking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetTracking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetTracking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<TargetTracking> is deprecated: use cpswarm_msgs-msg:TargetTracking instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TargetTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TargetTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:id-val is deprecated.  Use cpswarm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <TargetTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:tf-val is deprecated.  Use cpswarm_msgs-msg:tf instead.")
  (tf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetTracking>) ostream)
  "Serializes a message object of type '<TargetTracking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetTracking>) istream)
  "Deserializes a message object of type '<TargetTracking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetTracking>)))
  "Returns string type for a message object of type '<TargetTracking>"
  "cpswarm_msgs/TargetTracking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetTracking)))
  "Returns string type for a message object of type 'TargetTracking"
  "cpswarm_msgs/TargetTracking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetTracking>)))
  "Returns md5sum for a message object of type '<TargetTracking>"
  "b395e332ecb571e4d08f5115330d1f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetTracking)))
  "Returns md5sum for a message object of type 'TargetTracking"
  "b395e332ecb571e4d08f5115330d1f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetTracking>)))
  "Returns full string definition for message of type '<TargetTracking>"
  (cl:format cl:nil "std_msgs/Header header          # ros header~%uint32 id                       # id of the target~%geometry_msgs/Transform tf      # transform between cps and target~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetTracking)))
  "Returns full string definition for message of type 'TargetTracking"
  (cl:format cl:nil "std_msgs/Header header          # ros header~%uint32 id                       # id of the target~%geometry_msgs/Transform tf      # transform between cps and target~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetTracking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetTracking>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetTracking
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':tf (tf msg))
))
