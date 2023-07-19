;; Auto-generated. Do not edit!


(when (boundp 'hand_control::plan_for_goal_response)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'plan_for_goal_response (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::PLAN_FOR_GOAL_RESPONSE")
  (make-package "HAND_CONTROL::PLAN_FOR_GOAL_RESPONSE"))

(in-package "ROS")
;;//! \htmlinclude plan_for_goal_response.msg.html


(defclass hand_control::plan_for_goal_response
  :super ros::object
  :slots (_planned_actions _planned_path _reached_goal ))

(defmethod hand_control::plan_for_goal_response
  (:init
   (&key
    ((:planned_actions __planned_actions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:planned_path __planned_path) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reached_goal __reached_goal) nil)
    )
   (send-super :init)
   (setq _planned_actions __planned_actions)
   (setq _planned_path __planned_path)
   (setq _reached_goal __reached_goal)
   self)
  (:planned_actions
   (&optional __planned_actions)
   (if __planned_actions (setq _planned_actions __planned_actions)) _planned_actions)
  (:planned_path
   (&optional __planned_path)
   (if __planned_path (setq _planned_path __planned_path)) _planned_path)
  (:reached_goal
   (&optional __reached_goal)
   (if __reached_goal (setq _reached_goal __reached_goal)) _reached_goal)
  (:serialization-length
   ()
   (+
    ;; float64[] _planned_actions
    (* 8    (length _planned_actions)) 4
    ;; float64[] _planned_path
    (* 8    (length _planned_path)) 4
    ;; bool _reached_goal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _planned_actions
     (write-long (length _planned_actions) s)
     (dotimes (i (length _planned_actions))
       (sys::poke (elt _planned_actions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _planned_path
     (write-long (length _planned_path) s)
     (dotimes (i (length _planned_path))
       (sys::poke (elt _planned_path i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _reached_goal
       (if _reached_goal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _planned_actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planned_actions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _planned_actions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _planned_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planned_path (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _planned_path i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _reached_goal
     (setq _reached_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hand_control::plan_for_goal_response :md5sum-) "99e054cfbf7412c793674c19bfc96a83")
(setf (get hand_control::plan_for_goal_response :datatype-) "hand_control/plan_for_goal_response")
(setf (get hand_control::plan_for_goal_response :definition-)
      "float64[] planned_actions
float64[] planned_path
bool reached_goal
")



(provide :hand_control/plan_for_goal_response "99e054cfbf7412c793674c19bfc96a83")


