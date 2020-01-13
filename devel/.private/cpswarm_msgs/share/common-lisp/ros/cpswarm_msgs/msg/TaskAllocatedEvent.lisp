; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude TaskAllocatedEvent.msg.html

(cl:defclass <TaskAllocatedEvent> (roslisp-msg-protocol:ros-message)
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
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (cps_id
    :reader cps_id
    :initarg :cps_id
    :type cl:string
    :initform ""))
)

(cl:defclass TaskAllocatedEvent (<TaskAllocatedEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAllocatedEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAllocatedEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<TaskAllocatedEvent> is deprecated: use cpswarm_msgs-msg:TaskAllocatedEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TaskAllocatedEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:header-val is deprecated.  Use cpswarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'swarmio-val :lambda-list '(m))
(cl:defmethod swarmio-val ((m <TaskAllocatedEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:swarmio-val is deprecated.  Use cpswarm_msgs-msg:swarmio instead.")
  (swarmio m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskAllocatedEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:task_id-val is deprecated.  Use cpswarm_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'cps_id-val :lambda-list '(m))
(cl:defmethod cps_id-val ((m <TaskAllocatedEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:cps_id-val is deprecated.  Use cpswarm_msgs-msg:cps_id instead.")
  (cps_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAllocatedEvent>) ostream)
  "Serializes a message object of type '<TaskAllocatedEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmio) ostream)
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cps_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cps_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAllocatedEvent>) istream)
  "Deserializes a message object of type '<TaskAllocatedEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmio) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cps_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cps_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAllocatedEvent>)))
  "Returns string type for a message object of type '<TaskAllocatedEvent>"
  "cpswarm_msgs/TaskAllocatedEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAllocatedEvent)))
  "Returns string type for a message object of type 'TaskAllocatedEvent"
  "cpswarm_msgs/TaskAllocatedEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAllocatedEvent>)))
  "Returns md5sum for a message object of type '<TaskAllocatedEvent>"
  "3bff5f7aacea32004625f4f70ddf4f9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAllocatedEvent)))
  "Returns md5sum for a message object of type 'TaskAllocatedEvent"
  "3bff5f7aacea32004625f4f70ddf4f9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAllocatedEvent>)))
  "Returns full string definition for message of type '<TaskAllocatedEvent>"
  (cl:format cl:nil "std_msgs/Header header              # ros header~%swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header~%int32 task_id                       # id of the task~%string cps_id                       # uuid of the cps to which the task has been allocated~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAllocatedEvent)))
  "Returns full string definition for message of type 'TaskAllocatedEvent"
  (cl:format cl:nil "std_msgs/Header header              # ros header~%swarmros/EventHeader swarmio        # cpswarm swarmio swarmros header~%int32 task_id                       # id of the task~%string cps_id                       # uuid of the cps to which the task has been allocated~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swarmros/EventHeader~%string name # Name of the event~%string node # UUID of the source or target node~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAllocatedEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmio))
     4
     4 (cl:length (cl:slot-value msg 'cps_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAllocatedEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAllocatedEvent
    (cl:cons ':header (header msg))
    (cl:cons ':swarmio (swarmio msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':cps_id (cps_id msg))
))
