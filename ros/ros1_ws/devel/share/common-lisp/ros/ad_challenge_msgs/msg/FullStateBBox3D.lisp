; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude FullStateBBox3D.msg.html

(cl:defclass <FullStateBBox3D> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (box
    :reader box
    :initarg :box
    :type vision_msgs-msg:BoundingBox3D
    :initform (cl:make-instance 'vision_msgs-msg:BoundingBox3D))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (size_dot
    :reader size_dot
    :initarg :size_dot
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (size_ddot
    :reader size_ddot
    :initarg :size_ddot
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass FullStateBBox3D (<FullStateBBox3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FullStateBBox3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FullStateBBox3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<FullStateBBox3D> is deprecated: use ad_challenge_msgs-msg:FullStateBBox3D instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:id-val is deprecated.  Use ad_challenge_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:box-val is deprecated.  Use ad_challenge_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:velocity-val is deprecated.  Use ad_challenge_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:acceleration-val is deprecated.  Use ad_challenge_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'size_dot-val :lambda-list '(m))
(cl:defmethod size_dot-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:size_dot-val is deprecated.  Use ad_challenge_msgs-msg:size_dot instead.")
  (size_dot m))

(cl:ensure-generic-function 'size_ddot-val :lambda-list '(m))
(cl:defmethod size_ddot-val ((m <FullStateBBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:size_ddot-val is deprecated.  Use ad_challenge_msgs-msg:size_ddot instead.")
  (size_ddot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FullStateBBox3D>) ostream)
  "Serializes a message object of type '<FullStateBBox3D>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size_dot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size_ddot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FullStateBBox3D>) istream)
  "Deserializes a message object of type '<FullStateBBox3D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size_dot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size_ddot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FullStateBBox3D>)))
  "Returns string type for a message object of type '<FullStateBBox3D>"
  "ad_challenge_msgs/FullStateBBox3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FullStateBBox3D)))
  "Returns string type for a message object of type 'FullStateBBox3D"
  "ad_challenge_msgs/FullStateBBox3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FullStateBBox3D>)))
  "Returns md5sum for a message object of type '<FullStateBBox3D>"
  "c9c7d008a4a47a5d05b55140b7b32d93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FullStateBBox3D)))
  "Returns md5sum for a message object of type 'FullStateBBox3D"
  "c9c7d008a4a47a5d05b55140b7b32d93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FullStateBBox3D>)))
  "Returns full string definition for message of type '<FullStateBBox3D>"
  (cl:format cl:nil "int64 id~%vision_msgs/BoundingBox3D box~%~%## velocity and acceleration for bounding-box location~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%~%## velocity and acceleration for bounding-box size~%geometry_msgs/Vector3 size_dot~%geometry_msgs/Vector3 size_ddot~%================================================================================~%MSG: vision_msgs/BoundingBox3D~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF)~%# Dimensions of this box are in meters, and as such, it may be migrated to~%#   another package, such as geometry_msgs, in the future.~%~%# The 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# The size of the bounding box, in meters, surrounding the object's center~%#   pose.~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FullStateBBox3D)))
  "Returns full string definition for message of type 'FullStateBBox3D"
  (cl:format cl:nil "int64 id~%vision_msgs/BoundingBox3D box~%~%## velocity and acceleration for bounding-box location~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%~%## velocity and acceleration for bounding-box size~%geometry_msgs/Vector3 size_dot~%geometry_msgs/Vector3 size_ddot~%================================================================================~%MSG: vision_msgs/BoundingBox3D~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF)~%# Dimensions of this box are in meters, and as such, it may be migrated to~%#   another package, such as geometry_msgs, in the future.~%~%# The 3D position and orientation of the bounding box center~%geometry_msgs/Pose center~%~%# The size of the bounding box, in meters, surrounding the object's center~%#   pose.~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FullStateBBox3D>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size_dot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size_ddot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FullStateBBox3D>))
  "Converts a ROS message object to a list"
  (cl:list 'FullStateBBox3D
    (cl:cons ':id (id msg))
    (cl:cons ':box (box msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':size_dot (size_dot msg))
    (cl:cons ':size_ddot (size_ddot msg))
))
