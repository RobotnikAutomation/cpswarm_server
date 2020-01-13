;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::NedToEnu)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'NedToEnu (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::NEDTOENU")
  (make-package "CPSWARM_MSGS::NEDTOENU"))
(unless (find-package "CPSWARM_MSGS::NEDTOENUREQUEST")
  (make-package "CPSWARM_MSGS::NEDTOENUREQUEST"))
(unless (find-package "CPSWARM_MSGS::NEDTOENURESPONSE")
  (make-package "CPSWARM_MSGS::NEDTOENURESPONSE"))

(in-package "ROS")





(defclass cpswarm_msgs::NedToEnuRequest
  :super ros::object
  :slots (_yaw ))

(defmethod cpswarm_msgs::NedToEnuRequest
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::NedToEnuResponse
  :super ros::object
  :slots (_yaw ))

(defmethod cpswarm_msgs::NedToEnuResponse
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::NedToEnu
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::NedToEnu :md5sum-) "66c5e4df326badf03ba3dcd62381cf2e")
(setf (get cpswarm_msgs::NedToEnu :datatype-) "cpswarm_msgs/NedToEnu")
(setf (get cpswarm_msgs::NedToEnu :request) cpswarm_msgs::NedToEnuRequest)
(setf (get cpswarm_msgs::NedToEnu :response) cpswarm_msgs::NedToEnuResponse)

(defmethod cpswarm_msgs::NedToEnuRequest
  (:response () (instance cpswarm_msgs::NedToEnuResponse :init)))

(setf (get cpswarm_msgs::NedToEnuRequest :md5sum-) "66c5e4df326badf03ba3dcd62381cf2e")
(setf (get cpswarm_msgs::NedToEnuRequest :datatype-) "cpswarm_msgs/NedToEnuRequest")
(setf (get cpswarm_msgs::NedToEnuRequest :definition-)
      "float64 yaw
---
float64 yaw

")

(setf (get cpswarm_msgs::NedToEnuResponse :md5sum-) "66c5e4df326badf03ba3dcd62381cf2e")
(setf (get cpswarm_msgs::NedToEnuResponse :datatype-) "cpswarm_msgs/NedToEnuResponse")
(setf (get cpswarm_msgs::NedToEnuResponse :definition-)
      "float64 yaw
---
float64 yaw

")



(provide :cpswarm_msgs/NedToEnu "66c5e4df326badf03ba3dcd62381cf2e")


