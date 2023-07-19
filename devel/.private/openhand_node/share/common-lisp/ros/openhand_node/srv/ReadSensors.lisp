; Auto-generated. Do not edit!


(cl:in-package openhand_node-srv)


;//! \htmlinclude ReadSensors-request.msg.html

(cl:defclass <ReadSensors-request> (roslisp-msg-protocol:ros-message)
  ((num_sensors
    :reader num_sensors
    :initarg :num_sensors
    :type cl:integer
    :initform 0))
)

(cl:defclass ReadSensors-request (<ReadSensors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadSensors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadSensors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name openhand_node-srv:<ReadSensors-request> is deprecated: use openhand_node-srv:ReadSensors-request instead.")))

(cl:ensure-generic-function 'num_sensors-val :lambda-list '(m))
(cl:defmethod num_sensors-val ((m <ReadSensors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openhand_node-srv:num_sensors-val is deprecated.  Use openhand_node-srv:num_sensors instead.")
  (num_sensors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadSensors-request>) ostream)
  "Serializes a message object of type '<ReadSensors-request>"
  (cl:let* ((signed (cl:slot-value msg 'num_sensors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadSensors-request>) istream)
  "Deserializes a message object of type '<ReadSensors-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_sensors) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadSensors-request>)))
  "Returns string type for a service object of type '<ReadSensors-request>"
  "openhand_node/ReadSensorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSensors-request)))
  "Returns string type for a service object of type 'ReadSensors-request"
  "openhand_node/ReadSensorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadSensors-request>)))
  "Returns md5sum for a message object of type '<ReadSensors-request>"
  "84e09e818ebe556ee5cef963e282890f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadSensors-request)))
  "Returns md5sum for a message object of type 'ReadSensors-request"
  "84e09e818ebe556ee5cef963e282890f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadSensors-request>)))
  "Returns full string definition for message of type '<ReadSensors-request>"
  (cl:format cl:nil "int32 num_sensors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadSensors-request)))
  "Returns full string definition for message of type 'ReadSensors-request"
  (cl:format cl:nil "int32 num_sensors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadSensors-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadSensors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadSensors-request
    (cl:cons ':num_sensors (num_sensors msg))
))
;//! \htmlinclude ReadSensors-response.msg.html

(cl:defclass <ReadSensors-response> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (flex
    :reader flex
    :initarg :flex
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ReadSensors-response (<ReadSensors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadSensors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadSensors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name openhand_node-srv:<ReadSensors-response> is deprecated: use openhand_node-srv:ReadSensors-response instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ReadSensors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openhand_node-srv:force-val is deprecated.  Use openhand_node-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'flex-val :lambda-list '(m))
(cl:defmethod flex-val ((m <ReadSensors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openhand_node-srv:flex-val is deprecated.  Use openhand_node-srv:flex instead.")
  (flex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadSensors-response>) ostream)
  "Serializes a message object of type '<ReadSensors-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'force))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'flex))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadSensors-response>) istream)
  "Deserializes a message object of type '<ReadSensors-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flex) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadSensors-response>)))
  "Returns string type for a service object of type '<ReadSensors-response>"
  "openhand_node/ReadSensorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSensors-response)))
  "Returns string type for a service object of type 'ReadSensors-response"
  "openhand_node/ReadSensorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadSensors-response>)))
  "Returns md5sum for a message object of type '<ReadSensors-response>"
  "84e09e818ebe556ee5cef963e282890f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadSensors-response)))
  "Returns md5sum for a message object of type 'ReadSensors-response"
  "84e09e818ebe556ee5cef963e282890f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadSensors-response>)))
  "Returns full string definition for message of type '<ReadSensors-response>"
  (cl:format cl:nil "float32[] force~%float32[] flex~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadSensors-response)))
  "Returns full string definition for message of type 'ReadSensors-response"
  (cl:format cl:nil "float32[] force~%float32[] flex~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadSensors-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadSensors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadSensors-response
    (cl:cons ':force (force msg))
    (cl:cons ':flex (flex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadSensors)))
  'ReadSensors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadSensors)))
  'ReadSensors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadSensors)))
  "Returns string type for a service object of type '<ReadSensors>"
  "openhand_node/ReadSensors")