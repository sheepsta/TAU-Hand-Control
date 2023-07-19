;; Auto-generated. Do not edit!


(when (boundp 'rollout::gets)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'gets (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::GETS")
  (make-package "ROLLOUT::GETS"))
(unless (find-package "ROLLOUT::GETSREQUEST")
  (make-package "ROLLOUT::GETSREQUEST"))
(unless (find-package "ROLLOUT::GETSRESPONSE")
  (make-package "ROLLOUT::GETSRESPONSE"))

(in-package "ROS")





(defclass rollout::getsRequest
  :super ros::object
  :slots ())

(defmethod rollout::getsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rollout::getsResponse
  :super ros::object
  :slots (_states _actions _time ))

(defmethod rollout::getsResponse
  (:init
   (&key
    ((:states __states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actions __actions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _states __states)
   (setq _actions __actions)
   (setq _time __time)
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
  (:serialization-length
   ()
   (+
    ;; float32[] _states
    (* 4    (length _states)) 4
    ;; float32[] _actions
    (* 4    (length _actions)) 4
    ;; float32[] _time
    (* 4    (length _time)) 4
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
   ;;
   self)
  )

(defclass rollout::gets
  :super ros::object
  :slots ())

(setf (get rollout::gets :md5sum-) "8ad8157a5872cd29232e606a0c998cb1")
(setf (get rollout::gets :datatype-) "rollout/gets")
(setf (get rollout::gets :request) rollout::getsRequest)
(setf (get rollout::gets :response) rollout::getsResponse)

(defmethod rollout::getsRequest
  (:response () (instance rollout::getsResponse :init)))

(setf (get rollout::getsRequest :md5sum-) "8ad8157a5872cd29232e606a0c998cb1")
(setf (get rollout::getsRequest :datatype-) "rollout/getsRequest")
(setf (get rollout::getsRequest :definition-)
      "---
float32[] states
float32[] actions
float32[] time
")

(setf (get rollout::getsResponse :md5sum-) "8ad8157a5872cd29232e606a0c998cb1")
(setf (get rollout::getsResponse :datatype-) "rollout/getsResponse")
(setf (get rollout::getsResponse :definition-)
      "---
float32[] states
float32[] actions
float32[] time
")



(provide :rollout/gets "8ad8157a5872cd29232e606a0c998cb1")


