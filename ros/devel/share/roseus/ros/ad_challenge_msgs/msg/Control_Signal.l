;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::Control_Signal)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'Control_Signal (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::CONTROL_SIGNAL")
  (make-package "AD_CHALLENGE_MSGS::CONTROL_SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude Control_Signal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ad_challenge_msgs::Control_Signal
  :super ros::object
  :slots (_header _steerangle _brake _gas _gear ))

(defmethod ad_challenge_msgs::Control_Signal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steerangle __steerangle) 0.0)
    ((:brake __brake) 0.0)
    ((:gas __gas) 0.0)
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steerangle (float __steerangle))
   (setq _brake (float __brake))
   (setq _gas (float __gas))
   (setq _gear (round __gear))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steerangle
   (&optional __steerangle)
   (if __steerangle (setq _steerangle __steerangle)) _steerangle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:gas
   (&optional __gas)
   (if __gas (setq _gas __gas)) _gas)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steerangle
    4
    ;; float32 _brake
    4
    ;; float32 _gas
    4
    ;; int32 _gear
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steerangle
       (sys::poke _steerangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gas
       (sys::poke _gas (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _gear
       (write-long _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steerangle
     (setq _steerangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gas
     (setq _gas (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ad_challenge_msgs::Control_Signal :md5sum-) "13380d98b4ba7df69247ee33eaf72a6c")
(setf (get ad_challenge_msgs::Control_Signal :datatype-) "ad_challenge_msgs/Control_Signal")
(setf (get ad_challenge_msgs::Control_Signal :definition-)
      "std_msgs/Header header
float32 steerangle #deg -270 ~ 270
float32 brake      #0: no brake, 1: full brake 
float32 gas        #0: no accel pedal, 1: full accel pedal
int32   gear       #1: drive, 0: neutral, -1: rear, -9: parking


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

")



(provide :ad_challenge_msgs/Control_Signal "13380d98b4ba7df69247ee33eaf72a6c")


