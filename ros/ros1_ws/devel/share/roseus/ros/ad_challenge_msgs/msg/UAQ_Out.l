;; Auto-generated. Do not edit!


(when (boundp 'ad_challenge_msgs::UAQ_Out)
  (if (not (find-package "AD_CHALLENGE_MSGS"))
    (make-package "AD_CHALLENGE_MSGS"))
  (shadow 'UAQ_Out (find-package "AD_CHALLENGE_MSGS")))
(unless (find-package "AD_CHALLENGE_MSGS::UAQ_OUT")
  (make-package "AD_CHALLENGE_MSGS::UAQ_OUT"))

(in-package "ROS")
;;//! \htmlinclude UAQ_Out.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ad_challenge_msgs::UAQ_Out
  :super ros::object
  :slots (_header _time _cycleno _synthdelay _Car_Roll _Car_Pitch _Car_Yaw _Car_vx _Car_vy _Car_vz _Car_RollVel _Car_PitchVel _Car_YawVel _Car_ax _Car_ay _Car_az _Car_RollAcc _Car_PitchAcc _Car_YawAcc _Steer_WhlAng _VC_Gas _VC_Brake _VC_SelectorCtrl _Sensor_Inertial_0_Vel_B_x _Sensor_Inertial_0_Vel_B_y _Sensor_Inertial_0_Vel_B_z _Sensor_Inertial_0_Omega_B_x _Sensor_Inertial_0_Omega_B_y _Sensor_Inertial_0_Omega_B_z _Sensor_Inertial_0_Acc_B_x _Sensor_Inertial_0_Acc_B_y _Sensor_Inertial_0_Acc_B_z _Sensor_Inertial_0_Aplha_B_x _Sensor_Inertial_0_Aplha_B_y _Sensor_Inertial_0_Aplha_B_z _Sensor_Inertial_1_Vel_B_x _Sensor_Inertial_1_Vel_B_y _Sensor_Inertial_1_Vel_B_z _Sensor_Inertial_1_Omega_B_x _Sensor_Inertial_1_Omega_B_y _Sensor_Inertial_1_Omega_B_z _Sensor_Inertial_1_Acc_B_x _Sensor_Inertial_1_Acc_B_y _Sensor_Inertial_1_Acc_B_z _Sensor_Inertial_1_Aplha_B_x _Sensor_Inertial_1_Aplha_B_y _Sensor_Inertial_1_Aplha_B_z ))

(defmethod ad_challenge_msgs::UAQ_Out
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) (instance ros::time :init))
    ((:cycleno __cycleno) 0)
    ((:synthdelay __synthdelay) 0.0)
    ((:Car_Roll __Car_Roll) 0.0)
    ((:Car_Pitch __Car_Pitch) 0.0)
    ((:Car_Yaw __Car_Yaw) 0.0)
    ((:Car_vx __Car_vx) 0.0)
    ((:Car_vy __Car_vy) 0.0)
    ((:Car_vz __Car_vz) 0.0)
    ((:Car_RollVel __Car_RollVel) 0.0)
    ((:Car_PitchVel __Car_PitchVel) 0.0)
    ((:Car_YawVel __Car_YawVel) 0.0)
    ((:Car_ax __Car_ax) 0.0)
    ((:Car_ay __Car_ay) 0.0)
    ((:Car_az __Car_az) 0.0)
    ((:Car_RollAcc __Car_RollAcc) 0.0)
    ((:Car_PitchAcc __Car_PitchAcc) 0.0)
    ((:Car_YawAcc __Car_YawAcc) 0.0)
    ((:Steer_WhlAng __Steer_WhlAng) 0.0)
    ((:VC_Gas __VC_Gas) 0.0)
    ((:VC_Brake __VC_Brake) 0.0)
    ((:VC_SelectorCtrl __VC_SelectorCtrl) 0.0)
    ((:Sensor_Inertial_0_Vel_B_x __Sensor_Inertial_0_Vel_B_x) 0.0)
    ((:Sensor_Inertial_0_Vel_B_y __Sensor_Inertial_0_Vel_B_y) 0.0)
    ((:Sensor_Inertial_0_Vel_B_z __Sensor_Inertial_0_Vel_B_z) 0.0)
    ((:Sensor_Inertial_0_Omega_B_x __Sensor_Inertial_0_Omega_B_x) 0.0)
    ((:Sensor_Inertial_0_Omega_B_y __Sensor_Inertial_0_Omega_B_y) 0.0)
    ((:Sensor_Inertial_0_Omega_B_z __Sensor_Inertial_0_Omega_B_z) 0.0)
    ((:Sensor_Inertial_0_Acc_B_x __Sensor_Inertial_0_Acc_B_x) 0.0)
    ((:Sensor_Inertial_0_Acc_B_y __Sensor_Inertial_0_Acc_B_y) 0.0)
    ((:Sensor_Inertial_0_Acc_B_z __Sensor_Inertial_0_Acc_B_z) 0.0)
    ((:Sensor_Inertial_0_Aplha_B_x __Sensor_Inertial_0_Aplha_B_x) 0.0)
    ((:Sensor_Inertial_0_Aplha_B_y __Sensor_Inertial_0_Aplha_B_y) 0.0)
    ((:Sensor_Inertial_0_Aplha_B_z __Sensor_Inertial_0_Aplha_B_z) 0.0)
    ((:Sensor_Inertial_1_Vel_B_x __Sensor_Inertial_1_Vel_B_x) 0.0)
    ((:Sensor_Inertial_1_Vel_B_y __Sensor_Inertial_1_Vel_B_y) 0.0)
    ((:Sensor_Inertial_1_Vel_B_z __Sensor_Inertial_1_Vel_B_z) 0.0)
    ((:Sensor_Inertial_1_Omega_B_x __Sensor_Inertial_1_Omega_B_x) 0.0)
    ((:Sensor_Inertial_1_Omega_B_y __Sensor_Inertial_1_Omega_B_y) 0.0)
    ((:Sensor_Inertial_1_Omega_B_z __Sensor_Inertial_1_Omega_B_z) 0.0)
    ((:Sensor_Inertial_1_Acc_B_x __Sensor_Inertial_1_Acc_B_x) 0.0)
    ((:Sensor_Inertial_1_Acc_B_y __Sensor_Inertial_1_Acc_B_y) 0.0)
    ((:Sensor_Inertial_1_Acc_B_z __Sensor_Inertial_1_Acc_B_z) 0.0)
    ((:Sensor_Inertial_1_Aplha_B_x __Sensor_Inertial_1_Aplha_B_x) 0.0)
    ((:Sensor_Inertial_1_Aplha_B_y __Sensor_Inertial_1_Aplha_B_y) 0.0)
    ((:Sensor_Inertial_1_Aplha_B_z __Sensor_Inertial_1_Aplha_B_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time __time)
   (setq _cycleno (round __cycleno))
   (setq _synthdelay (float __synthdelay))
   (setq _Car_Roll (float __Car_Roll))
   (setq _Car_Pitch (float __Car_Pitch))
   (setq _Car_Yaw (float __Car_Yaw))
   (setq _Car_vx (float __Car_vx))
   (setq _Car_vy (float __Car_vy))
   (setq _Car_vz (float __Car_vz))
   (setq _Car_RollVel (float __Car_RollVel))
   (setq _Car_PitchVel (float __Car_PitchVel))
   (setq _Car_YawVel (float __Car_YawVel))
   (setq _Car_ax (float __Car_ax))
   (setq _Car_ay (float __Car_ay))
   (setq _Car_az (float __Car_az))
   (setq _Car_RollAcc (float __Car_RollAcc))
   (setq _Car_PitchAcc (float __Car_PitchAcc))
   (setq _Car_YawAcc (float __Car_YawAcc))
   (setq _Steer_WhlAng (float __Steer_WhlAng))
   (setq _VC_Gas (float __VC_Gas))
   (setq _VC_Brake (float __VC_Brake))
   (setq _VC_SelectorCtrl (float __VC_SelectorCtrl))
   (setq _Sensor_Inertial_0_Vel_B_x (float __Sensor_Inertial_0_Vel_B_x))
   (setq _Sensor_Inertial_0_Vel_B_y (float __Sensor_Inertial_0_Vel_B_y))
   (setq _Sensor_Inertial_0_Vel_B_z (float __Sensor_Inertial_0_Vel_B_z))
   (setq _Sensor_Inertial_0_Omega_B_x (float __Sensor_Inertial_0_Omega_B_x))
   (setq _Sensor_Inertial_0_Omega_B_y (float __Sensor_Inertial_0_Omega_B_y))
   (setq _Sensor_Inertial_0_Omega_B_z (float __Sensor_Inertial_0_Omega_B_z))
   (setq _Sensor_Inertial_0_Acc_B_x (float __Sensor_Inertial_0_Acc_B_x))
   (setq _Sensor_Inertial_0_Acc_B_y (float __Sensor_Inertial_0_Acc_B_y))
   (setq _Sensor_Inertial_0_Acc_B_z (float __Sensor_Inertial_0_Acc_B_z))
   (setq _Sensor_Inertial_0_Aplha_B_x (float __Sensor_Inertial_0_Aplha_B_x))
   (setq _Sensor_Inertial_0_Aplha_B_y (float __Sensor_Inertial_0_Aplha_B_y))
   (setq _Sensor_Inertial_0_Aplha_B_z (float __Sensor_Inertial_0_Aplha_B_z))
   (setq _Sensor_Inertial_1_Vel_B_x (float __Sensor_Inertial_1_Vel_B_x))
   (setq _Sensor_Inertial_1_Vel_B_y (float __Sensor_Inertial_1_Vel_B_y))
   (setq _Sensor_Inertial_1_Vel_B_z (float __Sensor_Inertial_1_Vel_B_z))
   (setq _Sensor_Inertial_1_Omega_B_x (float __Sensor_Inertial_1_Omega_B_x))
   (setq _Sensor_Inertial_1_Omega_B_y (float __Sensor_Inertial_1_Omega_B_y))
   (setq _Sensor_Inertial_1_Omega_B_z (float __Sensor_Inertial_1_Omega_B_z))
   (setq _Sensor_Inertial_1_Acc_B_x (float __Sensor_Inertial_1_Acc_B_x))
   (setq _Sensor_Inertial_1_Acc_B_y (float __Sensor_Inertial_1_Acc_B_y))
   (setq _Sensor_Inertial_1_Acc_B_z (float __Sensor_Inertial_1_Acc_B_z))
   (setq _Sensor_Inertial_1_Aplha_B_x (float __Sensor_Inertial_1_Aplha_B_x))
   (setq _Sensor_Inertial_1_Aplha_B_y (float __Sensor_Inertial_1_Aplha_B_y))
   (setq _Sensor_Inertial_1_Aplha_B_z (float __Sensor_Inertial_1_Aplha_B_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:cycleno
   (&optional __cycleno)
   (if __cycleno (setq _cycleno __cycleno)) _cycleno)
  (:synthdelay
   (&optional __synthdelay)
   (if __synthdelay (setq _synthdelay __synthdelay)) _synthdelay)
  (:Car_Roll
   (&optional __Car_Roll)
   (if __Car_Roll (setq _Car_Roll __Car_Roll)) _Car_Roll)
  (:Car_Pitch
   (&optional __Car_Pitch)
   (if __Car_Pitch (setq _Car_Pitch __Car_Pitch)) _Car_Pitch)
  (:Car_Yaw
   (&optional __Car_Yaw)
   (if __Car_Yaw (setq _Car_Yaw __Car_Yaw)) _Car_Yaw)
  (:Car_vx
   (&optional __Car_vx)
   (if __Car_vx (setq _Car_vx __Car_vx)) _Car_vx)
  (:Car_vy
   (&optional __Car_vy)
   (if __Car_vy (setq _Car_vy __Car_vy)) _Car_vy)
  (:Car_vz
   (&optional __Car_vz)
   (if __Car_vz (setq _Car_vz __Car_vz)) _Car_vz)
  (:Car_RollVel
   (&optional __Car_RollVel)
   (if __Car_RollVel (setq _Car_RollVel __Car_RollVel)) _Car_RollVel)
  (:Car_PitchVel
   (&optional __Car_PitchVel)
   (if __Car_PitchVel (setq _Car_PitchVel __Car_PitchVel)) _Car_PitchVel)
  (:Car_YawVel
   (&optional __Car_YawVel)
   (if __Car_YawVel (setq _Car_YawVel __Car_YawVel)) _Car_YawVel)
  (:Car_ax
   (&optional __Car_ax)
   (if __Car_ax (setq _Car_ax __Car_ax)) _Car_ax)
  (:Car_ay
   (&optional __Car_ay)
   (if __Car_ay (setq _Car_ay __Car_ay)) _Car_ay)
  (:Car_az
   (&optional __Car_az)
   (if __Car_az (setq _Car_az __Car_az)) _Car_az)
  (:Car_RollAcc
   (&optional __Car_RollAcc)
   (if __Car_RollAcc (setq _Car_RollAcc __Car_RollAcc)) _Car_RollAcc)
  (:Car_PitchAcc
   (&optional __Car_PitchAcc)
   (if __Car_PitchAcc (setq _Car_PitchAcc __Car_PitchAcc)) _Car_PitchAcc)
  (:Car_YawAcc
   (&optional __Car_YawAcc)
   (if __Car_YawAcc (setq _Car_YawAcc __Car_YawAcc)) _Car_YawAcc)
  (:Steer_WhlAng
   (&optional __Steer_WhlAng)
   (if __Steer_WhlAng (setq _Steer_WhlAng __Steer_WhlAng)) _Steer_WhlAng)
  (:VC_Gas
   (&optional __VC_Gas)
   (if __VC_Gas (setq _VC_Gas __VC_Gas)) _VC_Gas)
  (:VC_Brake
   (&optional __VC_Brake)
   (if __VC_Brake (setq _VC_Brake __VC_Brake)) _VC_Brake)
  (:VC_SelectorCtrl
   (&optional __VC_SelectorCtrl)
   (if __VC_SelectorCtrl (setq _VC_SelectorCtrl __VC_SelectorCtrl)) _VC_SelectorCtrl)
  (:Sensor_Inertial_0_Vel_B_x
   (&optional __Sensor_Inertial_0_Vel_B_x)
   (if __Sensor_Inertial_0_Vel_B_x (setq _Sensor_Inertial_0_Vel_B_x __Sensor_Inertial_0_Vel_B_x)) _Sensor_Inertial_0_Vel_B_x)
  (:Sensor_Inertial_0_Vel_B_y
   (&optional __Sensor_Inertial_0_Vel_B_y)
   (if __Sensor_Inertial_0_Vel_B_y (setq _Sensor_Inertial_0_Vel_B_y __Sensor_Inertial_0_Vel_B_y)) _Sensor_Inertial_0_Vel_B_y)
  (:Sensor_Inertial_0_Vel_B_z
   (&optional __Sensor_Inertial_0_Vel_B_z)
   (if __Sensor_Inertial_0_Vel_B_z (setq _Sensor_Inertial_0_Vel_B_z __Sensor_Inertial_0_Vel_B_z)) _Sensor_Inertial_0_Vel_B_z)
  (:Sensor_Inertial_0_Omega_B_x
   (&optional __Sensor_Inertial_0_Omega_B_x)
   (if __Sensor_Inertial_0_Omega_B_x (setq _Sensor_Inertial_0_Omega_B_x __Sensor_Inertial_0_Omega_B_x)) _Sensor_Inertial_0_Omega_B_x)
  (:Sensor_Inertial_0_Omega_B_y
   (&optional __Sensor_Inertial_0_Omega_B_y)
   (if __Sensor_Inertial_0_Omega_B_y (setq _Sensor_Inertial_0_Omega_B_y __Sensor_Inertial_0_Omega_B_y)) _Sensor_Inertial_0_Omega_B_y)
  (:Sensor_Inertial_0_Omega_B_z
   (&optional __Sensor_Inertial_0_Omega_B_z)
   (if __Sensor_Inertial_0_Omega_B_z (setq _Sensor_Inertial_0_Omega_B_z __Sensor_Inertial_0_Omega_B_z)) _Sensor_Inertial_0_Omega_B_z)
  (:Sensor_Inertial_0_Acc_B_x
   (&optional __Sensor_Inertial_0_Acc_B_x)
   (if __Sensor_Inertial_0_Acc_B_x (setq _Sensor_Inertial_0_Acc_B_x __Sensor_Inertial_0_Acc_B_x)) _Sensor_Inertial_0_Acc_B_x)
  (:Sensor_Inertial_0_Acc_B_y
   (&optional __Sensor_Inertial_0_Acc_B_y)
   (if __Sensor_Inertial_0_Acc_B_y (setq _Sensor_Inertial_0_Acc_B_y __Sensor_Inertial_0_Acc_B_y)) _Sensor_Inertial_0_Acc_B_y)
  (:Sensor_Inertial_0_Acc_B_z
   (&optional __Sensor_Inertial_0_Acc_B_z)
   (if __Sensor_Inertial_0_Acc_B_z (setq _Sensor_Inertial_0_Acc_B_z __Sensor_Inertial_0_Acc_B_z)) _Sensor_Inertial_0_Acc_B_z)
  (:Sensor_Inertial_0_Aplha_B_x
   (&optional __Sensor_Inertial_0_Aplha_B_x)
   (if __Sensor_Inertial_0_Aplha_B_x (setq _Sensor_Inertial_0_Aplha_B_x __Sensor_Inertial_0_Aplha_B_x)) _Sensor_Inertial_0_Aplha_B_x)
  (:Sensor_Inertial_0_Aplha_B_y
   (&optional __Sensor_Inertial_0_Aplha_B_y)
   (if __Sensor_Inertial_0_Aplha_B_y (setq _Sensor_Inertial_0_Aplha_B_y __Sensor_Inertial_0_Aplha_B_y)) _Sensor_Inertial_0_Aplha_B_y)
  (:Sensor_Inertial_0_Aplha_B_z
   (&optional __Sensor_Inertial_0_Aplha_B_z)
   (if __Sensor_Inertial_0_Aplha_B_z (setq _Sensor_Inertial_0_Aplha_B_z __Sensor_Inertial_0_Aplha_B_z)) _Sensor_Inertial_0_Aplha_B_z)
  (:Sensor_Inertial_1_Vel_B_x
   (&optional __Sensor_Inertial_1_Vel_B_x)
   (if __Sensor_Inertial_1_Vel_B_x (setq _Sensor_Inertial_1_Vel_B_x __Sensor_Inertial_1_Vel_B_x)) _Sensor_Inertial_1_Vel_B_x)
  (:Sensor_Inertial_1_Vel_B_y
   (&optional __Sensor_Inertial_1_Vel_B_y)
   (if __Sensor_Inertial_1_Vel_B_y (setq _Sensor_Inertial_1_Vel_B_y __Sensor_Inertial_1_Vel_B_y)) _Sensor_Inertial_1_Vel_B_y)
  (:Sensor_Inertial_1_Vel_B_z
   (&optional __Sensor_Inertial_1_Vel_B_z)
   (if __Sensor_Inertial_1_Vel_B_z (setq _Sensor_Inertial_1_Vel_B_z __Sensor_Inertial_1_Vel_B_z)) _Sensor_Inertial_1_Vel_B_z)
  (:Sensor_Inertial_1_Omega_B_x
   (&optional __Sensor_Inertial_1_Omega_B_x)
   (if __Sensor_Inertial_1_Omega_B_x (setq _Sensor_Inertial_1_Omega_B_x __Sensor_Inertial_1_Omega_B_x)) _Sensor_Inertial_1_Omega_B_x)
  (:Sensor_Inertial_1_Omega_B_y
   (&optional __Sensor_Inertial_1_Omega_B_y)
   (if __Sensor_Inertial_1_Omega_B_y (setq _Sensor_Inertial_1_Omega_B_y __Sensor_Inertial_1_Omega_B_y)) _Sensor_Inertial_1_Omega_B_y)
  (:Sensor_Inertial_1_Omega_B_z
   (&optional __Sensor_Inertial_1_Omega_B_z)
   (if __Sensor_Inertial_1_Omega_B_z (setq _Sensor_Inertial_1_Omega_B_z __Sensor_Inertial_1_Omega_B_z)) _Sensor_Inertial_1_Omega_B_z)
  (:Sensor_Inertial_1_Acc_B_x
   (&optional __Sensor_Inertial_1_Acc_B_x)
   (if __Sensor_Inertial_1_Acc_B_x (setq _Sensor_Inertial_1_Acc_B_x __Sensor_Inertial_1_Acc_B_x)) _Sensor_Inertial_1_Acc_B_x)
  (:Sensor_Inertial_1_Acc_B_y
   (&optional __Sensor_Inertial_1_Acc_B_y)
   (if __Sensor_Inertial_1_Acc_B_y (setq _Sensor_Inertial_1_Acc_B_y __Sensor_Inertial_1_Acc_B_y)) _Sensor_Inertial_1_Acc_B_y)
  (:Sensor_Inertial_1_Acc_B_z
   (&optional __Sensor_Inertial_1_Acc_B_z)
   (if __Sensor_Inertial_1_Acc_B_z (setq _Sensor_Inertial_1_Acc_B_z __Sensor_Inertial_1_Acc_B_z)) _Sensor_Inertial_1_Acc_B_z)
  (:Sensor_Inertial_1_Aplha_B_x
   (&optional __Sensor_Inertial_1_Aplha_B_x)
   (if __Sensor_Inertial_1_Aplha_B_x (setq _Sensor_Inertial_1_Aplha_B_x __Sensor_Inertial_1_Aplha_B_x)) _Sensor_Inertial_1_Aplha_B_x)
  (:Sensor_Inertial_1_Aplha_B_y
   (&optional __Sensor_Inertial_1_Aplha_B_y)
   (if __Sensor_Inertial_1_Aplha_B_y (setq _Sensor_Inertial_1_Aplha_B_y __Sensor_Inertial_1_Aplha_B_y)) _Sensor_Inertial_1_Aplha_B_y)
  (:Sensor_Inertial_1_Aplha_B_z
   (&optional __Sensor_Inertial_1_Aplha_B_z)
   (if __Sensor_Inertial_1_Aplha_B_z (setq _Sensor_Inertial_1_Aplha_B_z __Sensor_Inertial_1_Aplha_B_z)) _Sensor_Inertial_1_Aplha_B_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _time
    8
    ;; int64 _cycleno
    8
    ;; float64 _synthdelay
    8
    ;; float64 _Car_Roll
    8
    ;; float64 _Car_Pitch
    8
    ;; float64 _Car_Yaw
    8
    ;; float64 _Car_vx
    8
    ;; float64 _Car_vy
    8
    ;; float64 _Car_vz
    8
    ;; float64 _Car_RollVel
    8
    ;; float64 _Car_PitchVel
    8
    ;; float64 _Car_YawVel
    8
    ;; float64 _Car_ax
    8
    ;; float64 _Car_ay
    8
    ;; float64 _Car_az
    8
    ;; float64 _Car_RollAcc
    8
    ;; float64 _Car_PitchAcc
    8
    ;; float64 _Car_YawAcc
    8
    ;; float64 _Steer_WhlAng
    8
    ;; float64 _VC_Gas
    8
    ;; float64 _VC_Brake
    8
    ;; float64 _VC_SelectorCtrl
    8
    ;; float64 _Sensor_Inertial_0_Vel_B_x
    8
    ;; float64 _Sensor_Inertial_0_Vel_B_y
    8
    ;; float64 _Sensor_Inertial_0_Vel_B_z
    8
    ;; float64 _Sensor_Inertial_0_Omega_B_x
    8
    ;; float64 _Sensor_Inertial_0_Omega_B_y
    8
    ;; float64 _Sensor_Inertial_0_Omega_B_z
    8
    ;; float64 _Sensor_Inertial_0_Acc_B_x
    8
    ;; float64 _Sensor_Inertial_0_Acc_B_y
    8
    ;; float64 _Sensor_Inertial_0_Acc_B_z
    8
    ;; float64 _Sensor_Inertial_0_Aplha_B_x
    8
    ;; float64 _Sensor_Inertial_0_Aplha_B_y
    8
    ;; float64 _Sensor_Inertial_0_Aplha_B_z
    8
    ;; float64 _Sensor_Inertial_1_Vel_B_x
    8
    ;; float64 _Sensor_Inertial_1_Vel_B_y
    8
    ;; float64 _Sensor_Inertial_1_Vel_B_z
    8
    ;; float64 _Sensor_Inertial_1_Omega_B_x
    8
    ;; float64 _Sensor_Inertial_1_Omega_B_y
    8
    ;; float64 _Sensor_Inertial_1_Omega_B_z
    8
    ;; float64 _Sensor_Inertial_1_Acc_B_x
    8
    ;; float64 _Sensor_Inertial_1_Acc_B_y
    8
    ;; float64 _Sensor_Inertial_1_Acc_B_z
    8
    ;; float64 _Sensor_Inertial_1_Aplha_B_x
    8
    ;; float64 _Sensor_Inertial_1_Aplha_B_y
    8
    ;; float64 _Sensor_Inertial_1_Aplha_B_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; int64 _cycleno
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cycleno (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cycleno) (= (length (_cycleno . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cycleno . bv) 0) 0) s)
              (write-long (ash (elt (_cycleno . bv) 1) -1) s))
             ((and (class _cycleno) (= (length (_cycleno . bv)) 1)) ;; big1
              (write-long (elt (_cycleno . bv) 0) s)
              (write-long (if (>= _cycleno 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cycleno s)(write-long (if (>= _cycleno 0) 0 #xffffffff) s)))
     ;; float64 _synthdelay
       (sys::poke _synthdelay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_Roll
       (sys::poke _Car_Roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_Pitch
       (sys::poke _Car_Pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_Yaw
       (sys::poke _Car_Yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_vx
       (sys::poke _Car_vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_vy
       (sys::poke _Car_vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_vz
       (sys::poke _Car_vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_RollVel
       (sys::poke _Car_RollVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_PitchVel
       (sys::poke _Car_PitchVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_YawVel
       (sys::poke _Car_YawVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_ax
       (sys::poke _Car_ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_ay
       (sys::poke _Car_ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_az
       (sys::poke _Car_az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_RollAcc
       (sys::poke _Car_RollAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_PitchAcc
       (sys::poke _Car_PitchAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Car_YawAcc
       (sys::poke _Car_YawAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Steer_WhlAng
       (sys::poke _Steer_WhlAng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VC_Gas
       (sys::poke _VC_Gas (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VC_Brake
       (sys::poke _VC_Brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VC_SelectorCtrl
       (sys::poke _VC_SelectorCtrl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Vel_B_x
       (sys::poke _Sensor_Inertial_0_Vel_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Vel_B_y
       (sys::poke _Sensor_Inertial_0_Vel_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Vel_B_z
       (sys::poke _Sensor_Inertial_0_Vel_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Omega_B_x
       (sys::poke _Sensor_Inertial_0_Omega_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Omega_B_y
       (sys::poke _Sensor_Inertial_0_Omega_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Omega_B_z
       (sys::poke _Sensor_Inertial_0_Omega_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Acc_B_x
       (sys::poke _Sensor_Inertial_0_Acc_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Acc_B_y
       (sys::poke _Sensor_Inertial_0_Acc_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Acc_B_z
       (sys::poke _Sensor_Inertial_0_Acc_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Aplha_B_x
       (sys::poke _Sensor_Inertial_0_Aplha_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Aplha_B_y
       (sys::poke _Sensor_Inertial_0_Aplha_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_0_Aplha_B_z
       (sys::poke _Sensor_Inertial_0_Aplha_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Vel_B_x
       (sys::poke _Sensor_Inertial_1_Vel_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Vel_B_y
       (sys::poke _Sensor_Inertial_1_Vel_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Vel_B_z
       (sys::poke _Sensor_Inertial_1_Vel_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Omega_B_x
       (sys::poke _Sensor_Inertial_1_Omega_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Omega_B_y
       (sys::poke _Sensor_Inertial_1_Omega_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Omega_B_z
       (sys::poke _Sensor_Inertial_1_Omega_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Acc_B_x
       (sys::poke _Sensor_Inertial_1_Acc_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Acc_B_y
       (sys::poke _Sensor_Inertial_1_Acc_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Acc_B_z
       (sys::poke _Sensor_Inertial_1_Acc_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Aplha_B_x
       (sys::poke _Sensor_Inertial_1_Aplha_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Aplha_B_y
       (sys::poke _Sensor_Inertial_1_Aplha_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Sensor_Inertial_1_Aplha_B_z
       (sys::poke _Sensor_Inertial_1_Aplha_B_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _cycleno
#+(or :alpha :irix6 :x86_64)
      (setf _cycleno (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cycleno (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _synthdelay
     (setq _synthdelay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_Roll
     (setq _Car_Roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_Pitch
     (setq _Car_Pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_Yaw
     (setq _Car_Yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_vx
     (setq _Car_vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_vy
     (setq _Car_vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_vz
     (setq _Car_vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_RollVel
     (setq _Car_RollVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_PitchVel
     (setq _Car_PitchVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_YawVel
     (setq _Car_YawVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_ax
     (setq _Car_ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_ay
     (setq _Car_ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_az
     (setq _Car_az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_RollAcc
     (setq _Car_RollAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_PitchAcc
     (setq _Car_PitchAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Car_YawAcc
     (setq _Car_YawAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Steer_WhlAng
     (setq _Steer_WhlAng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VC_Gas
     (setq _VC_Gas (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VC_Brake
     (setq _VC_Brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VC_SelectorCtrl
     (setq _VC_SelectorCtrl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Vel_B_x
     (setq _Sensor_Inertial_0_Vel_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Vel_B_y
     (setq _Sensor_Inertial_0_Vel_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Vel_B_z
     (setq _Sensor_Inertial_0_Vel_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Omega_B_x
     (setq _Sensor_Inertial_0_Omega_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Omega_B_y
     (setq _Sensor_Inertial_0_Omega_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Omega_B_z
     (setq _Sensor_Inertial_0_Omega_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Acc_B_x
     (setq _Sensor_Inertial_0_Acc_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Acc_B_y
     (setq _Sensor_Inertial_0_Acc_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Acc_B_z
     (setq _Sensor_Inertial_0_Acc_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Aplha_B_x
     (setq _Sensor_Inertial_0_Aplha_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Aplha_B_y
     (setq _Sensor_Inertial_0_Aplha_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_0_Aplha_B_z
     (setq _Sensor_Inertial_0_Aplha_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Vel_B_x
     (setq _Sensor_Inertial_1_Vel_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Vel_B_y
     (setq _Sensor_Inertial_1_Vel_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Vel_B_z
     (setq _Sensor_Inertial_1_Vel_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Omega_B_x
     (setq _Sensor_Inertial_1_Omega_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Omega_B_y
     (setq _Sensor_Inertial_1_Omega_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Omega_B_z
     (setq _Sensor_Inertial_1_Omega_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Acc_B_x
     (setq _Sensor_Inertial_1_Acc_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Acc_B_y
     (setq _Sensor_Inertial_1_Acc_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Acc_B_z
     (setq _Sensor_Inertial_1_Acc_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Aplha_B_x
     (setq _Sensor_Inertial_1_Aplha_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Aplha_B_y
     (setq _Sensor_Inertial_1_Aplha_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Sensor_Inertial_1_Aplha_B_z
     (setq _Sensor_Inertial_1_Aplha_B_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ad_challenge_msgs::UAQ_Out :md5sum-) "10e861f2efe1d78792349327441cc038")
(setf (get ad_challenge_msgs::UAQ_Out :datatype-) "ad_challenge_msgs/UAQ_Out")
(setf (get ad_challenge_msgs::UAQ_Out :definition-)
      "#
# Message from CarMaker ROS Node to external ROS Node
#

# General
Header  header                                 # General ROS Header (optional)
time    time                                   # ROS time when message was sent (optional)
int64   cycleno                                # Cycle number since simulation start (optional)
float64 synthdelay                             # Synthetic delay to check synchronization (optional)

float64 Car_Roll
float64 Car_Pitch
float64 Car_Yaw
float64 Car_vx
float64 Car_vy
float64 Car_vz
float64 Car_RollVel
float64 Car_PitchVel
float64 Car_YawVel
float64 Car_ax
float64 Car_ay
float64 Car_az
float64 Car_RollAcc
float64 Car_PitchAcc
float64 Car_YawAcc
float64 Steer_WhlAng
float64 VC_Gas
float64 VC_Brake
float64 VC_SelectorCtrl
float64 Sensor_Inertial_0_Vel_B_x
float64 Sensor_Inertial_0_Vel_B_y
float64 Sensor_Inertial_0_Vel_B_z
float64 Sensor_Inertial_0_Omega_B_x
float64 Sensor_Inertial_0_Omega_B_y
float64 Sensor_Inertial_0_Omega_B_z
float64 Sensor_Inertial_0_Acc_B_x
float64 Sensor_Inertial_0_Acc_B_y
float64 Sensor_Inertial_0_Acc_B_z
float64 Sensor_Inertial_0_Aplha_B_x
float64 Sensor_Inertial_0_Aplha_B_y
float64 Sensor_Inertial_0_Aplha_B_z
float64 Sensor_Inertial_1_Vel_B_x
float64 Sensor_Inertial_1_Vel_B_y
float64 Sensor_Inertial_1_Vel_B_z
float64 Sensor_Inertial_1_Omega_B_x
float64 Sensor_Inertial_1_Omega_B_y
float64 Sensor_Inertial_1_Omega_B_z
float64 Sensor_Inertial_1_Acc_B_x
float64 Sensor_Inertial_1_Acc_B_y
float64 Sensor_Inertial_1_Acc_B_z
float64 Sensor_Inertial_1_Aplha_B_x
float64 Sensor_Inertial_1_Aplha_B_y
float64 Sensor_Inertial_1_Aplha_B_z

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



(provide :ad_challenge_msgs/UAQ_Out "10e861f2efe1d78792349327441cc038")


