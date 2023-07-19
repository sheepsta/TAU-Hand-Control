;; Auto-generated. Do not edit!


(when (boundp 'hand_control::net_eval)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'net_eval (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::NET_EVAL")
  (make-package "HAND_CONTROL::NET_EVAL"))
(unless (find-package "HAND_CONTROL::NET_EVALREQUEST")
  (make-package "HAND_CONTROL::NET_EVALREQUEST"))
(unless (find-package "HAND_CONTROL::NET_EVALRESPONSE")
  (make-package "HAND_CONTROL::NET_EVALRESPONSE"))

(in-package "ROS")





(defclass hand_control::net_evalRequest
  :super ros::object
  :slots (_state ))

(defmethod hand_control::net_evalRequest
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32[] _state
    (* 4    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hand_control::net_evalResponse
  :super ros::object
  :slots (_action ))

(defmethod hand_control::net_evalResponse
  (:init
   (&key
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float32[] _action
    (* 4    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hand_control::net_eval
  :super ros::object
  :slots ())

(setf (get hand_control::net_eval :md5sum-) "e3969ebe585f0d178688db6dd33c11d0")
(setf (get hand_control::net_eval :datatype-) "hand_control/net_eval")
(setf (get hand_control::net_eval :request) hand_control::net_evalRequest)
(setf (get hand_control::net_eval :response) hand_control::net_evalResponse)

(defmethod hand_control::net_evalRequest
  (:response () (instance hand_control::net_evalResponse :init)))

(setf (get hand_control::net_evalRequest :md5sum-) "e3969ebe585f0d178688db6dd33c11d0")
(setf (get hand_control::net_evalRequest :datatype-) "hand_control/net_evalRequest")
(setf (get hand_control::net_evalRequest :definition-)
      "float32[] state
---
float32[] action
")

(setf (get hand_control::net_evalResponse :md5sum-) "e3969ebe585f0d178688db6dd33c11d0")
(setf (get hand_control::net_evalResponse :datatype-) "hand_control/net_evalResponse")
(setf (get hand_control::net_evalResponse :definition-)
      "float32[] state
---
float32[] action
")



(provide :hand_control/net_eval "e3969ebe585f0d178688db6dd33c11d0")


