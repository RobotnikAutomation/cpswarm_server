;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::Vector)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'Vector (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::VECTOR")
  (make-package "CPSWARM_MSGS::VECTOR"))

(in-package "ROS")
;;//! \htmlinclude Vector.msg.html


(defclass cpswarm_msgs::Vector
  :super ros::object
  :slots (_magnitude _direction ))

(defmethod cpswarm_msgs::Vector
  (:init
   (&key
    ((:magnitude __magnitude) 0.0)
    ((:direction __direction) 0.0)
    )
   (send-super :init)
   (setq _magnitude (float __magnitude))
   (setq _direction (float __direction))
   self)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float32 _magnitude
    4
    ;; float32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _magnitude
     (setq _magnitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cpswarm_msgs::Vector :md5sum-) "eb4005f5e84d241c0c41a25e2094bb18")
(setf (get cpswarm_msgs::Vector :datatype-) "cpswarm_msgs/Vector")
(setf (get cpswarm_msgs::Vector :definition-)
      "float32 magnitude # magnitude of vector
float32 direction # direction of vector

")



(provide :cpswarm_msgs/Vector "eb4005f5e84d241c0c41a25e2094bb18")


