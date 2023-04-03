;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::FullStateBBox3D)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'FullStateBBox3D (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::FULLSTATEBBOX3D")
  (make-package "AD_CHALLENGE_MSGS::FULLSTATEBBOX3D"))

(in-package "ROS")
;;//! \htmlinclude FullStateBBox3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "VISION_MSGS"))
  (ros::roseus-add-msgs "vision_msgs"))


(defclass ad_challenge_msgs::FullStateBBox3D
  :super ros::object
  :slots (_id _box _velocity _acceleration _size_dot _size_ddot ))

(defmethod ad_challenge_msgs::FullStateBBox3D
  (:init
   (&key
    ((:id __id) 0)
    ((:box __box) (instance vision_msgs::BoundingBox3D :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Accel :init))
    ((:size_dot __size_dot) (instance geometry_msgs::Vector3 :init))
    ((:size_ddot __size_ddot) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _box __box)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _size_dot __size_dot)
   (setq _size_ddot __size_ddot)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:size_dot
   (&rest __size_dot)
   (if (keywordp (car __size_dot))
       (send* _size_dot __size_dot)
     (progn
       (if __size_dot (setq _size_dot (car __size_dot)))
       _size_dot)))
  (:size_ddot
   (&rest __size_ddot)
   (if (keywordp (car __size_ddot))
       (send* _size_ddot __size_ddot)
     (progn
       (if __size_ddot (setq _size_ddot (car __size_ddot)))
       _size_ddot)))
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; vision_msgs/BoundingBox3D _box
    (send _box :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Accel _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _size_dot
    (send _size_dot :serialization-length)
    ;; geometry_msgs/Vector3 _size_ddot
    (send _size_ddot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; vision_msgs/BoundingBox3D _box
       (send _box :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Accel _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _size_dot
       (send _size_dot :serialize s)
     ;; geometry_msgs/Vector3 _size_ddot
       (send _size_ddot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; vision_msgs/BoundingBox3D _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Accel _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _size_dot
     (send _size_dot :deserialize buf ptr-) (incf ptr- (send _size_dot :serialization-length))
   ;; geometry_msgs/Vector3 _size_ddot
     (send _size_ddot :deserialize buf ptr-) (incf ptr- (send _size_ddot :serialization-length))
   ;;
   self)
  )

(setf (get ad_challenge_msgs::FullStateBBox3D :md5sum-) "c9c7d008a4a47a5d05b55140b7b32d93")
(setf (get ad_challenge_msgs::FullStateBBox3D :datatype-) "ad_challenge_msgs/FullStateBBox3D")
(setf (get ad_challenge_msgs::FullStateBBox3D :definition-)
      "int64 id
vision_msgs/BoundingBox3D box

## velocity and acceleration for bounding-box location
geometry_msgs/Twist velocity
geometry_msgs/Accel acceleration

## velocity and acceleration for bounding-box size
geometry_msgs/Vector3 size_dot
geometry_msgs/Vector3 size_ddot
================================================================================
MSG: vision_msgs/BoundingBox3D
# A 3D bounding box that can be positioned and rotated about its center (6 DOF)
# Dimensions of this box are in meters, and as such, it may be migrated to
#   another package, such as geometry_msgs, in the future.

# The 3D position and orientation of the bounding box center
geometry_msgs/Pose center

# The size of the bounding box, in meters, surrounding the object's center
#   pose.
geometry_msgs/Vector3 size

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :ad_challenge_msgs/FullStateBBox3D "c9c7d008a4a47a5d05b55140b7b32d93")


