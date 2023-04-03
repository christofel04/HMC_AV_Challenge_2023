;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::TrafficSign)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'TrafficSign (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::TRAFFICSIGN")
  (make-package "AD_CHALLENGE_MSGS::TRAFFICSIGN"))

(in-package "ROS")
;;//! \htmlinclude TrafficSign.msg.html


(defclass ad_challenge_msgs::TrafficSign
  :super ros::object
  :slots (_id _position _vector ))

(defmethod ad_challenge_msgs::TrafficSign
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:vector __vector) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _vector __vector)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:vector
   (&optional __vector)
   (if __vector (setq _vector __vector)) _vector)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; float32[3] _position
    (* 4    3)
    ;; float32[3] _vector
    (* 4    3)
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
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _vector
     (dotimes (i 3)
       (sys::poke (elt _vector i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _vector
   (dotimes (i (length _vector))
     (setf (elt _vector i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get ad_challenge_msgs::TrafficSign :md5sum-) "462ab2ebdb1559910fd7323dabc3004e")
(setf (get ad_challenge_msgs::TrafficSign :datatype-) "ad_challenge_msgs/TrafficSign")
(setf (get ad_challenge_msgs::TrafficSign :definition-)
      "int64 id
float32[3] position
float32[3] vector
")



(provide :ad_challenge_msgs/TrafficSign "462ab2ebdb1559910fd7323dabc3004e")


