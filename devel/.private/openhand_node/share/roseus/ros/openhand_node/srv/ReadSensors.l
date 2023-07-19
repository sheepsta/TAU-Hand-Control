;; Auto-generated. Do not edit!


(when (boundp 'openhand_node::ReadSensors)
  (if (not (find-package "OPENHAND_NODE"))
    (make-package "OPENHAND_NODE"))
  (shadow 'ReadSensors (find-package "OPENHAND_NODE")))
(unless (find-package "OPENHAND_NODE::READSENSORS")
  (make-package "OPENHAND_NODE::READSENSORS"))
(unless (find-package "OPENHAND_NODE::READSENSORSREQUEST")
  (make-package "OPENHAND_NODE::READSENSORSREQUEST"))
(unless (find-package "OPENHAND_NODE::READSENSORSRESPONSE")
  (make-package "OPENHAND_NODE::READSENSORSRESPONSE"))

(in-package "ROS")





(defclass openhand_node::ReadSensorsRequest
  :super ros::object
  :slots (_num_sensors ))

(defmethod openhand_node::ReadSensorsRequest
  (:init
   (&key
    ((:num_sensors __num_sensors) 0)
    )
   (send-super :init)
   (setq _num_sensors (round __num_sensors))
   self)
  (:num_sensors
   (&optional __num_sensors)
   (if __num_sensors (setq _num_sensors __num_sensors)) _num_sensors)
  (:serialization-length
   ()
   (+
    ;; int32 _num_sensors
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_sensors
       (write-long _num_sensors s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_sensors
     (setq _num_sensors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass openhand_node::ReadSensorsResponse
  :super ros::object
  :slots (_force _flex ))

(defmethod openhand_node::ReadSensorsResponse
  (:init
   (&key
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:flex __flex) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _force __force)
   (setq _flex __flex)
   self)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:flex
   (&optional __flex)
   (if __flex (setq _flex __flex)) _flex)
  (:serialization-length
   ()
   (+
    ;; float32[] _force
    (* 4    (length _force)) 4
    ;; float32[] _flex
    (* 4    (length _flex)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _force
     (write-long (length _force) s)
     (dotimes (i (length _force))
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _flex
     (write-long (length _flex) s)
     (dotimes (i (length _flex))
       (sys::poke (elt _flex i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _flex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flex i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass openhand_node::ReadSensors
  :super ros::object
  :slots ())

(setf (get openhand_node::ReadSensors :md5sum-) "84e09e818ebe556ee5cef963e282890f")
(setf (get openhand_node::ReadSensors :datatype-) "openhand_node/ReadSensors")
(setf (get openhand_node::ReadSensors :request) openhand_node::ReadSensorsRequest)
(setf (get openhand_node::ReadSensors :response) openhand_node::ReadSensorsResponse)

(defmethod openhand_node::ReadSensorsRequest
  (:response () (instance openhand_node::ReadSensorsResponse :init)))

(setf (get openhand_node::ReadSensorsRequest :md5sum-) "84e09e818ebe556ee5cef963e282890f")
(setf (get openhand_node::ReadSensorsRequest :datatype-) "openhand_node/ReadSensorsRequest")
(setf (get openhand_node::ReadSensorsRequest :definition-)
      "int32 num_sensors
---
float32[] force
float32[] flex


")

(setf (get openhand_node::ReadSensorsResponse :md5sum-) "84e09e818ebe556ee5cef963e282890f")
(setf (get openhand_node::ReadSensorsResponse :datatype-) "openhand_node/ReadSensorsResponse")
(setf (get openhand_node::ReadSensorsResponse :definition-)
      "int32 num_sensors
---
float32[] force
float32[] flex


")



(provide :openhand_node/ReadSensors "84e09e818ebe556ee5cef963e282890f")


