; Auto-generated. Do not edit!


(cl:in-package cpswarm_msgs-srv)


;//! \htmlinclude GetGpsFix-request.msg.html

(cl:defclass <GetGpsFix-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGpsFix-request (<GetGpsFix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGpsFix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGpsFix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetGpsFix-request> is deprecated: use cpswarm_msgs-srv:GetGpsFix-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGpsFix-request>) ostream)
  "Serializes a message object of type '<GetGpsFix-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGpsFix-request>) istream)
  "Deserializes a message object of type '<GetGpsFix-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGpsFix-request>)))
  "Returns string type for a service object of type '<GetGpsFix-request>"
  "cpswarm_msgs/GetGpsFixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGpsFix-request)))
  "Returns string type for a service object of type 'GetGpsFix-request"
  "cpswarm_msgs/GetGpsFixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGpsFix-request>)))
  "Returns md5sum for a message object of type '<GetGpsFix-request>"
  "0109a02ab052d5bea76fe383f5f78bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGpsFix-request)))
  "Returns md5sum for a message object of type 'GetGpsFix-request"
  "0109a02ab052d5bea76fe383f5f78bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGpsFix-request>)))
  "Returns full string definition for message of type '<GetGpsFix-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGpsFix-request)))
  "Returns full string definition for message of type 'GetGpsFix-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGpsFix-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGpsFix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGpsFix-request
))
;//! \htmlinclude GetGpsFix-response.msg.html

(cl:defclass <GetGpsFix-response> (roslisp-msg-protocol:ros-message)
  ((fix
    :reader fix
    :initarg :fix
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix)))
)

(cl:defclass GetGpsFix-response (<GetGpsFix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGpsFix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGpsFix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cpswarm_msgs-srv:<GetGpsFix-response> is deprecated: use cpswarm_msgs-srv:GetGpsFix-response instead.")))

(cl:ensure-generic-function 'fix-val :lambda-list '(m))
(cl:defmethod fix-val ((m <GetGpsFix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cpswarm_msgs-srv:fix-val is deprecated.  Use cpswarm_msgs-srv:fix instead.")
  (fix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGpsFix-response>) ostream)
  "Serializes a message object of type '<GetGpsFix-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fix) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGpsFix-response>) istream)
  "Deserializes a message object of type '<GetGpsFix-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fix) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGpsFix-response>)))
  "Returns string type for a service object of type '<GetGpsFix-response>"
  "cpswarm_msgs/GetGpsFixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGpsFix-response)))
  "Returns string type for a service object of type 'GetGpsFix-response"
  "cpswarm_msgs/GetGpsFixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGpsFix-response>)))
  "Returns md5sum for a message object of type '<GetGpsFix-response>"
  "0109a02ab052d5bea76fe383f5f78bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGpsFix-response)))
  "Returns md5sum for a message object of type 'GetGpsFix-response"
  "0109a02ab052d5bea76fe383f5f78bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGpsFix-response>)))
  "Returns full string definition for message of type '<GetGpsFix-response>"
  (cl:format cl:nil "sensor_msgs/NavSatFix fix~%~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGpsFix-response)))
  "Returns full string definition for message of type 'GetGpsFix-response"
  (cl:format cl:nil "sensor_msgs/NavSatFix fix~%~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGpsFix-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGpsFix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGpsFix-response
    (cl:cons ':fix (fix msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGpsFix)))
  'GetGpsFix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGpsFix)))
  'GetGpsFix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGpsFix)))
  "Returns string type for a service object of type '<GetGpsFix>"
  "cpswarm_msgs/GetGpsFix")