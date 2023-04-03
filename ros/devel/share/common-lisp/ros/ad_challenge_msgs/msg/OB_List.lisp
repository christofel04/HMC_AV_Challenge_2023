; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude OB_List.msg.html

(cl:defclass <OB_List> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (Object_list
    :reader Object_list
    :initarg :Object_list
    :type (cl:vector ad_challenge_msgs-msg:CM_Object)
   :initform (cl:make-array 0 :element-type 'ad_challenge_msgs-msg:CM_Object :initial-element (cl:make-instance 'ad_challenge_msgs-msg:CM_Object))))
)

(cl:defclass OB_List (<OB_List>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OB_List>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OB_List)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<OB_List> is deprecated: use ad_challenge_msgs-msg:OB_List instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <OB_List>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:time-val is deprecated.  Use ad_challenge_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'Object_list-val :lambda-list '(m))
(cl:defmethod Object_list-val ((m <OB_List>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Object_list-val is deprecated.  Use ad_challenge_msgs-msg:Object_list instead.")
  (Object_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OB_List>) ostream)
  "Serializes a message object of type '<OB_List>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Object_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Object_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OB_List>) istream)
  "Deserializes a message object of type '<OB_List>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Object_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Object_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ad_challenge_msgs-msg:CM_Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OB_List>)))
  "Returns string type for a message object of type '<OB_List>"
  "ad_challenge_msgs/OB_List")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OB_List)))
  "Returns string type for a message object of type 'OB_List"
  "ad_challenge_msgs/OB_List")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OB_List>)))
  "Returns md5sum for a message object of type '<OB_List>"
  "16234d4525d50fecc276cdee56b97cf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OB_List)))
  "Returns md5sum for a message object of type 'OB_List"
  "16234d4525d50fecc276cdee56b97cf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OB_List>)))
  "Returns full string definition for message of type '<OB_List>"
  (cl:format cl:nil "time time   #testing~%~%ad_challenge_msgs/CM_Object[] Object_list~%================================================================================~%MSG: ad_challenge_msgs/CM_Object~%string Object_name~%~%# 0 : no data, 1 : on data~%int64 state~%~%# reference dist~%float32 distance~%~%# reference point~%float32 point_x~%float32 point_y~%float32 point_z~%~%# width, heigth, length~%float32 width~%float32 heigth~%float32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OB_List)))
  "Returns full string definition for message of type 'OB_List"
  (cl:format cl:nil "time time   #testing~%~%ad_challenge_msgs/CM_Object[] Object_list~%================================================================================~%MSG: ad_challenge_msgs/CM_Object~%string Object_name~%~%# 0 : no data, 1 : on data~%int64 state~%~%# reference dist~%float32 distance~%~%# reference point~%float32 point_x~%float32 point_y~%float32 point_z~%~%# width, heigth, length~%float32 width~%float32 heigth~%float32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OB_List>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Object_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OB_List>))
  "Converts a ROS message object to a list"
  (cl:list 'OB_List
    (cl:cons ':time (time msg))
    (cl:cons ':Object_list (Object_list msg))
))
