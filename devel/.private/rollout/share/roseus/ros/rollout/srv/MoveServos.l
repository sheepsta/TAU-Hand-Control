;; Auto-generated. Do not edit!


(when (boundp 'rollout::MoveServos)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'MoveServos (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::MOVESERVOS")
  (make-package "ROLLOUT::MOVESERVOS"))
(unless (find-package "ROLLOUT::MOVESERVOSREQUEST")
  (make-package "ROLLOUT::MOVESERVOSREQUEST"))
(unless (find-package "ROLLOUT::MOVESERVOSRESPONSE")
  (make-package "ROLLOUT::MOVESERVOSRESPONSE"))

(in-package "ROS")





(defclass rollout::MoveServosRequest
  :super ros::object
  :slots (_pos ))

(defmethod rollout::MoveServosRequest
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rollout::MoveServosResponse
  :super ros::object
  :slots (_err ))

(defmethod rollout::MoveServosResponse
  (:init
   (&key
    ((:err __err) 0)
    )
   (send-super :init)
   (setq _err (round __err))
   self)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:serialization-length
   ()
   (+
    ;; int32 _err
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _err
       (write-long _err s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _err
     (setq _err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rollout::MoveServos
  :super ros::object
  :slots ())

(setf (get rollout::MoveServos :md5sum-) "183031e0becb89936a926d61b84a7478")
(setf (get rollout::MoveServos :datatype-) "rollout/MoveServos")
(setf (get rollout::MoveServos :request) rollout::MoveServosRequest)
(setf (get rollout::MoveServos :response) rollout::MoveServosResponse)

(defmethod rollout::MoveServosRequest
  (:response () (instance rollout::MoveServosResponse :init)))

(setf (get rollout::MoveServosRequest :md5sum-) "183031e0becb89936a926d61b84a7478")
(setf (get rollout::MoveServosRequest :datatype-) "rollout/MoveServosRequest")
(setf (get rollout::MoveServosRequest :definition-)
      "float32[] pos
---
int32 err

")

(setf (get rollout::MoveServosResponse :md5sum-) "183031e0becb89936a926d61b84a7478")
(setf (get rollout::MoveServosResponse :datatype-) "rollout/MoveServosResponse")
(setf (get rollout::MoveServosResponse :definition-)
      "float32[] pos
---
int32 err

")



(provide :rollout/MoveServos "183031e0becb89936a926d61b84a7478")


