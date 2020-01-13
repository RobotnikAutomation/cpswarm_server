;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::ClearOfObstacles)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'ClearOfObstacles (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::CLEAROFOBSTACLES")
  (make-package "CPSWARM_MSGS::CLEAROFOBSTACLES"))
(unless (find-package "CPSWARM_MSGS::CLEAROFOBSTACLESREQUEST")
  (make-package "CPSWARM_MSGS::CLEAROFOBSTACLESREQUEST"))
(unless (find-package "CPSWARM_MSGS::CLEAROFOBSTACLESRESPONSE")
  (make-package "CPSWARM_MSGS::CLEAROFOBSTACLESRESPONSE"))

(in-package "ROS")





(defclass cpswarm_msgs::ClearOfObstaclesRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::ClearOfObstaclesRequest
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

(defclass cpswarm_msgs::ClearOfObstaclesResponse
  :super ros::object
  :slots (_clear ))

(defmethod cpswarm_msgs::ClearOfObstaclesResponse
  (:init
   (&key
    ((:clear __clear) nil)
    )
   (send-super :init)
   (setq _clear __clear)
   self)
  (:clear
   (&optional __clear)
   (if __clear (setq _clear __clear)) _clear)
  (:serialization-length
   ()
   (+
    ;; bool _clear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clear
       (if _clear (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clear
     (setq _clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cpswarm_msgs::ClearOfObstacles
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::ClearOfObstacles :md5sum-) "0f13874ec47789a29a9f87f75379435d")
(setf (get cpswarm_msgs::ClearOfObstacles :datatype-) "cpswarm_msgs/ClearOfObstacles")
(setf (get cpswarm_msgs::ClearOfObstacles :request) cpswarm_msgs::ClearOfObstaclesRequest)
(setf (get cpswarm_msgs::ClearOfObstacles :response) cpswarm_msgs::ClearOfObstaclesResponse)

(defmethod cpswarm_msgs::ClearOfObstaclesRequest
  (:response () (instance cpswarm_msgs::ClearOfObstaclesResponse :init)))

(setf (get cpswarm_msgs::ClearOfObstaclesRequest :md5sum-) "0f13874ec47789a29a9f87f75379435d")
(setf (get cpswarm_msgs::ClearOfObstaclesRequest :datatype-) "cpswarm_msgs/ClearOfObstaclesRequest")
(setf (get cpswarm_msgs::ClearOfObstaclesRequest :definition-)
      "
---
bool clear

")

(setf (get cpswarm_msgs::ClearOfObstaclesResponse :md5sum-) "0f13874ec47789a29a9f87f75379435d")
(setf (get cpswarm_msgs::ClearOfObstaclesResponse :datatype-) "cpswarm_msgs/ClearOfObstaclesResponse")
(setf (get cpswarm_msgs::ClearOfObstaclesResponse :definition-)
      "
---
bool clear

")



(provide :cpswarm_msgs/ClearOfObstacles "0f13874ec47789a29a9f87f75379435d")


