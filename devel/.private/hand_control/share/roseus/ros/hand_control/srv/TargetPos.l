;; Auto-generated. Do not edit!


(when (boundp 'hand_control::TargetPos)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'TargetPos (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::TARGETPOS")
  (make-package "HAND_CONTROL::TARGETPOS"))
(unless (find-package "HAND_CONTROL::TARGETPOSREQUEST")
  (make-package "HAND_CONTROL::TARGETPOSREQUEST"))
(unless (find-package "HAND_CONTROL::TARGETPOSRESPONSE")
  (make-package "HAND_CONTROL::TARGETPOSRESPONSE"))

(in-package "ROS")





(defclass hand_control::TargetPosRequest
  :super ros::object
  :slots ())

(defmethod hand_control::TargetPosRequest
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

(defclass hand_control::TargetPosResponse
  :super ros::object
  :slots (_angle ))

(defmethod hand_control::TargetPosResponse
  (:init
   (&key
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angle __angle)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hand_control::TargetPos
  :super ros::object
  :slots ())

(setf (get hand_control::TargetPos :md5sum-) "e227be5dbe0ddab6b23e84a527804c51")
(setf (get hand_control::TargetPos :datatype-) "hand_control/TargetPos")
(setf (get hand_control::TargetPos :request) hand_control::TargetPosRequest)
(setf (get hand_control::TargetPos :response) hand_control::TargetPosResponse)

(defmethod hand_control::TargetPosRequest
  (:response () (instance hand_control::TargetPosResponse :init)))

(setf (get hand_control::TargetPosRequest :md5sum-) "e227be5dbe0ddab6b23e84a527804c51")
(setf (get hand_control::TargetPosRequest :datatype-) "hand_control/TargetPosRequest")
(setf (get hand_control::TargetPosRequest :definition-)
      "---
float32[] angle
")

(setf (get hand_control::TargetPosResponse :md5sum-) "e227be5dbe0ddab6b23e84a527804c51")
(setf (get hand_control::TargetPosResponse :datatype-) "hand_control/TargetPosResponse")
(setf (get hand_control::TargetPosResponse :definition-)
      "---
float32[] angle
")



(provide :hand_control/TargetPos "e227be5dbe0ddab6b23e84a527804c51")


