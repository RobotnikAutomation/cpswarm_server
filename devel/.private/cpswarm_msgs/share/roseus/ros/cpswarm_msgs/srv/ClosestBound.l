;; Auto-generated. Do not edit!


(when (boundp 'cpswarm_msgs::ClosestBound)
  (if (not (find-package "CPSWARM_MSGS"))
    (make-package "CPSWARM_MSGS"))
  (shadow 'ClosestBound (find-package "CPSWARM_MSGS")))
(unless (find-package "CPSWARM_MSGS::CLOSESTBOUND")
  (make-package "CPSWARM_MSGS::CLOSESTBOUND"))
(unless (find-package "CPSWARM_MSGS::CLOSESTBOUNDREQUEST")
  (make-package "CPSWARM_MSGS::CLOSESTBOUNDREQUEST"))
(unless (find-package "CPSWARM_MSGS::CLOSESTBOUNDRESPONSE")
  (make-package "CPSWARM_MSGS::CLOSESTBOUNDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cpswarm_msgs::ClosestBoundRequest
  :super ros::object
  :slots (_point ))

(defmethod cpswarm_msgs::ClosestBoundRequest
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

(defclass cpswarm_msgs::ClosestBoundResponse
  :super ros::object
  :slots (_index _coords _dist ))

(defmethod cpswarm_msgs::ClosestBoundResponse
  (:init
   (&key
    ((:index __index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:coords __coords) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _index __index)
   (setq _coords __coords)
   (setq _dist (float __dist))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:coords
   (&rest __coords)
   (if (keywordp (car __coords))
       (send* _coords __coords)
     (progn
       (if __coords (setq _coords (car __coords)))
       _coords)))
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; uint32[] _index
    (* 4    (length _index)) 4
    ;; geometry_msgs/Point[] _coords
    (apply #'+ (send-all _coords :serialization-length)) 4
    ;; float64 _dist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _index
     (write-long (length _index) s)
     (dotimes (i (length _index))
       (write-long (elt _index i) s)
       )
     ;; geometry_msgs/Point[] _coords
     (write-long (length _coords) s)
     (dolist (elem _coords)
       (send elem :serialize s)
       )
     ;; float64 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _coords
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coords (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _coords)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _dist
     (setq _dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cpswarm_msgs::ClosestBound
  :super ros::object
  :slots ())

(setf (get cpswarm_msgs::ClosestBound :md5sum-) "8837846bed2f577b9e2edeeefebc2265")
(setf (get cpswarm_msgs::ClosestBound :datatype-) "cpswarm_msgs/ClosestBound")
(setf (get cpswarm_msgs::ClosestBound :request) cpswarm_msgs::ClosestBoundRequest)
(setf (get cpswarm_msgs::ClosestBound :response) cpswarm_msgs::ClosestBoundResponse)

(defmethod cpswarm_msgs::ClosestBoundRequest
  (:response () (instance cpswarm_msgs::ClosestBoundResponse :init)))

(setf (get cpswarm_msgs::ClosestBoundRequest :md5sum-) "8837846bed2f577b9e2edeeefebc2265")
(setf (get cpswarm_msgs::ClosestBoundRequest :datatype-) "cpswarm_msgs/ClosestBoundRequest")
(setf (get cpswarm_msgs::ClosestBoundRequest :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
uint32[] index
geometry_msgs/Point[] coords
float64 dist


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get cpswarm_msgs::ClosestBoundResponse :md5sum-) "8837846bed2f577b9e2edeeefebc2265")
(setf (get cpswarm_msgs::ClosestBoundResponse :datatype-) "cpswarm_msgs/ClosestBoundResponse")
(setf (get cpswarm_msgs::ClosestBoundResponse :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
uint32[] index
geometry_msgs/Point[] coords
float64 dist


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :cpswarm_msgs/ClosestBound "8837846bed2f577b9e2edeeefebc2265")


