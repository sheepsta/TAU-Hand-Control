; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude ObjOrientation-request.msg.html

(cl:defclass <ObjOrientation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ObjOrientation-request (<ObjOrientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjOrientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjOrientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<ObjOrientation-request> is deprecated: use hand_control-srv:ObjOrientation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjOrientation-request>) ostream)
  "Serializes a message object of type '<ObjOrientation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjOrientation-request>) istream)
  "Deserializes a message object of type '<ObjOrientation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjOrientation-request>)))
  "Returns string type for a service object of type '<ObjOrientation-request>"
  "hand_control/ObjOrientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjOrientation-request)))
  "Returns string type for a service object of type 'ObjOrientation-request"
  "hand_control/ObjOrientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjOrientation-request>)))
  "Returns md5sum for a message object of type '<ObjOrientation-request>"
  "8d0c22b39a7964032a79fdf4de10eb10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjOrientation-request)))
  "Returns md5sum for a message object of type 'ObjOrientation-request"
  "8d0c22b39a7964032a79fdf4de10eb10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjOrientation-request>)))
  "Returns full string definition for message of type '<ObjOrientation-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjOrientation-request)))
  "Returns full string definition for message of type 'ObjOrientation-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjOrientation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjOrientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjOrientation-request
))
;//! \htmlinclude ObjOrientation-response.msg.html

(cl:defclass <ObjOrientation-response> (roslisp-msg-protocol:ros-message)
  ((ori
    :reader ori
    :initarg :ori
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjOrientation-response (<ObjOrientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjOrientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjOrientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<ObjOrientation-response> is deprecated: use hand_control-srv:ObjOrientation-response instead.")))

(cl:ensure-generic-function 'ori-val :lambda-list '(m))
(cl:defmethod ori-val ((m <ObjOrientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:ori-val is deprecated.  Use hand_control-srv:ori instead.")
  (ori m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjOrientation-response>) ostream)
  "Serializes a message object of type '<ObjOrientation-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ori))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjOrientation-response>) istream)
  "Deserializes a message object of type '<ObjOrientation-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ori) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjOrientation-response>)))
  "Returns string type for a service object of type '<ObjOrientation-response>"
  "hand_control/ObjOrientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjOrientation-response)))
  "Returns string type for a service object of type 'ObjOrientation-response"
  "hand_control/ObjOrientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjOrientation-response>)))
  "Returns md5sum for a message object of type '<ObjOrientation-response>"
  "8d0c22b39a7964032a79fdf4de10eb10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjOrientation-response)))
  "Returns md5sum for a message object of type 'ObjOrientation-response"
  "8d0c22b39a7964032a79fdf4de10eb10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjOrientation-response>)))
  "Returns full string definition for message of type '<ObjOrientation-response>"
  (cl:format cl:nil "float32 ori~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjOrientation-response)))
  "Returns full string definition for message of type 'ObjOrientation-response"
  (cl:format cl:nil "float32 ori~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjOrientation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjOrientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjOrientation-response
    (cl:cons ':ori (ori msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObjOrientation)))
  'ObjOrientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObjOrientation)))
  'ObjOrientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjOrientation)))
  "Returns string type for a service object of type '<ObjOrientation>"
  "hand_control/ObjOrientation")