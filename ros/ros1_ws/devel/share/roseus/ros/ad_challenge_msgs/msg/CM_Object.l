;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::CM_Object)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'CM_Object (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::CM_OBJECT")
  (make-package "AD_CHALLENGE_MSGS::CM_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude CM_Object.msg.html


(defclass ad_challenge_msgs::CM_Object
  :super ros::object
  :slots (_Object_name _state _distance _point_x _point_y _point_z _width _heigth _length ))

(defmethod ad_challenge_msgs::CM_Object
  (:init
   (&key
    ((:Object_name __Object_name) "")
    ((:state __state) 0)
    ((:distance __distance) 0.0)
    ((:point_x __point_x) 0.0)
    ((:point_y __point_y) 0.0)
    ((:point_z __point_z) 0.0)
    ((:width __width) 0.0)
    ((:heigth __heigth) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _Object_name (string __Object_name))
   (setq _state (round __state))
   (setq _distance (float __distance))
   (setq _point_x (float __point_x))
   (setq _point_y (float __point_y))
   (setq _point_z (float __point_z))
   (setq _width (float __width))
   (setq _heigth (float __heigth))
   (setq _length (float __length))
   self)
  (:Object_name
   (&optional __Object_name)
   (if __Object_name (setq _Object_name __Object_name)) _Object_name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:point_x
   (&optional __point_x)
   (if __point_x (setq _point_x __point_x)) _point_x)
  (:point_y
   (&optional __point_y)
   (if __point_y (setq _point_y __point_y)) _point_y)
  (:point_z
   (&optional __point_z)
   (if __point_z (setq _point_z __point_z)) _point_z)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:heigth
   (&optional __heigth)
   (if __heigth (setq _heigth __heigth)) _heigth)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; string _Object_name
    4 (length _Object_name)
    ;; int64 _state
    8
    ;; float32 _distance
    4
    ;; float32 _point_x
    4
    ;; float32 _point_y
    4
    ;; float32 _point_z
    4
    ;; float32 _width
    4
    ;; float32 _heigth
    4
    ;; float32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Object_name
       (write-long (length _Object_name) s) (princ _Object_name s)
     ;; int64 _state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state) (= (length (_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state . bv) 0) 0) s)
              (write-long (ash (elt (_state . bv) 1) -1) s))
             ((and (class _state) (= (length (_state . bv)) 1)) ;; big1
              (write-long (elt (_state . bv) 0) s)
              (write-long (if (>= _state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state s)(write-long (if (>= _state 0) 0 #xffffffff) s)))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _point_x
       (sys::poke _point_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _point_y
       (sys::poke _point_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _point_z
       (sys::poke _point_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heigth
       (sys::poke _heigth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _state
#+(or :alpha :irix6 :x86_64)
      (setf _state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _point_x
     (setq _point_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _point_y
     (setq _point_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _point_z
     (setq _point_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heigth
     (setq _heigth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ad_challenge_msgs::CM_Object :md5sum-) "776a0629d3fff71ce9c701a589add34f")
(setf (get ad_challenge_msgs::CM_Object :datatype-) "ad_challenge_msgs/CM_Object")
(setf (get ad_challenge_msgs::CM_Object :definition-)
      "string Object_name

# 0 : no data, 1 : on data
int64 state

# reference dist
float32 distance

# reference point
float32 point_x
float32 point_y
float32 point_z

# width, heigth, length
float32 width
float32 heigth
float32 length


")



(provide :ad_challenge_msgs/CM_Object "776a0629d3fff71ce9c701a589add34f")


