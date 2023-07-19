; Auto-generated. Do not edit!


(cl:in-package hand_control-srv)


;//! \htmlinclude planroll-request.msg.html

(cl:defclass <planroll-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (planning_algorithm
    :reader planning_algorithm
    :initarg :planning_algorithm
    :type cl:string
    :initform ""))
)

(cl:defclass planroll-request (<planroll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <planroll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'planroll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<planroll-request> is deprecated: use hand_control-srv:planroll-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <planroll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:goal-val is deprecated.  Use hand_control-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'planning_algorithm-val :lambda-list '(m))
(cl:defmethod planning_algorithm-val ((m <planroll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:planning_algorithm-val is deprecated.  Use hand_control-srv:planning_algorithm instead.")
  (planning_algorithm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <planroll-request>) ostream)
  "Serializes a message object of type '<planroll-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_algorithm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_algorithm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <planroll-request>) istream)
  "Deserializes a message object of type '<planroll-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal)))
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
      (cl:setf (cl:slot-value msg 'planning_algorithm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_algorithm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<planroll-request>)))
  "Returns string type for a service object of type '<planroll-request>"
  "hand_control/planrollRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planroll-request)))
  "Returns string type for a service object of type 'planroll-request"
  "hand_control/planrollRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<planroll-request>)))
  "Returns md5sum for a message object of type '<planroll-request>"
  "dd0ec4b436084a05fc1f687964d711d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'planroll-request)))
  "Returns md5sum for a message object of type 'planroll-request"
  "dd0ec4b436084a05fc1f687964d711d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<planroll-request>)))
  "Returns full string definition for message of type '<planroll-request>"
  (cl:format cl:nil "float32[] goal~%string planning_algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'planroll-request)))
  "Returns full string definition for message of type 'planroll-request"
  (cl:format cl:nil "float32[] goal~%string planning_algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <planroll-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'planning_algorithm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <planroll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'planroll-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':planning_algorithm (planning_algorithm msg))
))
;//! \htmlinclude planroll-response.msg.html

(cl:defclass <planroll-response> (roslisp-msg-protocol:ros-message)
  ((suc
    :reader suc
    :initarg :suc
    :type cl:boolean
    :initform cl:nil)
   (file
    :reader file
    :initarg :file
    :type cl:string
    :initform ""))
)

(cl:defclass planroll-response (<planroll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <planroll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'planroll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-srv:<planroll-response> is deprecated: use hand_control-srv:planroll-response instead.")))

(cl:ensure-generic-function 'suc-val :lambda-list '(m))
(cl:defmethod suc-val ((m <planroll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:suc-val is deprecated.  Use hand_control-srv:suc instead.")
  (suc m))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <planroll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-srv:file-val is deprecated.  Use hand_control-srv:file instead.")
  (file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <planroll-response>) ostream)
  "Serializes a message object of type '<planroll-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suc) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <planroll-response>) istream)
  "Deserializes a message object of type '<planroll-response>"
    (cl:setf (cl:slot-value msg 'suc) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<planroll-response>)))
  "Returns string type for a service object of type '<planroll-response>"
  "hand_control/planrollResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planroll-response)))
  "Returns string type for a service object of type 'planroll-response"
  "hand_control/planrollResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<planroll-response>)))
  "Returns md5sum for a message object of type '<planroll-response>"
  "dd0ec4b436084a05fc1f687964d711d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'planroll-response)))
  "Returns md5sum for a message object of type 'planroll-response"
  "dd0ec4b436084a05fc1f687964d711d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<planroll-response>)))
  "Returns full string definition for message of type '<planroll-response>"
  (cl:format cl:nil "bool suc~%string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'planroll-response)))
  "Returns full string definition for message of type 'planroll-response"
  (cl:format cl:nil "bool suc~%string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <planroll-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <planroll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'planroll-response
    (cl:cons ':suc (suc msg))
    (cl:cons ':file (file msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'planroll)))
  'planroll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'planroll)))
  'planroll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planroll)))
  "Returns string type for a service object of type '<planroll>"
  "hand_control/planroll")