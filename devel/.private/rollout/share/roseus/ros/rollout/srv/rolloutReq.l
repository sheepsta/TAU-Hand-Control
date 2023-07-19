;; Auto-generated. Do not edit!


(when (boundp 'rollout::rolloutReq)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'rolloutReq (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::ROLLOUTREQ")
  (make-package "ROLLOUT::ROLLOUTREQ"))
(unless (find-package "ROLLOUT::ROLLOUTREQREQUEST")
  (make-package "ROLLOUT::ROLLOUTREQREQUEST"))
(unless (find-package "ROLLOUT::ROLLOUTREQRESPONSE")
  (make-package "ROLLOUT::ROLLOUTREQRESPONSE"))

(in-package "ROS")





(defclass rollout::rolloutReqRequest
  :super ros::object
  :slots (_actions ))

(defmethod rollout::rolloutReqRequest
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

(defclass rollout::rolloutReqResponse
  :super ros::object
  :slots (_states _actions _time _success _reason ))

(defmethod rollout::rolloutReqResponse
  (:init
   (&key
    ((:states __states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actions __actions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    ((:reason __reason) "")
    )
   (send-super :init)
   (setq _states __states)
   (setq _actions __actions)
   (setq _time __time)
   (setq _success __success)
   (setq _reason (string __reason))
   self)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
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
  (:serialization-length
   ()
   (+
    ;; float32[] _states
    (* 4    (length _states)) 4
    ;; float32[] _actions
    (* 4    (length _actions)) 4
    ;; float32[] _time
    (* 4    (length _time)) 4
    ;; bool _success
    1
    ;; string _reason
    4 (length _reason)
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
   ;;
   self)
  )

(defclass rollout::rolloutReq
  :super ros::object
  :slots ())

(setf (get rollout::rolloutReq :md5sum-) "a45383b0a89115a618aa3e42009d257b")
(setf (get rollout::rolloutReq :datatype-) "rollout/rolloutReq")
(setf (get rollout::rolloutReq :request) rollout::rolloutReqRequest)
(setf (get rollout::rolloutReq :response) rollout::rolloutReqResponse)

(defmethod rollout::rolloutReqRequest
  (:response () (instance rollout::rolloutReqResponse :init)))

(setf (get rollout::rolloutReqRequest :md5sum-) "a45383b0a89115a618aa3e42009d257b")
(setf (get rollout::rolloutReqRequest :datatype-) "rollout/rolloutReqRequest")
(setf (get rollout::rolloutReqRequest :definition-)
      "float32[] actions
---
float32[] states
float32[] actions
float32[] time
bool success
string reason
")

(setf (get rollout::rolloutReqResponse :md5sum-) "a45383b0a89115a618aa3e42009d257b")
(setf (get rollout::rolloutReqResponse :datatype-) "rollout/rolloutReqResponse")
(setf (get rollout::rolloutReqResponse :definition-)
      "float32[] actions
---
float32[] states
float32[] actions
float32[] time
bool success
string reason
")



(provide :rollout/rolloutReq "a45383b0a89115a618aa3e42009d257b")


