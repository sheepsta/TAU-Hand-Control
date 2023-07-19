;; Auto-generated. Do not edit!


(when (boundp 'rollout::observation)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'observation (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::OBSERVATION")
  (make-package "ROLLOUT::OBSERVATION"))
(unless (find-package "ROLLOUT::OBSERVATIONREQUEST")
  (make-package "ROLLOUT::OBSERVATIONREQUEST"))
(unless (find-package "ROLLOUT::OBSERVATIONRESPONSE")
  (make-package "ROLLOUT::OBSERVATIONRESPONSE"))

(in-package "ROS")





(defclass rollout::observationRequest
  :super ros::object
  :slots ())

(defmethod rollout::observationRequest
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

(defclass rollout::observationResponse
  :super ros::object
  :slots (_state ))

(defmethod rollout::observationResponse
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

(defclass rollout::observation
  :super ros::object
  :slots ())

(setf (get rollout::observation :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get rollout::observation :datatype-) "rollout/observation")
(setf (get rollout::observation :request) rollout::observationRequest)
(setf (get rollout::observation :response) rollout::observationResponse)

(defmethod rollout::observationRequest
  (:response () (instance rollout::observationResponse :init)))

(setf (get rollout::observationRequest :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get rollout::observationRequest :datatype-) "rollout/observationRequest")
(setf (get rollout::observationRequest :definition-)
      "---
float32[] state
")

(setf (get rollout::observationResponse :md5sum-) "3faa55f8813856aab6c4371b84f9b124")
(setf (get rollout::observationResponse :datatype-) "rollout/observationResponse")
(setf (get rollout::observationResponse :definition-)
      "---
float32[] state
")



(provide :rollout/observation "3faa55f8813856aab6c4371b84f9b124")


