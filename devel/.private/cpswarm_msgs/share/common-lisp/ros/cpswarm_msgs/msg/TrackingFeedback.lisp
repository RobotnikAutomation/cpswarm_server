; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-msg)


;//! \htmlinclude TrackingFeedback.msg.html

(cl:defclass <TrackingFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrackingFeedback (<TrackingFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-msg:<TrackingFeedback> is deprecated: use cpswarm_msgs-msg:TrackingFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingFeedback>) ostream)
  "Serializes a message object of type '<TrackingFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingFeedback>) istream)
  "Deserializes a message object of type '<TrackingFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingFeedback>)))
  "Returns string type for a message object of type '<TrackingFeedback>"
  "cpswarm_msgs/TrackingFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingFeedback)))
  "Returns string type for a message object of type 'TrackingFeedback"
  "cpswarm_msgs/TrackingFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingFeedback>)))
  "Returns md5sum for a message object of type '<TrackingFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingFeedback)))
  "Returns md5sum for a message object of type 'TrackingFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingFeedback>)))
  "Returns full string definition for message of type '<TrackingFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingFeedback)))
  "Returns full string definition for message of type 'TrackingFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingFeedback
))