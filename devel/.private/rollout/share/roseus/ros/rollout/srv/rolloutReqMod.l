;; Auto-generated. Do not edit!


(when (boundp 'rollout::rolloutReqMod)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'rolloutReqMod (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::ROLLOUTREQMOD")
  (make-package "ROLLOUT::ROLLOUTREQMOD"))
(unless (find-package "ROLLOUT::ROLLOUTREQMODREQUEST")
  (make-package "ROLLOUT::ROLLOUTREQMODREQUEST"))
(unless (find-package "ROLLOUT::ROLLOUTREQMODRESPONSE")
  (make-package "ROLLOUT::ROLLOUTREQMODRESPONSE"))

(in-package "ROS")





(defclass rollout::rolloutReqModRequest
  :super ros::object
  :slots (_actions ))

(defmethod rollout::rolloutReqModRequest
  (:init
   (&key
    ((:actions __actions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actions __actions)
   self)
  (:actions
   (&optional __actions)
   (if __actions (setq _actions __actions)) _actions)
  (:serialization-length
   ()
   (+
    ;; float32[] _actions
    (* 4    (length _actions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _actions
     (write-long (length _actions) s)
     (dotimes (i (length _actions))
       (sys::poke (elt _actions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rollout::rolloutReqModResponse
  :super ros::object
  :slots (_states _next_states _actions _time _success _reason _target_pos ))

(defmethod rollout::rolloutReqModResponse
  (:init
   (&key
    ((:states __states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:next_states __next_states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actions __actions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    ((:reason __reason) "")
    ((:target_pos __target_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _states __states)
   (setq _next_states __next_states)
   (setq _actions __actions)
   (setq _time __time)
   (setq _success __success)
   (setq _reason (string __reason))
   (setq _target_pos __target_pos)
   self)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:next_states
   (&optional __next_states)
   (if __next_states (setq _next_states __next_states)) _next_states)
  (:actions
   (&optional __actions)
   (if __actions (setq _actions __actions)) _actions)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:serialization-length
   ()
   (+
    ;; float32[] _states
    (* 4    (length _states)) 4
    ;; float32[] _next_states
    (* 4    (length _next_states)) 4
    ;; float32[] _actions
    (* 4    (length _actions)) 4
    ;; float32[] _time
    (* 4    (length _time)) 4
    ;; bool _success
    1
    ;; string _reason
    4 (length _reason)
    ;; float32[] _target_pos
    (* 4    (length _target_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _states
     (write-long (length _states) s)
     (dotimes (i (length _states))
       (sys::poke (elt _states i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _next_states
     (write-long (length _next_states) s)
     (dotimes (i (length _next_states))
       (sys::poke (elt _next_states i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _actions
     (write-long (length _actions) s)
     (dotimes (i (length _actions))
       (sys::poke (elt _actions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _time
     (write-long (length _time) s)
     (dotimes (i (length _time))
       (sys::poke (elt _time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;; float32[] _target_pos
     (write-long (length _target_pos) s)
     (dotimes (i (length _target_pos))
       (sys::poke (elt _target_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _states i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _next_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _next_states (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _next_states i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _target_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rollout::rolloutReqMod
  :super ros::object
  :slots ())

(setf (get rollout::rolloutReqMod :md5sum-) "99038b95d1ebc1ede29fc60628f376a0")
(setf (get rollout::rolloutReqMod :datatype-) "rollout/rolloutReqMod")
(setf (get rollout::rolloutReqMod :request) rollout::rolloutReqModRequest)
(setf (get rollout::rolloutReqMod :response) rollout::rolloutReqModResponse)

(defmethod rollout::rolloutReqModRequest
  (:response () (instance rollout::rolloutReqModResponse :init)))

(setf (get rollout::rolloutReqModRequest :md5sum-) "99038b95d1ebc1ede29fc60628f376a0")
(setf (get rollout::rolloutReqModRequest :datatype-) "rollout/rolloutReqModRequest")
(setf (get rollout::rolloutReqModRequest :definition-)
      "float32[] actions
---
float32[] states
float32[] next_states
float32[] actions
float32[] time
bool success
string reason
float32[] target_pos
")

(setf (get rollout::rolloutReqModResponse :md5sum-) "99038b95d1ebc1ede29fc60628f376a0")
(setf (get rollout::rolloutReqModResponse :datatype-) "rollout/rolloutReqModResponse")
(setf (get rollout::rolloutReqModResponse :definition-)
      "float32[] actions
---
float32[] states
float32[] next_states
float32[] actions
float32[] time
bool success
string reason
float32[] target_pos
")



(provide :rollout/rolloutReqMod "99038b95d1ebc1ede29fc60628f376a0")


