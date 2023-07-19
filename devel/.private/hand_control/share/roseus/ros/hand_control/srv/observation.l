;; Auto-generated. Do not edit!


(when (boundp 'hand_control::observation)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'observation (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::OBSERVATION")
  (make-package "HAND_CONTROL::OBSERVATION"))
(unless (find-package "HAND_CONTROL::OBSERVATIONREQUEST")
  (make-package "HAND_CONTROL::OBSERVATIONREQUEST"))
(unless (find-package "HAND_CONTROL::OBSERVATIONRESPONSE")
  (make-package "HAND_CONTROL::OBSERVATIONRESPONSE"))

(in-package "ROS")





(defclass hand_control::observationRequest
  :super ros::object
  :slots ())

(defmethod hand_control::observationRequest
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

(defclass hand_control::observationResponse
  :super ros::object
  :slots (_state ))

(defmethod hand_control::observationResponse
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

(defclass hand_control::observation
  :super ros::object
  :slots ())

(setf (get hand_control::observation :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get hand_control::observation :datatype-) "hand_control/observation")
(setf (get hand_control::observation :request) hand_control::observationRequest)
(setf (get hand_control::observation :response) hand_control::observationResponse)

(defmethod hand_control::observationRequest
  (:response () (instance hand_control::observationResponse :init)))

(setf (get hand_control::observationRequest :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get hand_control::observationRequest :datatype-) "hand_control/observationRequest")
(setf (get hand_control::observationRequest :definition-)
      "---
float32[] state
")

(setf (get hand_control::observationResponse :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get hand_control::observationResponse :datatype-) "hand_control/observationResponse")
(setf (get hand_control::observationResponse :definition-)
      "---
float32[] state
")



(provide :hand_control/observation "3faa55f8813856aab6c4371b84f9b124")


