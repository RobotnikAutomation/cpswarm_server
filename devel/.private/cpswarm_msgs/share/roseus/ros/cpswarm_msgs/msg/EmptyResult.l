;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::EmptyResult)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'EmptyResult (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::EMPTYRESULT")
  (make-package "CPSWARM_MSGS::EMPTYRESULT"))

(in-package "ROS")
;;//! \htmlinclude EmptyResult.msg.html


(defclass cpswarm_msgs::EmptyResult
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::EmptyResult
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cpswarm_msgs::EmptyResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cpswarm_msgs::EmptyResult :datatype-) "cpswarm_msgs/EmptyResult")
(setf (get cpswarm_msgs::EmptyResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

")



(provide :cpswarm_msgs/EmptyResult "d41d8cd98f00b204e9800998ecf8427e")

