;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::GetWaypoint)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'GetWaypoint (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::GETWAYPOINT")
  (make-package "CPSWARM_MSGS::GETWAYPOINT"))
(unless (find-package "CPSWARM_MSGS::GETWAYPOINTREQUEST")
  (make-package "CPSWARM_MSGS::GETWAYPOINTREQUEST"))
(unless (find-package "CPSWARM_MSGS::GETWAYPOINTRESPONSE")
  (make-package "CPSWARM_MSGS::GETWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cpswarm_msgs::GetWaypointRequest
  :super ros::object
  :slots (_position _tolerance ))

(defmethod cpswarm_msgs::GetWaypointRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _tolerance (float __tolerance))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _tolerance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _tolerance
     (setq _tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::GetWaypointResponse
  :super ros::object
  :slots (_point _valid ))

(defmethod cpswarm_msgs::GetWaypointResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _point __point)
   (setq _valid __valid)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cpswarm_msgs::GetWaypoint
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::GetWaypoint :md5sum-) "60903162a9fb13eb0253b5b0ab0c0cd4")
(setf (get cpswarm_msgs::GetWaypoint :datatype-) "cpswarm_msgs/GetWaypoint")
(setf (get cpswarm_msgs::GetWaypoint :request) cpswarm_msgs::GetWaypointRequest)
(setf (get cpswarm_msgs::GetWaypoint :response) cpswarm_msgs::GetWaypointResponse)

(defmethod cpswarm_msgs::GetWaypointRequest
  (:response () (instance cpswarm_msgs::GetWaypointResponse :init)))

(setf (get cpswarm_msgs::GetWaypointRequest :md5sum-) "60903162a9fb13eb0253b5b0ab0c0cd4")
(setf (get cpswarm_msgs::GetWaypointRequest :datatype-) "cpswarm_msgs/GetWaypointRequest")
(setf (get cpswarm_msgs::GetWaypointRequest :definition-)
      "geometry_msgs/Point position
float64 tolerance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point point
bool valid


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get cpswarm_msgs::GetWaypointResponse :md5sum-) "60903162a9fb13eb0253b5b0ab0c0cd4")
(setf (get cpswarm_msgs::GetWaypointResponse :datatype-) "cpswarm_msgs/GetWaypointResponse")
(setf (get cpswarm_msgs::GetWaypointResponse :definition-)
      "geometry_msgs/Point position
float64 tolerance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point point
bool valid


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :cpswarm_msgs/GetWaypoint "60903162a9fb13eb0253b5b0ab0c0cd4")


