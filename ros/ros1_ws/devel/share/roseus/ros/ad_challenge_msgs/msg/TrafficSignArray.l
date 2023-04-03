;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::TrafficSignArray)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'TrafficSignArray (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::TRAFFICSIGNARRAY")
  (make-package "AD_CHALLENGE_MSGS::TRAFFICSIGNARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ad_challenge_msgs::TrafficSignArray
  :super ros::object
  :slots (_header _signs ))

(defmethod ad_challenge_msgs::TrafficSignArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:signs __signs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _signs __signs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:signs
   (&rest __signs)
   (if (keywordp (car __signs))
       (send* _signs __signs)
     (progn
       (if __signs (setq _signs (car __signs)))
       _signs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ad_challenge_msgs/TrafficSign[] _signs
    (apply #'+ (send-all _signs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ad_challenge_msgs/TrafficSign[] _signs
     (write-long (length _signs) s)
     (dolist (elem _signs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ad_challenge_msgs/TrafficSign[] _signs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signs (let (r) (dotimes (i n) (push (instance ad_challenge_msgs::TrafficSign :init) r)) r))
     (dolist (elem- _signs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ad_challenge_msgs::TrafficSignArray :md5sum-) "5c876fa72bcd3a44f43d6f58a18d3409")
(setf (get ad_challenge_msgs::TrafficSignArray :datatype-) "ad_challenge_msgs/TrafficSignArray")
(setf (get ad_challenge_msgs::TrafficSignArray :definition-)
      "std_msgs/Header header
ad_challenge_msgs/TrafficSign[] signs
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ad_challenge_msgs/TrafficSign
int64 id
float32[3] position
float32[3] vector
")



(provide :ad_challenge_msgs/TrafficSignArray "5c876fa72bcd3a44f43d6f58a18d3409")


