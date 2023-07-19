;; Auto-generated. Do not edit!


(when (boundp 'hand_control::RegraspObject)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'RegraspObject (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::REGRASPOBJECT")
  (make-package "HAND_CONTROL::REGRASPOBJECT"))
(unless (find-package "HAND_CONTROL::REGRASPOBJECTREQUEST")
  (make-package "HAND_CONTROL::REGRASPOBJECTREQUEST"))
(unless (find-package "HAND_CONTROL::REGRASPOBJECTRESPONSE")
  (make-package "HAND_CONTROL::REGRASPOBJECTRESPONSE"))

(in-package "ROS")





(defclass hand_control::RegraspObjectRequest
  :super ros::object
  :slots ())

(defmethod hand_control::RegraspObjectRequest
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

(defclass hand_control::RegraspObjectResponse
  :super ros::object
  :slots (_success ))

(defmethod hand_control::RegraspObjectResponse
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

(defclass hand_control::RegraspObject
  :super ros::object
  :slots ())

(setf (get hand_control::RegraspObject :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::RegraspObject :datatype-) "hand_control/RegraspObject")
(setf (get hand_control::RegraspObject :request) hand_control::RegraspObjectRequest)
(setf (get hand_control::RegraspObject :response) hand_control::RegraspObjectResponse)

(defmethod hand_control::RegraspObjectRequest
  (:response () (instance hand_control::RegraspObjectResponse :init)))

(setf (get hand_control::RegraspObjectRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::RegraspObjectRequest :datatype-) "hand_control/RegraspObjectRequest")
(setf (get hand_control::RegraspObjectRequest :definition-)
      "---
bool success
")

(setf (get hand_control::RegraspObjectResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::RegraspObjectResponse :datatype-) "hand_control/RegraspObjectResponse")
(setf (get hand_control::RegraspObjectResponse :definition-)
      "---
bool success
")



(provide :hand_control/RegraspObject "358e233cde0c8a8bcfea4ce193f8fc15")


