; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude Control_Signal.msg.html

(cl:defclass <Control_Signal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steerangle
    :reader steerangle
    :initarg :steerangle
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (gas
    :reader gas
    :initarg :gas
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0))
)

(cl:defclass Control_Signal (<Control_Signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control_Signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control_Signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<Control_Signal> is deprecated: use ad_challenge_msgs-msg:Control_Signal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Control_Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:header-val is deprecated.  Use ad_challenge_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steerangle-val :lambda-list '(m))
(cl:defmethod steerangle-val ((m <Control_Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:steerangle-val is deprecated.  Use ad_challenge_msgs-msg:steerangle instead.")
  (steerangle m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <Control_Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:brake-val is deprecated.  Use ad_challenge_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'gas-val :lambda-list '(m))
(cl:defmethod gas-val ((m <Control_Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:gas-val is deprecated.  Use ad_challenge_msgs-msg:gas instead.")
  (gas m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Control_Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:gear-val is deprecated.  Use ad_challenge_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control_Signal>) ostream)
  "Serializes a message object of type '<Control_Signal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control_Signal>) istream)
  "Deserializes a message object of type '<Control_Signal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gas) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control_Signal>)))
  "Returns string type for a message object of type '<Control_Signal>"
  "ad_challenge_msgs/Control_Signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control_Signal)))
  "Returns string type for a message object of type 'Control_Signal"
  "ad_challenge_msgs/Control_Signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control_Signal>)))
  "Returns md5sum for a message object of type '<Control_Signal>"
  "13380d98b4ba7df69247ee33eaf72a6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control_Signal)))
  "Returns md5sum for a message object of type 'Control_Signal"
  "13380d98b4ba7df69247ee33eaf72a6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control_Signal>)))
  "Returns full string definition for message of type '<Control_Signal>"
  (cl:format cl:nil "std_msgs/Header header~%float32 steerangle #deg -270 ~~ 270~%float32 brake      #0: no brake, 1: full brake ~%float32 gas        #0: no accel pedal, 1: full accel pedal~%int32   gear       #1: drive, 0: neutral, -1: rear, -9: parking~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control_Signal)))
  "Returns full string definition for message of type 'Control_Signal"
  (cl:format cl:nil "std_msgs/Header header~%float32 steerangle #deg -270 ~~ 270~%float32 brake      #0: no brake, 1: full brake ~%float32 gas        #0: no accel pedal, 1: full accel pedal~%int32   gear       #1: drive, 0: neutral, -1: rear, -9: parking~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control_Signal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control_Signal>))
  "Converts a ROS message object to a list"
  (cl:list 'Control_Signal
    (cl:cons ':header (header msg))
    (cl:cons ':steerangle (steerangle msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':gas (gas msg))
    (cl:cons ':gear (gear msg))
))
