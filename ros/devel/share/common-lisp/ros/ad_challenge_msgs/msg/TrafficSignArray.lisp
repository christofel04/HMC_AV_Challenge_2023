; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude TrafficSignArray.msg.html

(cl:defclass <TrafficSignArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (signs
    :reader signs
    :initarg :signs
    :type (cl:vector ad_challenge_msgs-msg:TrafficSign)
   :initform (cl:make-array 0 :element-type 'ad_challenge_msgs-msg:TrafficSign :initial-element (cl:make-instance 'ad_challenge_msgs-msg:TrafficSign))))
)

(cl:defclass TrafficSignArray (<TrafficSignArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<TrafficSignArray> is deprecated: use ad_challenge_msgs-msg:TrafficSignArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficSignArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:header-val is deprecated.  Use ad_challenge_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'signs-val :lambda-list '(m))
(cl:defmethod signs-val ((m <TrafficSignArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:signs-val is deprecated.  Use ad_challenge_msgs-msg:signs instead.")
  (signs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignArray>) ostream)
  "Serializes a message object of type '<TrafficSignArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignArray>) istream)
  "Deserializes a message object of type '<TrafficSignArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ad_challenge_msgs-msg:TrafficSign))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignArray>)))
  "Returns string type for a message object of type '<TrafficSignArray>"
  "ad_challenge_msgs/TrafficSignArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignArray)))
  "Returns string type for a message object of type 'TrafficSignArray"
  "ad_challenge_msgs/TrafficSignArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignArray>)))
  "Returns md5sum for a message object of type '<TrafficSignArray>"
  "5c876fa72bcd3a44f43d6f58a18d3409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignArray)))
  "Returns md5sum for a message object of type 'TrafficSignArray"
  "5c876fa72bcd3a44f43d6f58a18d3409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignArray>)))
  "Returns full string definition for message of type '<TrafficSignArray>"
  (cl:format cl:nil "std_msgs/Header header~%ad_challenge_msgs/TrafficSign[] signs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ad_challenge_msgs/TrafficSign~%int64 id~%float32[3] position~%float32[3] vector~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignArray)))
  "Returns full string definition for message of type 'TrafficSignArray"
  (cl:format cl:nil "std_msgs/Header header~%ad_challenge_msgs/TrafficSign[] signs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ad_challenge_msgs/TrafficSign~%int64 id~%float32[3] position~%float32[3] vector~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignArray
    (cl:cons ':header (header msg))
    (cl:cons ':signs (signs msg))
))
