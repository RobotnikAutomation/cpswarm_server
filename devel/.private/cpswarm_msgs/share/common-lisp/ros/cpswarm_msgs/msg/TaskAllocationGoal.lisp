; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude TaskAllocationGoal.msg.html

(cl:defclass <TaskAllocationGoal> (roslisp-msg-protocol:ros-message)
  ((auctioneer
    :reader auctioneer
    :initarg :auctioneer
    :type cl:string
    :initform "")
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (task_pose
    :reader task_pose
    :initarg :task_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TaskAllocationGoal (<TaskAllocationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAllocationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAllocationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<TaskAllocationGoal> is deprecated: use cpswarm_msgs-msg:TaskAllocationGoal instead.")))

(cl:ensure-generic-function 'auctioneer-val :lambda-list '(m))
(cl:defmethod auctioneer-val ((m <TaskAllocationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:auctioneer-val is deprecated.  Use cpswarm_msgs-msg:auctioneer instead.")
  (auctioneer m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskAllocationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:task_id-val is deprecated.  Use cpswarm_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_pose-val :lambda-list '(m))
(cl:defmethod task_pose-val ((m <TaskAllocationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-msg:task_pose-val is deprecated.  Use cpswarm_msgs-msg:task_pose instead.")
  (task_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAllocationGoal>) ostream)
  "Serializes a message object of type '<TaskAllocationGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'auctioneer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'auctioneer))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAllocationGoal>) istream)
  "Deserializes a message object of type '<TaskAllocationGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auctioneer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'auctioneer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAllocationGoal>)))
  "Returns string type for a message object of type '<TaskAllocationGoal>"
  "cpswarm_msgs/TaskAllocationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAllocationGoal)))
  "Returns string type for a message object of type 'TaskAllocationGoal"
  "cpswarm_msgs/TaskAllocationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAllocationGoal>)))
  "Returns md5sum for a message object of type '<TaskAllocationGoal>"
  "c769c9fac5ab00ed6a4d43dff9d0efa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAllocationGoal)))
  "Returns md5sum for a message object of type 'TaskAllocationGoal"
  "c769c9fac5ab00ed6a4d43dff9d0efa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAllocationGoal>)))
  "Returns full string definition for message of type '<TaskAllocationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string auctioneer                   # UUID of the CPS performing the task allocation~%uint32 task_id                      # ID of the task~%geometry_msgs/PoseStamped task_pose # Local position of the task~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAllocationGoal)))
  "Returns full string definition for message of type 'TaskAllocationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string auctioneer                   # UUID of the CPS performing the task allocation~%uint32 task_id                      # ID of the task~%geometry_msgs/PoseStamped task_pose # Local position of the task~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAllocationGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'auctioneer))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAllocationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAllocationGoal
    (cl:cons ':auctioneer (auctioneer msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_pose (task_pose msg))
))
