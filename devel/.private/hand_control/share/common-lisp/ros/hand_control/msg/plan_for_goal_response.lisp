; Auto-generated. Do not edit!


(cl:in-package hand_control-msg)


;//! \htmlinclude plan_for_goal_response.msg.html

(cl:defclass <plan_for_goal_response> (roslisp-msg-protocol:ros-message)
  ((planned_actions
    :reader planned_actions
    :initarg :planned_actions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (planned_path
    :reader planned_path
    :initarg :planned_path
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reached_goal
    :reader reached_goal
    :initarg :reached_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass plan_for_goal_response (<plan_for_goal_response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plan_for_goal_response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plan_for_goal_response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-msg:<plan_for_goal_response> is deprecated: use hand_control-msg:plan_for_goal_response instead.")))

(cl:ensure-generic-function 'planned_actions-val :lambda-list '(m))
(cl:defmethod planned_actions-val ((m <plan_for_goal_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:planned_actions-val is deprecated.  Use hand_control-msg:planned_actions instead.")
  (planned_actions m))

(cl:ensure-generic-function 'planned_path-val :lambda-list '(m))
(cl:defmethod planned_path-val ((m <plan_for_goal_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:planned_path-val is deprecated.  Use hand_control-msg:planned_path instead.")
  (planned_path m))

(cl:ensure-generic-function 'reached_goal-val :lambda-list '(m))
(cl:defmethod reached_goal-val ((m <plan_for_goal_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:reached_goal-val is deprecated.  Use hand_control-msg:reached_goal instead.")
  (reached_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plan_for_goal_response>) ostream)
  "Serializes a message object of type '<plan_for_goal_response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planned_actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'planned_actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planned_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'planned_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plan_for_goal_response>) istream)
  "Deserializes a message object of type '<plan_for_goal_response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planned_actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planned_actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planned_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planned_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'reached_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plan_for_goal_response>)))
  "Returns string type for a message object of type '<plan_for_goal_response>"
  "hand_control/plan_for_goal_response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plan_for_goal_response)))
  "Returns string type for a message object of type 'plan_for_goal_response"
  "hand_control/plan_for_goal_response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plan_for_goal_response>)))
  "Returns md5sum for a message object of type '<plan_for_goal_response>"
  "99e054cfbf7412c793674c19bfc96a83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plan_for_goal_response)))
  "Returns md5sum for a message object of type 'plan_for_goal_response"
  "99e054cfbf7412c793674c19bfc96a83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plan_for_goal_response>)))
  "Returns full string definition for message of type '<plan_for_goal_response>"
  (cl:format cl:nil "float64[] planned_actions~%float64[] planned_path~%bool reached_goal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plan_for_goal_response)))
  "Returns full string definition for message of type 'plan_for_goal_response"
  (cl:format cl:nil "float64[] planned_actions~%float64[] planned_path~%bool reached_goal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plan_for_goal_response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planned_actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planned_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plan_for_goal_response>))
  "Converts a ROS message object to a list"
  (cl:list 'plan_for_goal_response
    (cl:cons ':planned_actions (planned_actions msg))
    (cl:cons ':planned_path (planned_path msg))
    (cl:cons ':reached_goal (reached_goal msg))
))
