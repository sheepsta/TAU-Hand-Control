; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude RegraspObject-request.msg.html

(cl:defclass <RegraspObject-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RegraspObject-request (<RegraspObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegraspObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegraspObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<RegraspObject-request> is deprecated: use hand_control-srv:RegraspObject-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegraspObject-request>) ostream)
  "Serializes a message object of type '<RegraspObject-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegraspObject-request>) istream)
  "Deserializes a message object of type '<RegraspObject-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegraspObject-request>)))
  "Returns string type for a service object of type '<RegraspObject-request>"
  "hand_control/RegraspObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegraspObject-request)))
  "Returns string type for a service object of type 'RegraspObject-request"
  "hand_control/RegraspObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegraspObject-request>)))
  "Returns md5sum for a message object of type '<RegraspObject-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegraspObject-request)))
  "Returns md5sum for a message object of type 'RegraspObject-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegraspObject-request>)))
  "Returns full string definition for message of type '<RegraspObject-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegraspObject-request)))
  "Returns full string definition for message of type 'RegraspObject-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegraspObject-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegraspObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegraspObject-request
))
;//! \htmlinclude RegraspObject-response.msg.html

(cl:defclass <RegraspObject-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegraspObject-response (<RegraspObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegraspObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegraspObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<RegraspObject-response> is deprecated: use hand_control-srv:RegraspObject-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegraspObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:success-val is deprecated.  Use hand_control-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegraspObject-response>) ostream)
  "Serializes a message object of type '<RegraspObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegraspObject-response>) istream)
  "Deserializes a message object of type '<RegraspObject-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegraspObject-response>)))
  "Returns string type for a service object of type '<RegraspObject-response>"
  "hand_control/RegraspObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegraspObject-response)))
  "Returns string type for a service object of type 'RegraspObject-response"
  "hand_control/RegraspObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegraspObject-response>)))
  "Returns md5sum for a message object of type '<RegraspObject-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegraspObject-response)))
  "Returns md5sum for a message object of type 'RegraspObject-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegraspObject-response>)))
  "Returns full string definition for message of type '<RegraspObject-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegraspObject-response)))
  "Returns full string definition for message of type 'RegraspObject-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegraspObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegraspObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegraspObject-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegraspObject)))
  'RegraspObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegraspObject)))
  'RegraspObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegraspObject)))
  "Returns string type for a service object of type '<RegraspObject>"
  "hand_control/RegraspObject")