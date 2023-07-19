; Auto-generated. Do not edit!


(cl:in-package rollout-srv)


;//! \htmlinclude IsDropped-request.msg.html

(cl:defclass <IsDropped-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsDropped-request (<IsDropped-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsDropped-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsDropped-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<IsDropped-request> is deprecated: use rollout-srv:IsDropped-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsDropped-request>) ostream)
  "Serializes a message object of type '<IsDropped-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsDropped-request>) istream)
  "Deserializes a message object of type '<IsDropped-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsDropped-request>)))
  "Returns string type for a service object of type '<IsDropped-request>"
  "rollout/IsDroppedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsDropped-request)))
  "Returns string type for a service object of type 'IsDropped-request"
  "rollout/IsDroppedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsDropped-request>)))
  "Returns md5sum for a message object of type '<IsDropped-request>"
  "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsDropped-request)))
  "Returns md5sum for a message object of type 'IsDropped-request"
  "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsDropped-request>)))
  "Returns full string definition for message of type '<IsDropped-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsDropped-request)))
  "Returns full string definition for message of type 'IsDropped-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsDropped-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsDropped-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsDropped-request
))
;//! \htmlinclude IsDropped-response.msg.html

(cl:defclass <IsDropped-response> (roslisp-msg-protocol:ros-message)
  ((dropped
    :reader dropped
    :initarg :dropped
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsDropped-response (<IsDropped-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsDropped-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsDropped-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rollout-srv:<IsDropped-response> is deprecated: use rollout-srv:IsDropped-response instead.")))

(cl:ensure-generic-function 'dropped-val :lambda-list '(m))
(cl:defmethod dropped-val ((m <IsDropped-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rollout-srv:dropped-val is deprecated.  Use rollout-srv:dropped instead.")
  (dropped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsDropped-response>) ostream)
  "Serializes a message object of type '<IsDropped-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dropped) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsDropped-response>) istream)
  "Deserializes a message object of type '<IsDropped-response>"
    (cl:setf (cl:slot-value msg 'dropped) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsDropped-response>)))
  "Returns string type for a service object of type '<IsDropped-response>"
  "rollout/IsDroppedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsDropped-response)))
  "Returns string type for a service object of type 'IsDropped-response"
  "rollout/IsDroppedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsDropped-response>)))
  "Returns md5sum for a message object of type '<IsDropped-response>"
  "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsDropped-response)))
  "Returns md5sum for a message object of type 'IsDropped-response"
  "89b1ea20d43c8bbdf4c72f92a40ab2ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsDropped-response>)))
  "Returns full string definition for message of type '<IsDropped-response>"
  (cl:format cl:nil "bool dropped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsDropped-response)))
  "Returns full string definition for message of type 'IsDropped-response"
  (cl:format cl:nil "bool dropped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsDropped-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsDropped-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsDropped-response
    (cl:cons ':dropped (dropped msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsDropped)))
  'IsDropped-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsDropped)))
  'IsDropped-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsDropped)))
  "Returns string type for a service object of type '<IsDropped>"
  "rollout/IsDropped")