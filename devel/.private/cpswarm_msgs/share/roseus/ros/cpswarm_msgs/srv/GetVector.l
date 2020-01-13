;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::GetVector)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'GetVector (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::GETVECTOR")
  (make-package "CPSWARM_MSGS::GETVECTOR"))
(unless (find-package "CPSWARM_MSGS::GETVECTORREQUEST")
  (make-package "CPSWARM_MSGS::GETVECTORREQUEST"))
(unless (find-package "CPSWARM_MSGS::GETVECTORRESPONSE")
  (make-package "CPSWARM_MSGS::GETVECTORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cpswarm_msgs::GetVectorRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::GetVectorRequest
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

(defclass cpswarm_msgs::GetVectorResponse
  :super ros::object
  :slots (_vector ))

(defmethod cpswarm_msgs::GetVectorResponse
  (:init
   (&key
    ((:vector __vector) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _vector __vector)
   self)
  (:vector
   (&rest __vector)
   (if (keywordp (car __vector))
       (send* _vector __vector)
     (progn
       (if __vector (setq _vector (car __vector)))
       _vector)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _vector
    (send _vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _vector
       (send _vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _vector
     (send _vector :deserialize buf ptr-) (incf ptr- (send _vector :serialization-length))
   ;;
   self)
  )

(defclass cpswarm_msgs::GetVector
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::GetVector :md5sum-) "b3a9e4daa2a94d943fe4e153df5ee05c")
(setf (get cpswarm_msgs::GetVector :datatype-) "cpswarm_msgs/GetVector")
(setf (get cpswarm_msgs::GetVector :request) cpswarm_msgs::GetVectorRequest)
(setf (get cpswarm_msgs::GetVector :response) cpswarm_msgs::GetVectorResponse)

(defmethod cpswarm_msgs::GetVectorRequest
  (:response () (instance cpswarm_msgs::GetVectorResponse :init)))

(setf (get cpswarm_msgs::GetVectorRequest :md5sum-) "b3a9e4daa2a94d943fe4e153df5ee05c")
(setf (get cpswarm_msgs::GetVectorRequest :datatype-) "cpswarm_msgs/GetVectorRequest")
(setf (get cpswarm_msgs::GetVectorRequest :definition-)
      "
---
geometry_msgs/Vector3 vector


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get cpswarm_msgs::GetVectorResponse :md5sum-) "b3a9e4daa2a94d943fe4e153df5ee05c")
(setf (get cpswarm_msgs::GetVectorResponse :datatype-) "cpswarm_msgs/GetVectorResponse")
(setf (get cpswarm_msgs::GetVectorResponse :definition-)
      "
---
geometry_msgs/Vector3 vector


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :cpswarm_msgs/GetVector "b3a9e4daa2a94d943fe4e153df5ee05c")


