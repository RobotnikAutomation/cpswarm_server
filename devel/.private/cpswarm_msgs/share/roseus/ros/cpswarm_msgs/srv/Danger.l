;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::Danger)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'Danger (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::DANGER")
  (make-package "CPSWARM_MSGS::DANGER"))
(unless (find-package "CPSWARM_MSGS::DANGERREQUEST")
  (make-package "CPSWARM_MSGS::DANGERREQUEST"))
(unless (find-package "CPSWARM_MSGS::DANGERRESPONSE")
  (make-package "CPSWARM_MSGS::DANGERRESPONSE"))

(in-package "ROS")





(defclass cpswarm_msgs::DangerRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::DangerRequest
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

(defclass cpswarm_msgs::DangerResponse
  :super ros::object
  :slots (_danger _backoff _direction ))

(defmethod cpswarm_msgs::DangerResponse
  (:init
   (&key
    ((:danger __danger) nil)
    ((:backoff __backoff) 0.0)
    ((:direction __direction) 0.0)
    )
   (send-super :init)
   (setq _danger __danger)
   (setq _backoff (float __backoff))
   (setq _direction (float __direction))
   self)
  (:danger
   (&optional __danger)
   (if __danger (setq _danger __danger)) _danger)
  (:backoff
   (&optional __backoff)
   (if __backoff (setq _backoff __backoff)) _backoff)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; bool _danger
    1
    ;; float64 _backoff
    8
    ;; float64 _direction
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _danger
       (if _danger (write-byte -1 s) (write-byte 0 s))
     ;; float64 _backoff
       (sys::poke _backoff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _danger
     (setq _danger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _backoff
     (setq _backoff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _direction
     (setq _direction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::Danger
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::Danger :md5sum-) "ce2958a2ab9de30c0653c98ced6972cd")
(setf (get cpswarm_msgs::Danger :datatype-) "cpswarm_msgs/Danger")
(setf (get cpswarm_msgs::Danger :request) cpswarm_msgs::DangerRequest)
(setf (get cpswarm_msgs::Danger :response) cpswarm_msgs::DangerResponse)

(defmethod cpswarm_msgs::DangerRequest
  (:response () (instance cpswarm_msgs::DangerResponse :init)))

(setf (get cpswarm_msgs::DangerRequest :md5sum-) "ce2958a2ab9de30c0653c98ced6972cd")
(setf (get cpswarm_msgs::DangerRequest :datatype-) "cpswarm_msgs/DangerRequest")
(setf (get cpswarm_msgs::DangerRequest :definition-)
      "
---
bool danger
float64 backoff
float64 direction

")

(setf (get cpswarm_msgs::DangerResponse :md5sum-) "ce2958a2ab9de30c0653c98ced6972cd")
(setf (get cpswarm_msgs::DangerResponse :datatype-) "cpswarm_msgs/DangerResponse")
(setf (get cpswarm_msgs::DangerResponse :definition-)
      "
---
bool danger
float64 backoff
float64 direction

")



(provide :cpswarm_msgs/Danger "ce2958a2ab9de30c0653c98ced6972cd")


