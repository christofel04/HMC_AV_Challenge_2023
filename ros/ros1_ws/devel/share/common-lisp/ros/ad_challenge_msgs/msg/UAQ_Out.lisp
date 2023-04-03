; Auto-generated. Do not edit!


(cl:in-package ad_challenge_msgs-msg)


;//! \htmlinclude UAQ_Out.msg.html

(cl:defclass <UAQ_Out> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (cycleno
    :reader cycleno
    :initarg :cycleno
    :type cl:integer
    :initform 0)
   (synthdelay
    :reader synthdelay
    :initarg :synthdelay
    :type cl:float
    :initform 0.0)
   (Car_Roll
    :reader Car_Roll
    :initarg :Car_Roll
    :type cl:float
    :initform 0.0)
   (Car_Pitch
    :reader Car_Pitch
    :initarg :Car_Pitch
    :type cl:float
    :initform 0.0)
   (Car_Yaw
    :reader Car_Yaw
    :initarg :Car_Yaw
    :type cl:float
    :initform 0.0)
   (Car_vx
    :reader Car_vx
    :initarg :Car_vx
    :type cl:float
    :initform 0.0)
   (Car_vy
    :reader Car_vy
    :initarg :Car_vy
    :type cl:float
    :initform 0.0)
   (Car_vz
    :reader Car_vz
    :initarg :Car_vz
    :type cl:float
    :initform 0.0)
   (Car_RollVel
    :reader Car_RollVel
    :initarg :Car_RollVel
    :type cl:float
    :initform 0.0)
   (Car_PitchVel
    :reader Car_PitchVel
    :initarg :Car_PitchVel
    :type cl:float
    :initform 0.0)
   (Car_YawVel
    :reader Car_YawVel
    :initarg :Car_YawVel
    :type cl:float
    :initform 0.0)
   (Car_ax
    :reader Car_ax
    :initarg :Car_ax
    :type cl:float
    :initform 0.0)
   (Car_ay
    :reader Car_ay
    :initarg :Car_ay
    :type cl:float
    :initform 0.0)
   (Car_az
    :reader Car_az
    :initarg :Car_az
    :type cl:float
    :initform 0.0)
   (Car_RollAcc
    :reader Car_RollAcc
    :initarg :Car_RollAcc
    :type cl:float
    :initform 0.0)
   (Car_PitchAcc
    :reader Car_PitchAcc
    :initarg :Car_PitchAcc
    :type cl:float
    :initform 0.0)
   (Car_YawAcc
    :reader Car_YawAcc
    :initarg :Car_YawAcc
    :type cl:float
    :initform 0.0)
   (Steer_WhlAng
    :reader Steer_WhlAng
    :initarg :Steer_WhlAng
    :type cl:float
    :initform 0.0)
   (VC_Gas
    :reader VC_Gas
    :initarg :VC_Gas
    :type cl:float
    :initform 0.0)
   (VC_Brake
    :reader VC_Brake
    :initarg :VC_Brake
    :type cl:float
    :initform 0.0)
   (VC_SelectorCtrl
    :reader VC_SelectorCtrl
    :initarg :VC_SelectorCtrl
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Vel_B_x
    :reader Sensor_Inertial_0_Vel_B_x
    :initarg :Sensor_Inertial_0_Vel_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Vel_B_y
    :reader Sensor_Inertial_0_Vel_B_y
    :initarg :Sensor_Inertial_0_Vel_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Vel_B_z
    :reader Sensor_Inertial_0_Vel_B_z
    :initarg :Sensor_Inertial_0_Vel_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Omega_B_x
    :reader Sensor_Inertial_0_Omega_B_x
    :initarg :Sensor_Inertial_0_Omega_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Omega_B_y
    :reader Sensor_Inertial_0_Omega_B_y
    :initarg :Sensor_Inertial_0_Omega_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Omega_B_z
    :reader Sensor_Inertial_0_Omega_B_z
    :initarg :Sensor_Inertial_0_Omega_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Acc_B_x
    :reader Sensor_Inertial_0_Acc_B_x
    :initarg :Sensor_Inertial_0_Acc_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Acc_B_y
    :reader Sensor_Inertial_0_Acc_B_y
    :initarg :Sensor_Inertial_0_Acc_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Acc_B_z
    :reader Sensor_Inertial_0_Acc_B_z
    :initarg :Sensor_Inertial_0_Acc_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Aplha_B_x
    :reader Sensor_Inertial_0_Aplha_B_x
    :initarg :Sensor_Inertial_0_Aplha_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Aplha_B_y
    :reader Sensor_Inertial_0_Aplha_B_y
    :initarg :Sensor_Inertial_0_Aplha_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_0_Aplha_B_z
    :reader Sensor_Inertial_0_Aplha_B_z
    :initarg :Sensor_Inertial_0_Aplha_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Vel_B_x
    :reader Sensor_Inertial_1_Vel_B_x
    :initarg :Sensor_Inertial_1_Vel_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Vel_B_y
    :reader Sensor_Inertial_1_Vel_B_y
    :initarg :Sensor_Inertial_1_Vel_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Vel_B_z
    :reader Sensor_Inertial_1_Vel_B_z
    :initarg :Sensor_Inertial_1_Vel_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Omega_B_x
    :reader Sensor_Inertial_1_Omega_B_x
    :initarg :Sensor_Inertial_1_Omega_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Omega_B_y
    :reader Sensor_Inertial_1_Omega_B_y
    :initarg :Sensor_Inertial_1_Omega_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Omega_B_z
    :reader Sensor_Inertial_1_Omega_B_z
    :initarg :Sensor_Inertial_1_Omega_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Acc_B_x
    :reader Sensor_Inertial_1_Acc_B_x
    :initarg :Sensor_Inertial_1_Acc_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Acc_B_y
    :reader Sensor_Inertial_1_Acc_B_y
    :initarg :Sensor_Inertial_1_Acc_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Acc_B_z
    :reader Sensor_Inertial_1_Acc_B_z
    :initarg :Sensor_Inertial_1_Acc_B_z
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Aplha_B_x
    :reader Sensor_Inertial_1_Aplha_B_x
    :initarg :Sensor_Inertial_1_Aplha_B_x
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Aplha_B_y
    :reader Sensor_Inertial_1_Aplha_B_y
    :initarg :Sensor_Inertial_1_Aplha_B_y
    :type cl:float
    :initform 0.0)
   (Sensor_Inertial_1_Aplha_B_z
    :reader Sensor_Inertial_1_Aplha_B_z
    :initarg :Sensor_Inertial_1_Aplha_B_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass UAQ_Out (<UAQ_Out>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UAQ_Out>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UAQ_Out)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ad_challenge_msgs-msg:<UAQ_Out> is deprecated: use ad_challenge_msgs-msg:UAQ_Out instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:header-val is deprecated.  Use ad_challenge_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:time-val is deprecated.  Use ad_challenge_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'cycleno-val :lambda-list '(m))
(cl:defmethod cycleno-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:cycleno-val is deprecated.  Use ad_challenge_msgs-msg:cycleno instead.")
  (cycleno m))

(cl:ensure-generic-function 'synthdelay-val :lambda-list '(m))
(cl:defmethod synthdelay-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:synthdelay-val is deprecated.  Use ad_challenge_msgs-msg:synthdelay instead.")
  (synthdelay m))

(cl:ensure-generic-function 'Car_Roll-val :lambda-list '(m))
(cl:defmethod Car_Roll-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_Roll-val is deprecated.  Use ad_challenge_msgs-msg:Car_Roll instead.")
  (Car_Roll m))

(cl:ensure-generic-function 'Car_Pitch-val :lambda-list '(m))
(cl:defmethod Car_Pitch-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_Pitch-val is deprecated.  Use ad_challenge_msgs-msg:Car_Pitch instead.")
  (Car_Pitch m))

(cl:ensure-generic-function 'Car_Yaw-val :lambda-list '(m))
(cl:defmethod Car_Yaw-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_Yaw-val is deprecated.  Use ad_challenge_msgs-msg:Car_Yaw instead.")
  (Car_Yaw m))

(cl:ensure-generic-function 'Car_vx-val :lambda-list '(m))
(cl:defmethod Car_vx-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_vx-val is deprecated.  Use ad_challenge_msgs-msg:Car_vx instead.")
  (Car_vx m))

(cl:ensure-generic-function 'Car_vy-val :lambda-list '(m))
(cl:defmethod Car_vy-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_vy-val is deprecated.  Use ad_challenge_msgs-msg:Car_vy instead.")
  (Car_vy m))

(cl:ensure-generic-function 'Car_vz-val :lambda-list '(m))
(cl:defmethod Car_vz-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_vz-val is deprecated.  Use ad_challenge_msgs-msg:Car_vz instead.")
  (Car_vz m))

(cl:ensure-generic-function 'Car_RollVel-val :lambda-list '(m))
(cl:defmethod Car_RollVel-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_RollVel-val is deprecated.  Use ad_challenge_msgs-msg:Car_RollVel instead.")
  (Car_RollVel m))

(cl:ensure-generic-function 'Car_PitchVel-val :lambda-list '(m))
(cl:defmethod Car_PitchVel-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_PitchVel-val is deprecated.  Use ad_challenge_msgs-msg:Car_PitchVel instead.")
  (Car_PitchVel m))

(cl:ensure-generic-function 'Car_YawVel-val :lambda-list '(m))
(cl:defmethod Car_YawVel-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_YawVel-val is deprecated.  Use ad_challenge_msgs-msg:Car_YawVel instead.")
  (Car_YawVel m))

(cl:ensure-generic-function 'Car_ax-val :lambda-list '(m))
(cl:defmethod Car_ax-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_ax-val is deprecated.  Use ad_challenge_msgs-msg:Car_ax instead.")
  (Car_ax m))

(cl:ensure-generic-function 'Car_ay-val :lambda-list '(m))
(cl:defmethod Car_ay-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_ay-val is deprecated.  Use ad_challenge_msgs-msg:Car_ay instead.")
  (Car_ay m))

(cl:ensure-generic-function 'Car_az-val :lambda-list '(m))
(cl:defmethod Car_az-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_az-val is deprecated.  Use ad_challenge_msgs-msg:Car_az instead.")
  (Car_az m))

(cl:ensure-generic-function 'Car_RollAcc-val :lambda-list '(m))
(cl:defmethod Car_RollAcc-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_RollAcc-val is deprecated.  Use ad_challenge_msgs-msg:Car_RollAcc instead.")
  (Car_RollAcc m))

(cl:ensure-generic-function 'Car_PitchAcc-val :lambda-list '(m))
(cl:defmethod Car_PitchAcc-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_PitchAcc-val is deprecated.  Use ad_challenge_msgs-msg:Car_PitchAcc instead.")
  (Car_PitchAcc m))

(cl:ensure-generic-function 'Car_YawAcc-val :lambda-list '(m))
(cl:defmethod Car_YawAcc-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Car_YawAcc-val is deprecated.  Use ad_challenge_msgs-msg:Car_YawAcc instead.")
  (Car_YawAcc m))

(cl:ensure-generic-function 'Steer_WhlAng-val :lambda-list '(m))
(cl:defmethod Steer_WhlAng-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Steer_WhlAng-val is deprecated.  Use ad_challenge_msgs-msg:Steer_WhlAng instead.")
  (Steer_WhlAng m))

(cl:ensure-generic-function 'VC_Gas-val :lambda-list '(m))
(cl:defmethod VC_Gas-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:VC_Gas-val is deprecated.  Use ad_challenge_msgs-msg:VC_Gas instead.")
  (VC_Gas m))

(cl:ensure-generic-function 'VC_Brake-val :lambda-list '(m))
(cl:defmethod VC_Brake-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:VC_Brake-val is deprecated.  Use ad_challenge_msgs-msg:VC_Brake instead.")
  (VC_Brake m))

(cl:ensure-generic-function 'VC_SelectorCtrl-val :lambda-list '(m))
(cl:defmethod VC_SelectorCtrl-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:VC_SelectorCtrl-val is deprecated.  Use ad_challenge_msgs-msg:VC_SelectorCtrl instead.")
  (VC_SelectorCtrl m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Vel_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Vel_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_x instead.")
  (Sensor_Inertial_0_Vel_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Vel_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Vel_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_y instead.")
  (Sensor_Inertial_0_Vel_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Vel_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Vel_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Vel_B_z instead.")
  (Sensor_Inertial_0_Vel_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Omega_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Omega_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_x instead.")
  (Sensor_Inertial_0_Omega_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Omega_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Omega_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_y instead.")
  (Sensor_Inertial_0_Omega_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Omega_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Omega_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Omega_B_z instead.")
  (Sensor_Inertial_0_Omega_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Acc_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Acc_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_x instead.")
  (Sensor_Inertial_0_Acc_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Acc_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Acc_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_y instead.")
  (Sensor_Inertial_0_Acc_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Acc_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Acc_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Acc_B_z instead.")
  (Sensor_Inertial_0_Acc_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Aplha_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Aplha_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_x instead.")
  (Sensor_Inertial_0_Aplha_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Aplha_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Aplha_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_y instead.")
  (Sensor_Inertial_0_Aplha_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_0_Aplha_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_0_Aplha_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_0_Aplha_B_z instead.")
  (Sensor_Inertial_0_Aplha_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Vel_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Vel_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_x instead.")
  (Sensor_Inertial_1_Vel_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Vel_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Vel_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_y instead.")
  (Sensor_Inertial_1_Vel_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Vel_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Vel_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Vel_B_z instead.")
  (Sensor_Inertial_1_Vel_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Omega_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Omega_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_x instead.")
  (Sensor_Inertial_1_Omega_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Omega_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Omega_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_y instead.")
  (Sensor_Inertial_1_Omega_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Omega_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Omega_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Omega_B_z instead.")
  (Sensor_Inertial_1_Omega_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Acc_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Acc_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_x instead.")
  (Sensor_Inertial_1_Acc_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Acc_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Acc_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_y instead.")
  (Sensor_Inertial_1_Acc_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Acc_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Acc_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Acc_B_z instead.")
  (Sensor_Inertial_1_Acc_B_z m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Aplha_B_x-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Aplha_B_x-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_x-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_x instead.")
  (Sensor_Inertial_1_Aplha_B_x m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Aplha_B_y-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Aplha_B_y-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_y-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_y instead.")
  (Sensor_Inertial_1_Aplha_B_y m))

(cl:ensure-generic-function 'Sensor_Inertial_1_Aplha_B_z-val :lambda-list '(m))
(cl:defmethod Sensor_Inertial_1_Aplha_B_z-val ((m <UAQ_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_z-val is deprecated.  Use ad_challenge_msgs-msg:Sensor_Inertial_1_Aplha_B_z instead.")
  (Sensor_Inertial_1_Aplha_B_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UAQ_Out>) ostream)
  "Serializes a message object of type '<UAQ_Out>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'cycleno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'synthdelay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_Yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_RollVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_PitchVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_YawVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_RollAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_PitchAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Car_YawAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Steer_WhlAng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VC_Gas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VC_Brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VC_SelectorCtrl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UAQ_Out>) istream)
  "Deserializes a message object of type '<UAQ_Out>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycleno) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'synthdelay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_Roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_Pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_Yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_vz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_RollVel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_PitchVel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_YawVel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_ax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_ay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_az) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_RollAcc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_PitchAcc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Car_YawAcc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Steer_WhlAng) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VC_Gas) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VC_Brake) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VC_SelectorCtrl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Vel_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Omega_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Acc_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_0_Aplha_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Vel_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Omega_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Acc_B_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Sensor_Inertial_1_Aplha_B_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UAQ_Out>)))
  "Returns string type for a message object of type '<UAQ_Out>"
  "ad_challenge_msgs/UAQ_Out")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UAQ_Out)))
  "Returns string type for a message object of type 'UAQ_Out"
  "ad_challenge_msgs/UAQ_Out")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UAQ_Out>)))
  "Returns md5sum for a message object of type '<UAQ_Out>"
  "10e861f2efe1d78792349327441cc038")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UAQ_Out)))
  "Returns md5sum for a message object of type 'UAQ_Out"
  "10e861f2efe1d78792349327441cc038")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UAQ_Out>)))
  "Returns full string definition for message of type '<UAQ_Out>"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%float64 Car_Roll~%float64 Car_Pitch~%float64 Car_Yaw~%float64 Car_vx~%float64 Car_vy~%float64 Car_vz~%float64 Car_RollVel~%float64 Car_PitchVel~%float64 Car_YawVel~%float64 Car_ax~%float64 Car_ay~%float64 Car_az~%float64 Car_RollAcc~%float64 Car_PitchAcc~%float64 Car_YawAcc~%float64 Steer_WhlAng~%float64 VC_Gas~%float64 VC_Brake~%float64 VC_SelectorCtrl~%float64 Sensor_Inertial_0_Vel_B_x~%float64 Sensor_Inertial_0_Vel_B_y~%float64 Sensor_Inertial_0_Vel_B_z~%float64 Sensor_Inertial_0_Omega_B_x~%float64 Sensor_Inertial_0_Omega_B_y~%float64 Sensor_Inertial_0_Omega_B_z~%float64 Sensor_Inertial_0_Acc_B_x~%float64 Sensor_Inertial_0_Acc_B_y~%float64 Sensor_Inertial_0_Acc_B_z~%float64 Sensor_Inertial_0_Aplha_B_x~%float64 Sensor_Inertial_0_Aplha_B_y~%float64 Sensor_Inertial_0_Aplha_B_z~%float64 Sensor_Inertial_1_Vel_B_x~%float64 Sensor_Inertial_1_Vel_B_y~%float64 Sensor_Inertial_1_Vel_B_z~%float64 Sensor_Inertial_1_Omega_B_x~%float64 Sensor_Inertial_1_Omega_B_y~%float64 Sensor_Inertial_1_Omega_B_z~%float64 Sensor_Inertial_1_Acc_B_x~%float64 Sensor_Inertial_1_Acc_B_y~%float64 Sensor_Inertial_1_Acc_B_z~%float64 Sensor_Inertial_1_Aplha_B_x~%float64 Sensor_Inertial_1_Aplha_B_y~%float64 Sensor_Inertial_1_Aplha_B_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UAQ_Out)))
  "Returns full string definition for message of type 'UAQ_Out"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%float64 Car_Roll~%float64 Car_Pitch~%float64 Car_Yaw~%float64 Car_vx~%float64 Car_vy~%float64 Car_vz~%float64 Car_RollVel~%float64 Car_PitchVel~%float64 Car_YawVel~%float64 Car_ax~%float64 Car_ay~%float64 Car_az~%float64 Car_RollAcc~%float64 Car_PitchAcc~%float64 Car_YawAcc~%float64 Steer_WhlAng~%float64 VC_Gas~%float64 VC_Brake~%float64 VC_SelectorCtrl~%float64 Sensor_Inertial_0_Vel_B_x~%float64 Sensor_Inertial_0_Vel_B_y~%float64 Sensor_Inertial_0_Vel_B_z~%float64 Sensor_Inertial_0_Omega_B_x~%float64 Sensor_Inertial_0_Omega_B_y~%float64 Sensor_Inertial_0_Omega_B_z~%float64 Sensor_Inertial_0_Acc_B_x~%float64 Sensor_Inertial_0_Acc_B_y~%float64 Sensor_Inertial_0_Acc_B_z~%float64 Sensor_Inertial_0_Aplha_B_x~%float64 Sensor_Inertial_0_Aplha_B_y~%float64 Sensor_Inertial_0_Aplha_B_z~%float64 Sensor_Inertial_1_Vel_B_x~%float64 Sensor_Inertial_1_Vel_B_y~%float64 Sensor_Inertial_1_Vel_B_z~%float64 Sensor_Inertial_1_Omega_B_x~%float64 Sensor_Inertial_1_Omega_B_y~%float64 Sensor_Inertial_1_Omega_B_z~%float64 Sensor_Inertial_1_Acc_B_x~%float64 Sensor_Inertial_1_Acc_B_y~%float64 Sensor_Inertial_1_Acc_B_z~%float64 Sensor_Inertial_1_Aplha_B_x~%float64 Sensor_Inertial_1_Aplha_B_y~%float64 Sensor_Inertial_1_Aplha_B_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UAQ_Out>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UAQ_Out>))
  "Converts a ROS message object to a list"
  (cl:list 'UAQ_Out
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':cycleno (cycleno msg))
    (cl:cons ':synthdelay (synthdelay msg))
    (cl:cons ':Car_Roll (Car_Roll msg))
    (cl:cons ':Car_Pitch (Car_Pitch msg))
    (cl:cons ':Car_Yaw (Car_Yaw msg))
    (cl:cons ':Car_vx (Car_vx msg))
    (cl:cons ':Car_vy (Car_vy msg))
    (cl:cons ':Car_vz (Car_vz msg))
    (cl:cons ':Car_RollVel (Car_RollVel msg))
    (cl:cons ':Car_PitchVel (Car_PitchVel msg))
    (cl:cons ':Car_YawVel (Car_YawVel msg))
    (cl:cons ':Car_ax (Car_ax msg))
    (cl:cons ':Car_ay (Car_ay msg))
    (cl:cons ':Car_az (Car_az msg))
    (cl:cons ':Car_RollAcc (Car_RollAcc msg))
    (cl:cons ':Car_PitchAcc (Car_PitchAcc msg))
    (cl:cons ':Car_YawAcc (Car_YawAcc msg))
    (cl:cons ':Steer_WhlAng (Steer_WhlAng msg))
    (cl:cons ':VC_Gas (VC_Gas msg))
    (cl:cons ':VC_Brake (VC_Brake msg))
    (cl:cons ':VC_SelectorCtrl (VC_SelectorCtrl msg))
    (cl:cons ':Sensor_Inertial_0_Vel_B_x (Sensor_Inertial_0_Vel_B_x msg))
    (cl:cons ':Sensor_Inertial_0_Vel_B_y (Sensor_Inertial_0_Vel_B_y msg))
    (cl:cons ':Sensor_Inertial_0_Vel_B_z (Sensor_Inertial_0_Vel_B_z msg))
    (cl:cons ':Sensor_Inertial_0_Omega_B_x (Sensor_Inertial_0_Omega_B_x msg))
    (cl:cons ':Sensor_Inertial_0_Omega_B_y (Sensor_Inertial_0_Omega_B_y msg))
    (cl:cons ':Sensor_Inertial_0_Omega_B_z (Sensor_Inertial_0_Omega_B_z msg))
    (cl:cons ':Sensor_Inertial_0_Acc_B_x (Sensor_Inertial_0_Acc_B_x msg))
    (cl:cons ':Sensor_Inertial_0_Acc_B_y (Sensor_Inertial_0_Acc_B_y msg))
    (cl:cons ':Sensor_Inertial_0_Acc_B_z (Sensor_Inertial_0_Acc_B_z msg))
    (cl:cons ':Sensor_Inertial_0_Aplha_B_x (Sensor_Inertial_0_Aplha_B_x msg))
    (cl:cons ':Sensor_Inertial_0_Aplha_B_y (Sensor_Inertial_0_Aplha_B_y msg))
    (cl:cons ':Sensor_Inertial_0_Aplha_B_z (Sensor_Inertial_0_Aplha_B_z msg))
    (cl:cons ':Sensor_Inertial_1_Vel_B_x (Sensor_Inertial_1_Vel_B_x msg))
    (cl:cons ':Sensor_Inertial_1_Vel_B_y (Sensor_Inertial_1_Vel_B_y msg))
    (cl:cons ':Sensor_Inertial_1_Vel_B_z (Sensor_Inertial_1_Vel_B_z msg))
    (cl:cons ':Sensor_Inertial_1_Omega_B_x (Sensor_Inertial_1_Omega_B_x msg))
    (cl:cons ':Sensor_Inertial_1_Omega_B_y (Sensor_Inertial_1_Omega_B_y msg))
    (cl:cons ':Sensor_Inertial_1_Omega_B_z (Sensor_Inertial_1_Omega_B_z msg))
    (cl:cons ':Sensor_Inertial_1_Acc_B_x (Sensor_Inertial_1_Acc_B_x msg))
    (cl:cons ':Sensor_Inertial_1_Acc_B_y (Sensor_Inertial_1_Acc_B_y msg))
    (cl:cons ':Sensor_Inertial_1_Acc_B_z (Sensor_Inertial_1_Acc_B_z msg))
    (cl:cons ':Sensor_Inertial_1_Aplha_B_x (Sensor_Inertial_1_Aplha_B_x msg))
    (cl:cons ':Sensor_Inertial_1_Aplha_B_y (Sensor_Inertial_1_Aplha_B_y msg))
    (cl:cons ':Sensor_Inertial_1_Aplha_B_z (Sensor_Inertial_1_Aplha_B_z msg))
))
