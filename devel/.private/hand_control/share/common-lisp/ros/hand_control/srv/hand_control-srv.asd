
(cl:in-package :asdf)

(defsystem "hand_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IsDropped" :depends-on ("_package_IsDropped"))
    (:file "_package_IsDropped" :depends-on ("_package"))
    (:file "ObjOrientation" :depends-on ("_package_ObjOrientation"))
    (:file "_package_ObjOrientation" :depends-on ("_package"))
    (:file "RegraspObject" :depends-on ("_package_RegraspObject"))
    (:file "_package_RegraspObject" :depends-on ("_package"))
    (:file "TargetAngles" :depends-on ("_package_TargetAngles"))
    (:file "_package_TargetAngles" :depends-on ("_package"))
    (:file "TargetPos" :depends-on ("_package_TargetPos"))
    (:file "_package_TargetPos" :depends-on ("_package"))
    (:file "close" :depends-on ("_package_close"))
    (:file "_package_close" :depends-on ("_package"))
    (:file "net_eval" :depends-on ("_package_net_eval"))
    (:file "_package_net_eval" :depends-on ("_package"))
    (:file "observation" :depends-on ("_package_observation"))
    (:file "_package_observation" :depends-on ("_package"))
    (:file "planroll" :depends-on ("_package_planroll"))
    (:file "_package_planroll" :depends-on ("_package"))
  ))