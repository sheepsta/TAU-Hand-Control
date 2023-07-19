;; Auto-generated. Do not edit!


(when (boundp 'rollout::rolloutReqFile)
  (if (not (find-package "ROLLOUT"))
    (make-package "ROLLOUT"))
  (shadow 'rolloutReqFile (find-package "ROLLOUT")))
(unless (find-package "ROLLOUT::ROLLOUTREQFILE")
  (make-package "ROLLOUT::ROLLOUTREQFILE"))
(unless (find-package "ROLLOUT::ROLLOUTREQFILEREQUEST")
  (make-package "ROLLOUT::ROLLOUTREQFILEREQUEST"))
(unless (find-package "ROLLOUT::ROLLOUTREQFILERESPONSE")
  (make-package "ROLLOUT::ROLLOUTREQFILERESPONSE"))

(in-package "ROS")





(defclass rollout::rolloutReqFileRequest
  :super ros::object
  :slots (_file ))

(defmethod rollout::rolloutReqFileRequest
  (:init
   (&key
    ((:file __file) "")
    )
   (send-super :init)
   (setq _file (string __file))
   self)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:serialization-length
   ()
   (+
    ;; string _file
    4 (length _file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rollout::rolloutReqFileResponse
  :super ros::object
  :slots (_states _success ))

(defmethod rollout::rolloutReqFileResponse
  (:init
   (&key
    ((:states __states) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _states __states)
   (setq _success __success)
   self)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32[] _states
    (* 4    (length _states)) 4
    ;; bool _success
    1
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rollout::rolloutReqFile
  :super ros::object
  :slots ())

(setf (get rollout::rolloutReqFile :md5sum-) "f682d82c4e2a8d10743450971038e4c0")
(setf (get rollout::rolloutReqFile :datatype-) "rollout/rolloutReqFile")
(setf (get rollout::rolloutReqFile :request) rollout::rolloutReqFileRequest)
(setf (get rollout::rolloutReqFile :response) rollout::rolloutReqFileResponse)

(defmethod rollout::rolloutReqFileRequest
  (:response () (instance rollout::rolloutReqFileResponse :init)))

(setf (get rollout::rolloutReqFileRequest :md5sum-) "f682d82c4e2a8d10743450971038e4c0")
(setf (get rollout::rolloutReqFileRequest :datatype-) "rollout/rolloutReqFileRequest")
(setf (get rollout::rolloutReqFileRequest :definition-)
      "string file
---
float32[] states
bool success
")

(setf (get rollout::rolloutReqFileResponse :md5sum-) "f682d82c4e2a8d10743450971038e4c0")
(setf (get rollout::rolloutReqFileResponse :datatype-) "rollout/rolloutReqFileResponse")
(setf (get rollout::rolloutReqFileResponse :definition-)
      "string file
---
float32[] states
bool success
")



(provide :rollout/rolloutReqFile "f682d82c4e2a8d10743450971038e4c0")


