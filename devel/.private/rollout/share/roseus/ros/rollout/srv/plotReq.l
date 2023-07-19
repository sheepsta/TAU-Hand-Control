;; Auto-generated. Do not edit!


(when (boundp 'rollout::plotReq)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'plotReq (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::PLOTREQ")
  (make-package "ROLLOUT::PLOTREQ"))
(unless (find-package "ROLLOUT::PLOTREQREQUEST")
  (make-package "ROLLOUT::PLOTREQREQUEST"))
(unless (find-package "ROLLOUT::PLOTREQRESPONSE")
  (make-package "ROLLOUT::PLOTREQRESPONSE"))

(in-package "ROS")





(defclass rollout::plotReqRequest
  :super ros::object
  :slots (_states _filename ))

(defmethod rollout::plotReqRequest
  (:init
   (&key
    ((:states __states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _states __states)
   (setq _filename (string __filename))
   self)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; float32[] _states
    (* 4    (length _states)) 4
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _states
     (write-long (length _states) s)
     (dotimes (i (length _states))
       (sys::poke (elt _states i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _states i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rollout::plotReqResponse
  :super ros::object
  :slots ())

(defmethod rollout::plotReqResponse
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

(defclass rollout::plotReq
  :super ros::object
  :slots ())

(setf (get rollout::plotReq :md5sum-) "1148cadfcfa6d659984233cc92414368")
(setf (get rollout::plotReq :datatype-) "rollout/plotReq")
(setf (get rollout::plotReq :request) rollout::plotReqRequest)
(setf (get rollout::plotReq :response) rollout::plotReqResponse)

(defmethod rollout::plotReqRequest
  (:response () (instance rollout::plotReqResponse :init)))

(setf (get rollout::plotReqRequest :md5sum-) "1148cadfcfa6d659984233cc92414368")
(setf (get rollout::plotReqRequest :datatype-) "rollout/plotReqRequest")
(setf (get rollout::plotReqRequest :definition-)
      "float32[] states
string filename
---
")

(setf (get rollout::plotReqResponse :md5sum-) "1148cadfcfa6d659984233cc92414368")
(setf (get rollout::plotReqResponse :datatype-) "rollout/plotReqResponse")
(setf (get rollout::plotReqResponse :definition-)
      "float32[] states
string filename
---
")



(provide :rollout/plotReq "1148cadfcfa6d659984233cc92414368")


