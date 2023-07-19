;; Auto-generated. Do not edit!


(when (boundp 'hand_control::close)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'close (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::CLOSE")
  (make-package "HAND_CONTROL::CLOSE"))
(unless (find-package "HAND_CONTROL::CLOSEREQUEST")
  (make-package "HAND_CONTROL::CLOSEREQUEST"))
(unless (find-package "HAND_CONTROL::CLOSERESPONSE")
  (make-package "HAND_CONTROL::CLOSERESPONSE"))

(in-package "ROS")





(defclass hand_control::closeRequest
  :super ros::object
  :slots ())

(defmethod hand_control::closeRequest
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

(defclass hand_control::closeResponse
  :super ros::object
  :slots (_success ))

(defmethod hand_control::closeResponse
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

(defclass hand_control::close
  :super ros::object
  :slots ())

(setf (get hand_control::close :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::close :datatype-) "hand_control/close")
(setf (get hand_control::close :request) hand_control::closeRequest)
(setf (get hand_control::close :response) hand_control::closeResponse)

(defmethod hand_control::closeRequest
  (:response () (instance hand_control::closeResponse :init)))

(setf (get hand_control::closeRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::closeRequest :datatype-) "hand_control/closeRequest")
(setf (get hand_control::closeRequest :definition-)
      "---
bool success
")

(setf (get hand_control::closeResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get hand_control::closeResponse :datatype-) "hand_control/closeResponse")
(setf (get hand_control::closeResponse :definition-)
      "---
bool success
")



(provide :hand_control/close "358e233cde0c8a8bcfea4ce193f8fc15")


