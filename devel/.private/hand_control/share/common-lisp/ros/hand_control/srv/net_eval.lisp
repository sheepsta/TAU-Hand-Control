; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude net_eval-request.msg.html

(cl:defclass <net_eval-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass net_eval-request (<net_eval-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <net_eval-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'net_eval-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<net_eval-request> is deprecated: use hand_control-srv:net_eval-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <net_eval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:state-val is deprecated.  Use hand_control-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <net_eval-request>) ostream)
  "Serializes a message object of type '<net_eval-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <net_eval-request>) istream)
  "Deserializes a message object of type '<net_eval-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<net_eval-request>)))
  "Returns string type for a service object of type '<net_eval-request>"
  "hand_control/net_evalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'net_eval-request)))
  "Returns string type for a service object of type 'net_eval-request"
  "hand_control/net_evalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<net_eval-request>)))
  "Returns md5sum for a message object of type '<net_eval-request>"
  "e3969ebe585f0d178688db6dd33c11d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'net_eval-request)))
  "Returns md5sum for a message object of type 'net_eval-request"
  "e3969ebe585f0d178688db6dd33c11d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<net_eval-request>)))
  "Returns full string definition for message of type '<net_eval-request>"
  (cl:format cl:nil "float32[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'net_eval-request)))
  "Returns full string definition for message of type 'net_eval-request"
  (cl:format cl:nil "float32[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <net_eval-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <net_eval-request>))
  "Converts a ROS message object to a list"
  (cl:list 'net_eval-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude net_eval-response.msg.html

(cl:defclass <net_eval-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass net_eval-response (<net_eval-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <net_eval-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'net_eval-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<net_eval-response> is deprecated: use hand_control-srv:net_eval-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <net_eval-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:action-val is deprecated.  Use hand_control-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <net_eval-response>) ostream)
  "Serializes a message object of type '<net_eval-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <net_eval-response>) istream)
  "Deserializes a message object of type '<net_eval-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<net_eval-response>)))
  "Returns string type for a service object of type '<net_eval-response>"
  "hand_control/net_evalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'net_eval-response)))
  "Returns string type for a service object of type 'net_eval-response"
  "hand_control/net_evalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<net_eval-response>)))
  "Returns md5sum for a message object of type '<net_eval-response>"
  "e3969ebe585f0d178688db6dd33c11d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'net_eval-response)))
  "Returns md5sum for a message object of type 'net_eval-response"
  "e3969ebe585f0d178688db6dd33c11d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<net_eval-response>)))
  "Returns full string definition for message of type '<net_eval-response>"
  (cl:format cl:nil "float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'net_eval-response)))
  "Returns full string definition for message of type 'net_eval-response"
  (cl:format cl:nil "float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <net_eval-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <net_eval-response>))
  "Converts a ROS message object to a list"
  (cl:list 'net_eval-response
    (cl:cons ':action (action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'net_eval)))
  'net_eval-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'net_eval)))
  'net_eval-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'net_eval)))
  "Returns string type for a service object of type '<net_eval>"
  "hand_control/net_eval")