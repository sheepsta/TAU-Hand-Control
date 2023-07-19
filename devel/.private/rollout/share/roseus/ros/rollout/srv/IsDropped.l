;; Auto-generated. Do not edit!


(when (boundp 'rollout::IsDropped)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'IsDropped (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::ISDROPPED")
  (make-package "ROLLOUT::ISDROPPED"))
(unless (find-package "ROLLOUT::ISDROPPEDREQUEST")
  (make-package "ROLLOUT::ISDROPPEDREQUEST"))
(unless (find-package "ROLLOUT::ISDROPPEDRESPONSE")
  (make-package "ROLLOUT::ISDROPPEDRESPONSE"))

(in-package "ROS")





(defclass rollout::IsDroppedRequest
  :super ros::object
  :slots ())

(defmethod rollout::IsDroppedRequest
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

(defclass rollout::IsDroppedResponse
  :super ros::object
  :slots (_dropped ))

(defmethod rollout::IsDroppedResponse
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

(defclass rollout::IsDropped
  :super ros::object
  :slots ())

(setf (get rollout::IsDropped :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get rollout::IsDropped :datatype-) "rollout/IsDropped")
(setf (get rollout::IsDropped :request) rollout::IsDroppedRequest)
(setf (get rollout::IsDropped :response) rollout::IsDroppedResponse)

(defmethod rollout::IsDroppedRequest
  (:response () (instance rollout::IsDroppedResponse :init)))

(setf (get rollout::IsDroppedRequest :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get rollout::IsDroppedRequest :datatype-) "rollout/IsDroppedRequest")
(setf (get rollout::IsDroppedRequest :definition-)
      "---
bool dropped
")

(setf (get rollout::IsDroppedResponse :md5sum-) "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(setf (get rollout::IsDroppedResponse :datatype-) "rollout/IsDroppedResponse")
(setf (get rollout::IsDroppedResponse :definition-)
      "---
bool dropped
")



(provide :rollout/IsDropped "89b1ea20d43c8bbdf4c72f92a40ab2ad")


