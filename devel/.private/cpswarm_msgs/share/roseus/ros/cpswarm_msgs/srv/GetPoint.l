;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::GetPoint)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'GetPoint (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::GETPOINT")
  (make-package "CPSWARM_MSGS::GETPOINT"))
(unless (find-package "CPSWARM_MSGS::GETPOINTREQUEST")
  (make-package "CPSWARM_MSGS::GETPOINTREQUEST"))
(unless (find-package "CPSWARM_MSGS::GETPOINTRESPONSE")
  (make-package "CPSWARM_MSGS::GETPOINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cpswarm_msgs::GetPointRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::GetPointRequest
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

(defclass cpswarm_msgs::GetPointResponse
  :super ros::object
  :slots (_point ))

(defmethod cpswarm_msgs::GetPointResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass cpswarm_msgs::GetPoint
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::GetPoint :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get cpswarm_msgs::GetPoint :datatype-) "cpswarm_msgs/GetPoint")
(setf (get cpswarm_msgs::GetPoint :request) cpswarm_msgs::GetPointRequest)
(setf (get cpswarm_msgs::GetPoint :response) cpswarm_msgs::GetPointResponse)

(defmethod cpswarm_msgs::GetPointRequest
  (:response () (instance cpswarm_msgs::GetPointResponse :init)))

(setf (get cpswarm_msgs::GetPointRequest :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get cpswarm_msgs::GetPointRequest :datatype-) "cpswarm_msgs/GetPointRequest")
(setf (get cpswarm_msgs::GetPointRequest :definition-)
      "
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get cpswarm_msgs::GetPointResponse :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get cpswarm_msgs::GetPointResponse :datatype-) "cpswarm_msgs/GetPointResponse")
(setf (get cpswarm_msgs::GetPointResponse :definition-)
      "
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :cpswarm_msgs/GetPoint "a7c84ff13976aa04656e56e300124444")


