;; Auto-generated. Do not edit!


(when (boundp 'hand_control::plan_for_goal_request)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'plan_for_goal_request (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::PLAN_FOR_GOAL_REQUEST")
  (make-package "HAND_CONTROL::PLAN_FOR_GOAL_REQUEST"))

(in-package "ROS")
;;//! \htmlinclude plan_for_goal_request.msg.html


(defclass hand_control::plan_for_goal_request
  :super ros::object
  :slots (_goal_state _start_state _goal_radius _time_limit _probability_success_threshold _planning_algorithm ))

(defmethod hand_control::plan_for_goal_request
  (:init
   (&key
    ((:goal_state __goal_state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:start_state __start_state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_radius __goal_radius) 0.0)
    ((:time_limit __time_limit) 0.0)
    ((:probability_success_threshold __probability_success_threshold) 0.0)
    ((:planning_algorithm __planning_algorithm) "")
    )
   (send-super :init)
   (setq _goal_state __goal_state)
   (setq _start_state __start_state)
   (setq _goal_radius (float __goal_radius))
   (setq _time_limit (float __time_limit))
   (setq _probability_success_threshold (float __probability_success_threshold))
   (setq _planning_algorithm (string __planning_algorithm))
   self)
  (:goal_state
   (&optional __goal_state)
   (if __goal_state (setq _goal_state __goal_state)) _goal_state)
  (:start_state
   (&optional __start_state)
   (if __start_state (setq _start_state __start_state)) _start_state)
  (:goal_radius
   (&optional __goal_radius)
   (if __goal_radius (setq _goal_radius __goal_radius)) _goal_radius)
  (:time_limit
   (&optional __time_limit)
   (if __time_limit (setq _time_limit __time_limit)) _time_limit)
  (:probability_success_threshold
   (&optional __probability_success_threshold)
   (if __probability_success_threshold (setq _probability_success_threshold __probability_success_threshold)) _probability_success_threshold)
  (:planning_algorithm
   (&optional __planning_algorithm)
   (if __planning_algorithm (setq _planning_algorithm __planning_algorithm)) _planning_algorithm)
  (:serialization-length
   ()
   (+
    ;; float64[] _goal_state
    (* 8    (length _goal_state)) 4
    ;; float64[] _start_state
    (* 8    (length _start_state)) 4
    ;; float64 _goal_radius
    8
    ;; float64 _time_limit
    8
    ;; float64 _probability_success_threshold
    8
    ;; string _planning_algorithm
    4 (length _planning_algorithm)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _goal_state
     (write-long (length _goal_state) s)
     (dotimes (i (length _goal_state))
       (sys::poke (elt _goal_state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _start_state
     (write-long (length _start_state) s)
     (dotimes (i (length _start_state))
       (sys::poke (elt _start_state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _goal_radius
       (sys::poke _goal_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_limit
       (sys::poke _time_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _probability_success_threshold
       (sys::poke _probability_success_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _planning_algorithm
       (write-long (length _planning_algorithm) s) (princ _planning_algorithm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _goal_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _start_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _goal_radius
     (setq _goal_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_limit
     (setq _time_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _probability_success_threshold
     (setq _probability_success_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _planning_algorithm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_algorithm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hand_control::plan_for_goal_request :md5sum-) "14a5c7b5abd5bbd2576cf26f819de0bc")
(setf (get hand_control::plan_for_goal_request :datatype-) "hand_control/plan_for_goal_request")
(setf (get hand_control::plan_for_goal_request :definition-)
      "float64[] goal_state
float64[] start_state
float64 goal_radius
float64 time_limit
float64 probability_success_threshold
string planning_algorithm
")



(provide :hand_control/plan_for_goal_request "14a5c7b5abd5bbd2576cf26f819de0bc")


