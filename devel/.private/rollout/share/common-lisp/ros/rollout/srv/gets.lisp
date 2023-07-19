; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude gets-request.msg.html

(cl:defclass <gets-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass gets-request (<gets-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gets-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gets-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<gets-request> is deprecated: use rollout-srv:gets-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gets-request>) ostream)
  "Serializes a message object of type '<gets-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gets-request>) istream)
  "Deserializes a message object of type '<gets-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gets-request>)))
  "Returns string type for a service object of type '<gets-request>"
  "rollout/getsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gets-request)))
  "Returns string type for a service object of type 'gets-request"
  "rollout/getsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gets-request>)))
  "Returns md5sum for a message object of type '<gets-request>"
  "8ad8157a5872cd29232e606a0c998cb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gets-request)))
  "Returns md5sum for a message object of type 'gets-request"
  "8ad8157a5872cd29232e606a0c998cb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gets-request>)))
  "Returns full string definition for message of type '<gets-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gets-request)))
  "Returns full string definition for message of type 'gets-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gets-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gets-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gets-request
))
;//! \htmlinclude gets-response.msg.html

(cl:defclass <gets-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (time
    :reader time
    :initarg :time
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass gets-response (<gets-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gets-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gets-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<gets-response> is deprecated: use rollout-srv:gets-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <gets-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:states-val is deprecated.  Use rollout-srv:states instead.")
  (states m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <gets-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:actions-val is deprecated.  Use rollout-srv:actions instead.")
  (actions m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <gets-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:time-val is deprecated.  Use rollout-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gets-response>) ostream)
  "Serializes a message object of type '<gets-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gets-response>) istream)
  "Deserializes a message object of type '<gets-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
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
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
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
  (cl:setf (cl:slot-value msg 'time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gets-response>)))
  "Returns string type for a service object of type '<gets-response>"
  "rollout/getsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gets-response)))
  "Returns string type for a service object of type 'gets-response"
  "rollout/getsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gets-response>)))
  "Returns md5sum for a message object of type '<gets-response>"
  "8ad8157a5872cd29232e606a0c998cb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gets-response)))
  "Returns md5sum for a message object of type 'gets-response"
  "8ad8157a5872cd29232e606a0c998cb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gets-response>)))
  "Returns full string definition for message of type '<gets-response>"
  (cl:format cl:nil "float32[] states~%float32[] actions~%float32[] time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gets-response)))
  "Returns full string definition for message of type 'gets-response"
  (cl:format cl:nil "float32[] states~%float32[] actions~%float32[] time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gets-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gets-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gets-response
    (cl:cons ':states (states msg))
    (cl:cons ':actions (actions msg))
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gets)))
  'gets-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gets)))
  'gets-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gets)))
  "Returns string type for a service object of type '<gets>"
  "rollout/gets")