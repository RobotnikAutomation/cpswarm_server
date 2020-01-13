;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::OutOfBounds)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'OutOfBounds (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::OUTOFBOUNDS")
  (make-package "CPSWARM_MSGS::OUTOFBOUNDS"))
(unless (find-package "CPSWARM_MSGS::OUTOFBOUNDSREQUEST")
  (make-package "CPSWARM_MSGS::OUTOFBOUNDSREQUEST"))
(unless (find-package "CPSWARM_MSGS::OUTOFBOUNDSRESPONSE")
  (make-package "CPSWARM_MSGS::OUTOFBOUNDSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass cpswarm_msgs::OutOfBoundsRequest
  :super ros::object
  :slots (_pose ))

(defmethod cpswarm_msgs::OutOfBoundsRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass cpswarm_msgs::OutOfBoundsResponse
  :super ros::object
  :slots (_out ))

(defmethod cpswarm_msgs::OutOfBoundsResponse
  (:init
   (&key
    ((:out __out) nil)
    )
   (send-super :init)
   (setq _out __out)
   self)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:serialization-length
   ()
   (+
    ;; bool _out
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _out
       (if _out (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _out
     (setq _out (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cpswarm_msgs::OutOfBounds
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::OutOfBounds :md5sum-) "8dcfdeb668bad33e99a5bc16965e986d")
(setf (get cpswarm_msgs::OutOfBounds :datatype-) "cpswarm_msgs/OutOfBounds")
(setf (get cpswarm_msgs::OutOfBounds :request) cpswarm_msgs::OutOfBoundsRequest)
(setf (get cpswarm_msgs::OutOfBounds :response) cpswarm_msgs::OutOfBoundsResponse)

(defmethod cpswarm_msgs::OutOfBoundsRequest
  (:response () (instance cpswarm_msgs::OutOfBoundsResponse :init)))

(setf (get cpswarm_msgs::OutOfBoundsRequest :md5sum-) "8dcfdeb668bad33e99a5bc16965e986d")
(setf (get cpswarm_msgs::OutOfBoundsRequest :datatype-) "cpswarm_msgs/OutOfBoundsRequest")
(setf (get cpswarm_msgs::OutOfBoundsRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool out

")

(setf (get cpswarm_msgs::OutOfBoundsResponse :md5sum-) "8dcfdeb668bad33e99a5bc16965e986d")
(setf (get cpswarm_msgs::OutOfBoundsResponse :datatype-) "cpswarm_msgs/OutOfBoundsResponse")
(setf (get cpswarm_msgs::OutOfBoundsResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool out

")



(provide :cpswarm_msgs/OutOfBounds "8dcfdeb668bad33e99a5bc16965e986d")


