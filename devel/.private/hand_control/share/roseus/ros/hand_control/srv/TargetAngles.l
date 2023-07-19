;; Auto-generated. Do not edit!


(when (boundp 'hand_control::TargetAngles)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'TargetAngles (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::TARGETANGLES")
  (make-package "HAND_CONTROL::TARGETANGLES"))
(unless (find-package "HAND_CONTROL::TARGETANGLESREQUEST")
  (make-package "HAND_CONTROL::TARGETANGLESREQUEST"))
(unless (find-package "HAND_CONTROL::TARGETANGLESRESPONSE")
  (make-package "HAND_CONTROL::TARGETANGLESRESPONSE"))

(in-package "ROS")





(defclass hand_control::TargetAnglesRequest
  :super ros::object
  :slots (_angles ))

(defmethod hand_control::TargetAnglesRequest
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

(defclass hand_control::TargetAnglesResponse
  :super ros::object
  :slots (_success ))

(defmethod hand_control::TargetAnglesResponse
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

(defclass hand_control::TargetAngles
  :super ros::object
  :slots ())

(setf (get hand_control::TargetAngles :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get hand_control::TargetAngles :datatype-) "hand_control/TargetAngles")
(setf (get hand_control::TargetAngles :request) hand_control::TargetAnglesRequest)
(setf (get hand_control::TargetAngles :response) hand_control::TargetAnglesResponse)

(defmethod hand_control::TargetAnglesRequest
  (:response () (instance hand_control::TargetAnglesResponse :init)))

(setf (get hand_control::TargetAnglesRequest :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get hand_control::TargetAnglesRequest :datatype-) "hand_control/TargetAnglesRequest")
(setf (get hand_control::TargetAnglesRequest :definition-)
      "float32[] angles
---
bool success
")

(setf (get hand_control::TargetAnglesResponse :md5sum-) "370f9a53bb9fc4e03100f718ee81318b")
(setf (get hand_control::TargetAnglesResponse :datatype-) "hand_control/TargetAnglesResponse")
(setf (get hand_control::TargetAnglesResponse :definition-)
      "float32[] angles
---
bool success
")



(provide :hand_control/TargetAngles "370f9a53bb9fc4e03100f718ee81318b")


