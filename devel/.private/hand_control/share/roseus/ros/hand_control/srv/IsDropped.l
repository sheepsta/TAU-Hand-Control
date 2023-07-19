;; Auto-generated. Do not edit!


(when (boundp 'hand_control::IsDropped)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'IsDropped (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::ISDROPPED")
  (make-package "HAND_CONTROL::ISDROPPED"))
(unless (find-package "HAND_CONTROL::ISDROPPEDREQUEST")
  (make-package "HAND_CONTROL::ISDROPPEDREQUEST"))
(unless (find-package "HAND_CONTROL::ISDROPPEDRESPONSE")
  (make-package "HAND_CONTROL::ISDROPPEDRESPONSE"))

(in-package "ROS")





(defclass hand_control::IsDroppedRequest
  :super ros::object
  :slots ())

(defmethod hand_control::IsDroppedRequest
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

(defclass hand_control::IsDroppedResponse
  :super ros::object
  :slots (_dropped ))

(defmethod hand_control::IsDroppedResponse
  (:init
   (&key
    ((:dropped __dropped) nil)
    )
   (send-super :init)
   (setq _dropped __dropped)
   self)
  (:dropped
   (&optional __dropped)
   (if __dropped (setq _dropped __dropped)) _dropped)
  (:serialization-length
   ()
   (+
    ;; bool _dropped
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _dropped
       (if _dropped (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _dropped
     (setq _dropped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hand_control::IsDropped
  :super ros::object
  :slots ())

(setf (get hand_control::IsDropped :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get hand_control::IsDropped :datatype-) "hand_control/IsDropped")
(setf (get hand_control::IsDropped :request) hand_control::IsDroppedRequest)
(setf (get hand_control::IsDropped :response) hand_control::IsDroppedResponse)

(defmethod hand_control::IsDroppedRequest
  (:response () (instance hand_control::IsDroppedResponse :init)))

(setf (get hand_control::IsDroppedRequest :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get hand_control::IsDroppedRequest :datatype-) "hand_control/IsDroppedRequest")
(setf (get hand_control::IsDroppedRequest :definition-)
      "---
bool dropped
")

(setf (get hand_control::IsDroppedResponse :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get hand_control::IsDroppedResponse :datatype-) "hand_control/IsDroppedResponse")
(setf (get hand_control::IsDroppedResponse :definition-)
      "---
bool dropped
")



(provide :hand_control/IsDropped "89b1ea20d43c8bbdf4c72f92a40ab2ad")


