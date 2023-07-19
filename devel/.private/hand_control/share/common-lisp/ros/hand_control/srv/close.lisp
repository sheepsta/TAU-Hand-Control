; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude close-request.msg.html

(cl:defclass <close-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass close-request (<close-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <close-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'close-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<close-request> is deprecated: use hand_control-srv:close-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <close-request>) ostream)
  "Serializes a message object of type '<close-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <close-request>) istream)
  "Deserializes a message object of type '<close-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<close-request>)))
  "Returns string type for a service object of type '<close-request>"
  "hand_control/closeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'close-request)))
  "Returns string type for a service object of type 'close-request"
  "hand_control/closeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<close-request>)))
  "Returns md5sum for a message object of type '<close-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'close-request)))
  "Returns md5sum for a message object of type 'close-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<close-request>)))
  "Returns full string definition for message of type '<close-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'close-request)))
  "Returns full string definition for message of type 'close-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <close-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <close-request>))
  "Converts a ROS message object to a list"
  (cl:list 'close-request
))
;//! \htmlinclude close-response.msg.html

(cl:defclass <close-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass close-response (<close-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <close-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'close-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<close-response> is deprecated: use hand_control-srv:close-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <close-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:success-val is deprecated.  Use hand_control-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <close-response>) ostream)
  "Serializes a message object of type '<close-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <close-response>) istream)
  "Deserializes a message object of type '<close-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<close-response>)))
  "Returns string type for a service object of type '<close-response>"
  "hand_control/closeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'close-response)))
  "Returns string type for a service object of type 'close-response"
  "hand_control/closeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<close-response>)))
  "Returns md5sum for a message object of type '<close-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'close-response)))
  "Returns md5sum for a message object of type 'close-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<close-response>)))
  "Returns full string definition for message of type '<close-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'close-response)))
  "Returns full string definition for message of type 'close-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <close-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <close-response>))
  "Converts a ROS message object to a list"
  (cl:list 'close-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'close)))
  'close-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'close)))
  'close-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'close)))
  "Returns string type for a service object of type '<close>"
  "hand_control/close")