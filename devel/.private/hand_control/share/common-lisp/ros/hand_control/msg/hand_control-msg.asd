
(cl:in-package :asdf)

(defsystem "hand_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "plan_for_goal_request" :depends-on ("_package_plan_for_goal_request"))
    (:file "_package_plan_for_goal_request" :depends-on ("_package"))
    (:file "plan_for_goal_response" :depends-on ("_package_plan_for_goal_response"))
    (:file "_package_plan_for_goal_response" :depends-on ("_package"))
  ))