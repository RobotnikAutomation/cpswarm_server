; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude PickAndPlaceFeedback.msg.html

(cl:defclass <PickAndPlaceFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PickAndPlaceFeedback (<PickAndPlaceFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickAndPlaceFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickAndPlaceFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<PickAndPlaceFeedback> is deprecated: use cpswarm_msgs-msg:PickAndPlaceFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickAndPlaceFeedback>) ostream)
  "Serializes a message object of type '<PickAndPlaceFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickAndPlaceFeedback>) istream)
  "Deserializes a message object of type '<PickAndPlaceFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickAndPlaceFeedback>)))
  "Returns string type for a message object of type '<PickAndPlaceFeedback>"
  "cpswarm_msgs/PickAndPlaceFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickAndPlaceFeedback)))
  "Returns string type for a message object of type 'PickAndPlaceFeedback"
  "cpswarm_msgs/PickAndPlaceFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickAndPlaceFeedback>)))
  "Returns md5sum for a message object of type '<PickAndPlaceFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickAndPlaceFeedback)))
  "Returns md5sum for a message object of type 'PickAndPlaceFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickAndPlaceFeedback>)))
  "Returns full string definition for message of type '<PickAndPlaceFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the feedback~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickAndPlaceFeedback)))
  "Returns full string definition for message of type 'PickAndPlaceFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the feedback~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickAndPlaceFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickAndPlaceFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PickAndPlaceFeedback
))
