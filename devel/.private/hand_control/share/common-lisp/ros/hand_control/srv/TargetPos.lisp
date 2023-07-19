; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude TargetPos-request.msg.html

(cl:defclass <TargetPos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TargetPos-request (<TargetPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<TargetPos-request> is deprecated: use hand_control-srv:TargetPos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPos-request>) ostream)
  "Serializes a message object of type '<TargetPos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPos-request>) istream)
  "Deserializes a message object of type '<TargetPos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPos-request>)))
  "Returns string type for a service object of type '<TargetPos-request>"
  "hand_control/TargetPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPos-request)))
  "Returns string type for a service object of type 'TargetPos-request"
  "hand_control/TargetPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPos-request>)))
  "Returns md5sum for a message object of type '<TargetPos-request>"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPos-request)))
  "Returns md5sum for a message object of type 'TargetPos-request"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPos-request>)))
  "Returns full string definition for message of type '<TargetPos-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPos-request)))
  "Returns full string definition for message of type 'TargetPos-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPos-request
))
;//! \htmlinclude TargetPos-response.msg.html

(cl:defclass <TargetPos-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TargetPos-response (<TargetPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<TargetPos-response> is deprecated: use hand_control-srv:TargetPos-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <TargetPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:angle-val is deprecated.  Use hand_control-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPos-response>) ostream)
  "Serializes a message object of type '<TargetPos-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPos-response>) istream)
  "Deserializes a message object of type '<TargetPos-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPos-response>)))
  "Returns string type for a service object of type '<TargetPos-response>"
  "hand_control/TargetPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPos-response)))
  "Returns string type for a service object of type 'TargetPos-response"
  "hand_control/TargetPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPos-response>)))
  "Returns md5sum for a message object of type '<TargetPos-response>"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPos-response)))
  "Returns md5sum for a message object of type 'TargetPos-response"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPos-response>)))
  "Returns full string definition for message of type '<TargetPos-response>"
  (cl:format cl:nil "float32[] angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPos-response)))
  "Returns full string definition for message of type 'TargetPos-response"
  (cl:format cl:nil "float32[] angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPos-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPos-response
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TargetPos)))
  'TargetPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TargetPos)))
  'TargetPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPos)))
  "Returns string type for a service object of type '<TargetPos>"
  "hand_control/TargetPos")