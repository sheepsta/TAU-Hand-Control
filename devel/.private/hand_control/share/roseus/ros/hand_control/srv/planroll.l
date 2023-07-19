;; Auto-generated. Do not edit!


(when (boundp 'hand_control::planroll)
  (if (not (find-package "HAND_CONTROL"))
    (make-package "HAND_CONTROL"))
  (shadow 'planroll (find-package "HAND_CONTROL")))
(unless (find-package "HAND_CONTROL::PLANROLL")
  (make-package "HAND_CONTROL::PLANROLL"))
(unless (find-package "HAND_CONTROL::PLANROLLREQUEST")
  (make-package "HAND_CONTROL::PLANROLLREQUEST"))
(unless (find-package "HAND_CONTROL::PLANROLLRESPONSE")
  (make-package "HAND_CONTROL::PLANROLLRESPONSE"))

(in-package "ROS")





(defclass hand_control::planrollRequest
  :super ros::object
  :slots (_goal _planning_algorithm ))

(defmethod hand_control::planrollRequest
  (:init
   (&key
    ((:goal __goal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:planning_algorithm __planning_algorithm) "")
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _planning_algorithm (string __planning_algorithm))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:planning_algorithm
   (&optional __planning_algorithm)
   (if __planning_algorithm (setq _planning_algorithm __planning_algorithm)) _planning_algorithm)
  (:serialization-length
   ()
   (+
    ;; float32[] _goal
    (* 4    (length _goal)) 4
    ;; string _planning_algorithm
    4 (length _planning_algorithm)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _goal
     (write-long (length _goal) s)
     (dotimes (i (length _goal))
       (sys::poke (elt _goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _planning_algorithm
       (write-long (length _planning_algorithm) s) (princ _planning_algorithm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _planning_algorithm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_algorithm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_control::planrollResponse
  :super ros::object
  :slots (_suc _file ))

(defmethod hand_control::planrollResponse
  (:init
   (&key
    ((:suc __suc) nil)
    ((:file __file) "")
    )
   (send-super :init)
   (setq _suc __suc)
   (setq _file (string __file))
   self)
  (:suc
   (&optional __suc)
   (if __suc (setq _suc __suc)) _suc)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:serialization-length
   ()
   (+
    ;; bool _suc
    1
    ;; string _file
    4 (length _file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _suc
       (if _suc (write-byte -1 s) (write-byte 0 s))
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _suc
     (setq _suc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hand_control::planroll
  :super ros::object
  :slots ())

(setf (get hand_control::planroll :md5sum-) "dd0ec4b436084a05fc1f687964d711d5")
(setf (get hand_control::planroll :datatype-) "hand_control/planroll")
(setf (get hand_control::planroll :request) hand_control::planrollRequest)
(setf (get hand_control::planroll :response) hand_control::planrollResponse)

(defmethod hand_control::planrollRequest
  (:response () (instance hand_control::planrollResponse :init)))

(setf (get hand_control::planrollRequest :md5sum-) "dd0ec4b436084a05fc1f687964d711d5")
(setf (get hand_control::planrollRequest :datatype-) "hand_control/planrollRequest")
(setf (get hand_control::planrollRequest :definition-)
      "float32[] goal
string planning_algorithm
---
bool suc
string file
")

(setf (get hand_control::planrollResponse :md5sum-) "dd0ec4b436084a05fc1f687964d711d5")
(setf (get hand_control::planrollResponse :datatype-) "hand_control/planrollResponse")
(setf (get hand_control::planrollResponse :definition-)
      "float32[] goal
string planning_algorithm
---
bool suc
string file
")



(provide :hand_control/planroll "dd0ec4b436084a05fc1f687964d711d5")


