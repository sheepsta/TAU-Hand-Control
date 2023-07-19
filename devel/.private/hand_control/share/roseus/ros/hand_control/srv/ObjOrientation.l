;; Auto-generated. Do not edit!


(when (boundp 'hand_control::ObjOrientation)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'ObjOrientation (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::OBJORIENTATION")
  (make-package "HAND_CONTROL::OBJORIENTATION"))
(unless (find-package "HAND_CONTROL::OBJORIENTATIONREQUEST")
  (make-package "HAND_CONTROL::OBJORIENTATIONREQUEST"))
(unless (find-package "HAND_CONTROL::OBJORIENTATIONRESPONSE")
  (make-package "HAND_CONTROL::OBJORIENTATIONRESPONSE"))

(in-package "ROS")





(defclass hand_control::ObjOrientationRequest
  :super ros::object
  :slots ())

(defmethod hand_control::ObjOrientationRequest
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

(defclass hand_control::ObjOrientationResponse
  :super ros::object
  :slots (_ori ))

(defmethod hand_control::ObjOrientationResponse
  (:init
   (&key
    ((:ori __ori) 0.0)
    )
   (send-super :init)
   (setq _ori (float __ori))
   self)
  (:ori
   (&optional __ori)
   (if __ori (setq _ori __ori)) _ori)
  (:serialization-length
   ()
   (+
    ;; float32 _ori
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ori
       (sys::poke _ori (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ori
     (setq _ori (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hand_control::ObjOrientation
  :super ros::object
  :slots ())

(setf (get hand_control::ObjOrientation :md5sum-) "8d0c22b39a7964032a79fdf4de10eb10")
(setf (get hand_control::ObjOrientation :datatype-) "hand_control/ObjOrientation")
(setf (get hand_control::ObjOrientation :request) hand_control::ObjOrientationRequest)
(setf (get hand_control::ObjOrientation :response) hand_control::ObjOrientationResponse)

(defmethod hand_control::ObjOrientationRequest
  (:response () (instance hand_control::ObjOrientationResponse :init)))

(setf (get hand_control::ObjOrientationRequest :md5sum-) "8d0c22b39a7964032a79fdf4de10eb10")
(setf (get hand_control::ObjOrientationRequest :datatype-) "hand_control/ObjOrientationRequest")
(setf (get hand_control::ObjOrientationRequest :definition-)
      "---
float32 ori
")

(setf (get hand_control::ObjOrientationResponse :md5sum-) "8d0c22b39a7964032a79fdf4de10eb10")
(setf (get hand_control::ObjOrientationResponse :datatype-) "hand_control/ObjOrientationResponse")
(setf (get hand_control::ObjOrientationResponse :definition-)
      "---
float32 ori
")



(provide :hand_control/ObjOrientation "8d0c22b39a7964032a79fdf4de10eb10")


