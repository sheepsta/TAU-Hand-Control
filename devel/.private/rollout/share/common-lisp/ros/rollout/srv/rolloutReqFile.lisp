; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude rolloutReqFile-request.msg.html

(cl:defclass <rolloutReqFile-request> (roslisp-msg-protocol:ros-message)
  ((file
    :reader file
    :initarg :file
    :type cl:string
    :initform ""))
)

(cl:defclass rolloutReqFile-request (<rolloutReqFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rolloutReqFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rolloutReqFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<rolloutReqFile-request> is deprecated: use rollout-srv:rolloutReqFile-request instead.")))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <rolloutReqFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:file-val is deprecated.  Use rollout-srv:file instead.")
  (file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rolloutReqFile-request>) ostream)
  "Serializes a message object of type '<rolloutReqFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rolloutReqFile-request>) istream)
  "Deserializes a message object of type '<rolloutReqFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rolloutReqFile-request>)))
  "Returns string type for a service object of type '<rolloutReqFile-request>"
  "rollout/rolloutReqFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rolloutReqFile-request)))
  "Returns string type for a service object of type 'rolloutReqFile-request"
  "rollout/rolloutReqFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rolloutReqFile-request>)))
  "Returns md5sum for a message object of type '<rolloutReqFile-request>"
  "f682d82c4e2a8d10743450971038e4c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rolloutReqFile-request)))
  "Returns md5sum for a message object of type 'rolloutReqFile-request"
  "f682d82c4e2a8d10743450971038e4c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rolloutReqFile-request>)))
  "Returns full string definition for message of type '<rolloutReqFile-request>"
  (cl:format cl:nil "string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rolloutReqFile-request)))
  "Returns full string definition for message of type 'rolloutReqFile-request"
  (cl:format cl:nil "string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rolloutReqFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rolloutReqFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rolloutReqFile-request
    (cl:cons ':file (file msg))
))
;//! \htmlinclude rolloutReqFile-response.msg.html

(cl:defclass <rolloutReqFile-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass rolloutReqFile-response (<rolloutReqFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rolloutReqFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rolloutReqFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<rolloutReqFile-response> is deprecated: use rollout-srv:rolloutReqFile-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <rolloutReqFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:states-val is deprecated.  Use rollout-srv:states instead.")
  (states m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <rolloutReqFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:success-val is deprecated.  Use rollout-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rolloutReqFile-response>) ostream)
  "Serializes a message object of type '<rolloutReqFile-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rolloutReqFile-response>) istream)
  "Deserializes a message object of type '<rolloutReqFile-response>"
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
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rolloutReqFile-response>)))
  "Returns string type for a service object of type '<rolloutReqFile-response>"
  "rollout/rolloutReqFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rolloutReqFile-response)))
  "Returns string type for a service object of type 'rolloutReqFile-response"
  "rollout/rolloutReqFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rolloutReqFile-response>)))
  "Returns md5sum for a message object of type '<rolloutReqFile-response>"
  "f682d82c4e2a8d10743450971038e4c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rolloutReqFile-response)))
  "Returns md5sum for a message object of type 'rolloutReqFile-response"
  "f682d82c4e2a8d10743450971038e4c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rolloutReqFile-response>)))
  "Returns full string definition for message of type '<rolloutReqFile-response>"
  (cl:format cl:nil "float32[] states~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rolloutReqFile-response)))
  "Returns full string definition for message of type 'rolloutReqFile-response"
  (cl:format cl:nil "float32[] states~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rolloutReqFile-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rolloutReqFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rolloutReqFile-response
    (cl:cons ':states (states msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rolloutReqFile)))
  'rolloutReqFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rolloutReqFile)))
  'rolloutReqFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rolloutReqFile)))
  "Returns string type for a service object of type '<rolloutReqFile>"
  "rollout/rolloutReqFile")