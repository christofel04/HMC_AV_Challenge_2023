; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude FullStateBBox3DArray.msg.html

(cl:defclass <FullStateBBox3DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (boxes
    :reader boxes
    :initarg :boxes
    :type (cl:vector ad_challenge_msgs-msg:FullStateBBox3D)
   :initform (cl:make-array 0 :element-type 'ad_challenge_msgs-msg:FullStateBBox3D :initial-element (cl:make-instance 'ad_challenge_msgs-msg:FullStateBBox3D))))
)

(cl:defclass FullStateBBox3DArray (<FullStateBBox3DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FullStateBBox3DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FullStateBBox3DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<FullStateBBox3DArray> is deprecated: use ad_challenge_msgs-msg:FullStateBBox3DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FullStateBBox3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:header-val is deprecated.  Use ad_challenge_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'boxes-val :lambda-list '(m))
(cl:defmethod boxes-val ((m <FullStateBBox3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:boxes-val is deprecated.  Use ad_challenge_msgs-msg:boxes instead.")
  (boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FullStateBBox3DArray>) ostream)
  "Serializes a message object of type '<FullStateBBox3DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FullStateBBox3DArray>) istream)
  "Deserializes a message object of type '<FullStateBBox3DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ad_challenge_msgs-msg:FullStateBBox3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FullStateBBox3DArray>)))
  "Returns string type for a message object of type '<FullStateBBox3DArray>"
  "ad_challenge_msgs/FullStateBBox3DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FullStateBBox3DArray)))
  "Returns string type for a message object of type 'FullStateBBox3DArray"
  "ad_challenge_msgs/FullStateBBox3DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FullStateBBox3DArray>)))
  "Returns md5sum for a message object of type '<FullStateBBox3DArray>"
  "0665d68567423c3c0c8261ce765a96c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FullStateBBox3DArray)))
  "Returns md5sum for a message object of type 'FullStateBBox3DArray"
  "0665d68567423c3c0c8261ce765a96c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FullStateBBox3DArray>)))
  "Returns full string definition for message of type '<FullStateBBox3DArray>"
  (cl:format cl:nil "std_msgs/Header header~%ad_challenge_msgs/FullStateBBox3D[] boxes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ad_challenge_msgs/FullStateBBox3D~%int64 id~%vision_msgs/BoundingBox3D box~%~%## velocity and acceleration for bounding-box location~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%~%## velocity and acceleration for bounding-box size~%geometry_msgs/Vector3 size_dot~%geometry_msgs/Vector3 size_ddot~%================================================================================~%MSG: vision_msgs/BoundingBox3D~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF)~%# Dimensions of this box are in meters, and as such, it may be migrated to~%#   another package, such as geometry_msgs, in the future.~%~%# The 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# The size of the bounding box, in meters, surrounding the object's center~%#   pose.~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FullStateBBox3DArray)))
  "Returns full string definition for message of type 'FullStateBBox3DArray"
  (cl:format cl:nil "std_msgs/Header header~%ad_challenge_msgs/FullStateBBox3D[] boxes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ad_challenge_msgs/FullStateBBox3D~%int64 id~%vision_msgs/BoundingBox3D box~%~%## velocity and acceleration for bounding-box location~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%~%## velocity and acceleration for bounding-box size~%geometry_msgs/Vector3 size_dot~%geometry_msgs/Vector3 size_ddot~%================================================================================~%MSG: vision_msgs/BoundingBox3D~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF)~%# Dimensions of this box are in meters, and as such, it may be migrated to~%#   another package, such as geometry_msgs, in the future.~%~%# The 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# The size of the bounding box, in meters, surrounding the object's center~%#   pose.~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FullStateBBox3DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FullStateBBox3DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FullStateBBox3DArray
    (cl:cons ':header (header msg))
    (cl:cons ':boxes (boxes msg))
))
