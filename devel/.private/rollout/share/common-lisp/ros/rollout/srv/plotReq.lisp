; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude plotReq-request.msg.html

(cl:defclass <plotReq-request> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass plotReq-request (<plotReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plotReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plotReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<plotReq-request> is deprecated: use rollout-srv:plotReq-request instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <plotReq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:states-val is deprecated.  Use rollout-srv:states instead.")
  (states m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <plotReq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:filename-val is deprecated.  Use rollout-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plotReq-request>) ostream)
  "Serializes a message object of type '<plotReq-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plotReq-request>) istream)
  "Deserializes a message object of type '<plotReq-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plotReq-request>)))
  "Returns string type for a service object of type '<plotReq-request>"
  "rollout/plotReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plotReq-request)))
  "Returns string type for a service object of type 'plotReq-request"
  "rollout/plotReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plotReq-request>)))
  "Returns md5sum for a message object of type '<plotReq-request>"
  "1148cadfcfa6d659984233cc92414368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plotReq-request)))
  "Returns md5sum for a message object of type 'plotReq-request"
  "1148cadfcfa6d659984233cc92414368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plotReq-request>)))
  "Returns full string definition for message of type '<plotReq-request>"
  (cl:format cl:nil "float32[] states~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plotReq-request)))
  "Returns full string definition for message of type 'plotReq-request"
  (cl:format cl:nil "float32[] states~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plotReq-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plotReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'plotReq-request
    (cl:cons ':states (states msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude plotReq-response.msg.html

(cl:defclass <plotReq-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass plotReq-response (<plotReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plotReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plotReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<plotReq-response> is deprecated: use rollout-srv:plotReq-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plotReq-response>) ostream)
  "Serializes a message object of type '<plotReq-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plotReq-response>) istream)
  "Deserializes a message object of type '<plotReq-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plotReq-response>)))
  "Returns string type for a service object of type '<plotReq-response>"
  "rollout/plotReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plotReq-response)))
  "Returns string type for a service object of type 'plotReq-response"
  "rollout/plotReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plotReq-response>)))
  "Returns md5sum for a message object of type '<plotReq-response>"
  "1148cadfcfa6d659984233cc92414368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plotReq-response)))
  "Returns md5sum for a message object of type 'plotReq-response"
  "1148cadfcfa6d659984233cc92414368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plotReq-response>)))
  "Returns full string definition for message of type '<plotReq-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plotReq-response)))
  "Returns full string definition for message of type 'plotReq-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plotReq-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plotReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'plotReq-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'plotReq)))
  'plotReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'plotReq)))
  'plotReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plotReq)))
  "Returns string type for a service object of type '<plotReq>"
  "rollout/plotReq")