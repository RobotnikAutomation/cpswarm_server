;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::GetSector)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'GetSector (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::GETSECTOR")
  (make-package "CPSWARM_MSGS::GETSECTOR"))
(unless (find-package "CPSWARM_MSGS::GETSECTORREQUEST")
  (make-package "CPSWARM_MSGS::GETSECTORREQUEST"))
(unless (find-package "CPSWARM_MSGS::GETSECTORRESPONSE")
  (make-package "CPSWARM_MSGS::GETSECTORRESPONSE"))

(in-package "ROS")





(defclass cpswarm_msgs::GetSectorRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::GetSectorRequest
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

(defclass cpswarm_msgs::GetSectorResponse
  :super ros::object
  :slots (_min _max ))

(defmethod cpswarm_msgs::GetSectorResponse
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float64 _min
    8
    ;; float64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _min
       (sys::poke _min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max
       (sys::poke _max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _min
     (setq _min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max
     (setq _max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::GetSector
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::GetSector :md5sum-) "32e1c0b6f254bb48e963512143e9aa6f")
(setf (get cpswarm_msgs::GetSector :datatype-) "cpswarm_msgs/GetSector")
(setf (get cpswarm_msgs::GetSector :request) cpswarm_msgs::GetSectorRequest)
(setf (get cpswarm_msgs::GetSector :response) cpswarm_msgs::GetSectorResponse)

(defmethod cpswarm_msgs::GetSectorRequest
  (:response () (instance cpswarm_msgs::GetSectorResponse :init)))

(setf (get cpswarm_msgs::GetSectorRequest :md5sum-) "32e1c0b6f254bb48e963512143e9aa6f")
(setf (get cpswarm_msgs::GetSectorRequest :datatype-) "cpswarm_msgs/GetSectorRequest")
(setf (get cpswarm_msgs::GetSectorRequest :definition-)
      "
---
float64 min
float64 max

")

(setf (get cpswarm_msgs::GetSectorResponse :md5sum-) "32e1c0b6f254bb48e963512143e9aa6f")
(setf (get cpswarm_msgs::GetSectorResponse :datatype-) "cpswarm_msgs/GetSectorResponse")
(setf (get cpswarm_msgs::GetSectorResponse :definition-)
      "
---
float64 min
float64 max

")



(provide :cpswarm_msgs/GetSector "32e1c0b6f254bb48e963512143e9aa6f")

