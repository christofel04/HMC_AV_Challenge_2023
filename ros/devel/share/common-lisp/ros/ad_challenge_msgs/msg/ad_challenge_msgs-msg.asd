
(cl:in-package :asdf)

(defsystem "ad_challenge_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
               :vision_msgs-msg
)
  :components ((:file "_package")
    (:file "CM_Object" :depends-on ("_package_CM_Object"))
    (:file "_package_CM_Object" :depends-on ("_package"))
    (:file "Control_Signal" :depends-on ("_package_Control_Signal"))
    (:file "_package_Control_Signal" :depends-on ("_package"))
    (:file "FullStateBBox3D" :depends-on ("_package_FullStateBBox3D"))
    (:file "_package_FullStateBBox3D" :depends-on ("_package"))
    (:file "FullStateBBox3DArray" :depends-on ("_package_FullStateBBox3DArray"))
    (:file "_package_FullStateBBox3DArray" :depends-on ("_package"))
    (:file "OB_List" :depends-on ("_package_OB_List"))
    (:file "_package_OB_List" :depends-on ("_package"))
    (:file "TrafficSign" :depends-on ("_package_TrafficSign"))
    (:file "_package_TrafficSign" :depends-on ("_package"))
    (:file "TrafficSignArray" :depends-on ("_package_TrafficSignArray"))
    (:file "_package_TrafficSignArray" :depends-on ("_package"))
    (:file "UAQ_Out" :depends-on ("_package_UAQ_Out"))
    (:file "_package_UAQ_Out" :depends-on ("_package"))
  ))