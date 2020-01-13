;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::GetDouble)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'GetDouble (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::GETDOUBLE")
  (make-package "CPSWARM_MSGS::GETDOUBLE"))
(unless (find-package "CPSWARM_MSGS::GETDOUBLEREQUEST")
  (make-package "CPSWARM_MSGS::GETDOUBLEREQUEST"))
(unless (find-package "CPSWARM_MSGS::GETDOUBLERESPONSE")
  (make-package "CPSWARM_MSGS::GETDOUBLERESPONSE"))

(in-package "ROS")





(defclass cpswarm_msgs::GetDoubleRequest
  :super ros::object
  :slots ())

(defmethod cpswarm_msgs::GetDoubleRequest
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

(defclass cpswarm_msgs::GetDoubleResponse
  :super ros::object
  :slots (_value ))

(defmethod cpswarm_msgs::GetDoubleResponse
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::GetDouble
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::GetDouble :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get cpswarm_msgs::GetDouble :datatype-) "cpswarm_msgs/GetDouble")
(setf (get cpswarm_msgs::GetDouble :request) cpswarm_msgs::GetDoubleRequest)
(setf (get cpswarm_msgs::GetDouble :response) cpswarm_msgs::GetDoubleResponse)

(defmethod cpswarm_msgs::GetDoubleRequest
  (:response () (instance cpswarm_msgs::GetDoubleResponse :init)))

(setf (get cpswarm_msgs::GetDoubleRequest :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get cpswarm_msgs::GetDoubleRequest :datatype-) "cpswarm_msgs/GetDoubleRequest")
(setf (get cpswarm_msgs::GetDoubleRequest :definition-)
      "
---
float64 value

")

(setf (get cpswarm_msgs::GetDoubleResponse :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get cpswarm_msgs::GetDoubleResponse :datatype-) "cpswarm_msgs/GetDoubleResponse")
(setf (get cpswarm_msgs::GetDoubleResponse :definition-)
      "
---
float64 value

")



(provide :cpswarm_msgs/GetDouble "1b1594d2b74931ef8fe7be8e2d594455")


