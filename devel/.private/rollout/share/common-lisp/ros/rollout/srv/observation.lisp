; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude observation-request.msg.html

(cl:defclass <observation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass observation-request (<observation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <observation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'observation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<observation-request> is deprecated: use rollout-srv:observation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <observation-request>) ostream)
  "Serializes a message object of type '<observation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <observation-request>) istream)
  "Deserializes a message object of type '<observation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<observation-request>)))
  "Returns string type for a service object of type '<observation-request>"
  "rollout/observationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'observation-request)))
  "Returns string type for a service object of type 'observation-request"
  "rollout/observationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<observation-request>)))
  "Returns md5sum for a message object of type '<observation-request>"
  "3faa55f8813856aab6c4371b84f9b124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'observation-request)))
  "Returns md5sum for a message object of type 'observation-request"
  "3faa55f8813856aab6c4371b84f9b124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<observation-request>)))
  "Returns full string definition for message of type '<observation-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'observation-request)))
  "Returns full string definition for message of type 'observation-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <observation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <observation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'observation-request
))
;//! \htmlinclude observation-response.msg.html

(cl:defclass <observation-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass observation-response (<observation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <observation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'observation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<observation-response> is deprecated: use rollout-srv:observation-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <observation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:state-val is deprecated.  Use rollout-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <observation-response>) ostream)
  "Serializes a message object of type '<observation-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <observation-response>) istream)
  "Deserializes a message object of type '<observation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<observation-response>)))
  "Returns string type for a service object of type '<observation-response>"
  "rollout/observationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'observation-response)))
  "Returns string type for a service object of type 'observation-response"
  "rollout/observationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<observation-response>)))
  "Returns md5sum for a message object of type '<observation-response>"
  "3faa55f8813856aab6c4371b84f9b124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'observation-response)))
  "Returns md5sum for a message object of type 'observation-response"
  "3faa55f8813856aab6c4371b84f9b124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<observation-response>)))
  "Returns full string definition for message of type '<observation-response>"
  (cl:format cl:nil "float32[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'observation-response)))
  "Returns full string definition for message of type 'observation-response"
  (cl:format cl:nil "float32[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <observation-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <observation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'observation-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'observation)))
  'observation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'observation)))
  'observation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'observation)))
  "Returns string type for a service object of type '<observation>"
  "rollout/observation")