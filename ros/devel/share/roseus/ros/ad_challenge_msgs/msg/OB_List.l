;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::OB_List)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'OB_List (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::OB_LIST")
  (make-package "AD_CHALLENGE_MSGS::OB_LIST"))

(in-package "ROS")
;;//! \htmlinclude OB_List.msg.html


(defclass ad_challenge_msgs::OB_List
  :super ros::object
  :slots (_time _Object_list ))

(defmethod ad_challenge_msgs::OB_List
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:Object_list __Object_list) ())
    )
   (send-super :init)
   (setq _time __time)
   (setq _Object_list __Object_list)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:Object_list
   (&rest __Object_list)
   (if (keywordp (car __Object_list))
       (send* _Object_list __Object_list)
     (progn
       (if __Object_list (setq _Object_list (car __Object_list)))
       _Object_list)))
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; ad_challenge_msgs/CM_Object[] _Object_list
    (apply #'+ (send-all _Object_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; ad_challenge_msgs/CM_Object[] _Object_list
     (write-long (length _Object_list) s)
     (dolist (elem _Object_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ad_challenge_msgs/CM_Object[] _Object_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Object_list (let (r) (dotimes (i n) (push (instance ad_challenge_msgs::CM_Object :init) r)) r))
     (dolist (elem- _Object_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ad_challenge_msgs::OB_List :md5sum-) "16234d4525d50fecc276cdee56b97cf0")
(setf (get ad_challenge_msgs::OB_List :datatype-) "ad_challenge_msgs/OB_List")
(setf (get ad_challenge_msgs::OB_List :definition-)
      "time time   #testing

ad_challenge_msgs/CM_Object[] Object_list
================================================================================
MSG: ad_challenge_msgs/CM_Object
string Object_name

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



(provide :ad_challenge_msgs/OB_List "16234d4525d50fecc276cdee56b97cf0")


