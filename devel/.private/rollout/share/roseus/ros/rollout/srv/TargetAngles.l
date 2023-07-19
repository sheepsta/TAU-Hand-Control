;; Auto-generated. Do not edit!


(when (boundp 'rollout::TargetAngles)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'TargetAngles (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::TARGETANGLES")
  (make-package "ROLLOUT::TARGETANGLES"))
(unless (find-package "ROLLOUT::TARGETANGLESREQUEST")
  (make-package "ROLLOUT::TARGETANGLESREQUEST"))
(unless (find-package "ROLLOUT::TARGETANGLESRESPONSE")
  (make-package "ROLLOUT::TARGETANGLESRESPONSE"))

(in-package "ROS")





(defclass rollout::TargetAnglesRequest
  :super ros::object
  :slots (_angles ))

(defmethod rollout::TargetAnglesRequest
  (:init
   (&key
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rollout::TargetAnglesResponse
  :super ros::object
  :slots (_success ))

(defmethod rollout::TargetAnglesResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rollout::TargetAngles
  :super ros::object
  :slots ())

(setf (get rollout::TargetAngles :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get rollout::TargetAngles :datatype-) "rollout/TargetAngles")
(setf (get rollout::TargetAngles :request) rollout::TargetAnglesRequest)
(setf (get rollout::TargetAngles :response) rollout::TargetAnglesResponse)

(defmethod rollout::TargetAnglesRequest
  (:response () (instance rollout::TargetAnglesResponse :init)))

(setf (get rollout::TargetAnglesRequest :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get rollout::TargetAnglesRequest :datatype-) "rollout/TargetAnglesRequest")
(setf (get rollout::TargetAnglesRequest :definition-)
      "float32[] angles
---
bool success
")

(setf (get rollout::TargetAnglesResponse :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get rollout::TargetAnglesResponse :datatype-) "rollout/TargetAnglesResponse")
(setf (get rollout::TargetAnglesResponse :definition-)
      "float32[] angles
---
bool success
")



(provide :rollout/TargetAngles "370f9a53bb9fc4e03100f718ee81318b")


