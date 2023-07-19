; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude TargetAngles-request.msg.html

(cl:defclass <TargetAngles-request> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TargetAngles-request (<TargetAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<TargetAngles-request> is deprecated: use rollout-srv:TargetAngles-request instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <TargetAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:angles-val is deprecated.  Use rollout-srv:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetAngles-request>) ostream)
  "Serializes a message object of type '<TargetAngles-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetAngles-request>) istream)
  "Deserializes a message object of type '<TargetAngles-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetAngles-request>)))
  "Returns string type for a service object of type '<TargetAngles-request>"
  "rollout/TargetAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetAngles-request)))
  "Returns string type for a service object of type 'TargetAngles-request"
  "rollout/TargetAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetAngles-request>)))
  "Returns md5sum for a message object of type '<TargetAngles-request>"
  "370f9a53bb9fc4e03100f718ee81318b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetAngles-request)))
  "Returns md5sum for a message object of type 'TargetAngles-request"
  "370f9a53bb9fc4e03100f718ee81318b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetAngles-request>)))
  "Returns full string definition for message of type '<TargetAngles-request>"
  (cl:format cl:nil "float32[] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetAngles-request)))
  "Returns full string definition for message of type 'TargetAngles-request"
  (cl:format cl:nil "float32[] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetAngles-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetAngles-request
    (cl:cons ':angles (angles msg))
))
;//! \htmlinclude TargetAngles-response.msg.html

(cl:defclass <TargetAngles-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TargetAngles-response (<TargetAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<TargetAngles-response> is deprecated: use rollout-srv:TargetAngles-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TargetAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:success-val is deprecated.  Use rollout-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetAngles-response>) ostream)
  "Serializes a message object of type '<TargetAngles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetAngles-response>) istream)
  "Deserializes a message object of type '<TargetAngles-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetAngles-response>)))
  "Returns string type for a service object of type '<TargetAngles-response>"
  "rollout/TargetAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetAngles-response)))
  "Returns string type for a service object of type 'TargetAngles-response"
  "rollout/TargetAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetAngles-response>)))
  "Returns md5sum for a message object of type '<TargetAngles-response>"
  "370f9a53bb9fc4e03100f718ee81318b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetAngles-response)))
  "Returns md5sum for a message object of type 'TargetAngles-response"
  "370f9a53bb9fc4e03100f718ee81318b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetAngles-response>)))
  "Returns full string definition for message of type '<TargetAngles-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetAngles-response)))
  "Returns full string definition for message of type 'TargetAngles-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetAngles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetAngles-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TargetAngles)))
  'TargetAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TargetAngles)))
  'TargetAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetAngles)))
  "Returns string type for a service object of type '<TargetAngles>"
  "rollout/TargetAngles")