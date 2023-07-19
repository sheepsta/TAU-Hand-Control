; Auto-generated. Do not edit!


(cl:in-package hand_control-msg)


;//! \htmlinclude plan_for_goal_request.msg.html

(cl:defclass <plan_for_goal_request> (roslisp-msg-protocol:ros-message)
  ((goal_state
    :reader goal_state
    :initarg :goal_state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (start_state
    :reader start_state
    :initarg :start_state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_radius
    :reader goal_radius
    :initarg :goal_radius
    :type cl:float
    :initform 0.0)
   (time_limit
    :reader time_limit
    :initarg :time_limit
    :type cl:float
    :initform 0.0)
   (probability_success_threshold
    :reader probability_success_threshold
    :initarg :probability_success_threshold
    :type cl:float
    :initform 0.0)
   (planning_algorithm
    :reader planning_algorithm
    :initarg :planning_algorithm
    :type cl:string
    :initform ""))
)

(cl:defclass plan_for_goal_request (<plan_for_goal_request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plan_for_goal_request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plan_for_goal_request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_control-msg:<plan_for_goal_request> is deprecated: use hand_control-msg:plan_for_goal_request instead.")))

(cl:ensure-generic-function 'goal_state-val :lambda-list '(m))
(cl:defmethod goal_state-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:goal_state-val is deprecated.  Use hand_control-msg:goal_state instead.")
  (goal_state m))

(cl:ensure-generic-function 'start_state-val :lambda-list '(m))
(cl:defmethod start_state-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:start_state-val is deprecated.  Use hand_control-msg:start_state instead.")
  (start_state m))

(cl:ensure-generic-function 'goal_radius-val :lambda-list '(m))
(cl:defmethod goal_radius-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:goal_radius-val is deprecated.  Use hand_control-msg:goal_radius instead.")
  (goal_radius m))

(cl:ensure-generic-function 'time_limit-val :lambda-list '(m))
(cl:defmethod time_limit-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:time_limit-val is deprecated.  Use hand_control-msg:time_limit instead.")
  (time_limit m))

(cl:ensure-generic-function 'probability_success_threshold-val :lambda-list '(m))
(cl:defmethod probability_success_threshold-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:probability_success_threshold-val is deprecated.  Use hand_control-msg:probability_success_threshold instead.")
  (probability_success_threshold m))

(cl:ensure-generic-function 'planning_algorithm-val :lambda-list '(m))
(cl:defmethod planning_algorithm-val ((m <plan_for_goal_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_control-msg:planning_algorithm-val is deprecated.  Use hand_control-msg:planning_algorithm instead.")
  (planning_algorithm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plan_for_goal_request>) ostream)
  "Serializes a message object of type '<plan_for_goal_request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_state))))
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
   (cl:slot-value msg 'goal_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_state))))
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
   (cl:slot-value msg 'start_state))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability_success_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_algorithm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_algorithm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plan_for_goal_request>) istream)
  "Deserializes a message object of type '<plan_for_goal_request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_state)))
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
  (cl:setf (cl:slot-value msg 'start_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_state)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability_success_threshold) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plan_for_goal_request>)))
  "Returns string type for a message object of type '<plan_for_goal_request>"
  "hand_control/plan_for_goal_request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plan_for_goal_request)))
  "Returns string type for a message object of type 'plan_for_goal_request"
  "hand_control/plan_for_goal_request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plan_for_goal_request>)))
  "Returns md5sum for a message object of type '<plan_for_goal_request>"
  "14a5c7b5abd5bbd2576cf26f819de0bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plan_for_goal_request)))
  "Returns md5sum for a message object of type 'plan_for_goal_request"
  "14a5c7b5abd5bbd2576cf26f819de0bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plan_for_goal_request>)))
  "Returns full string definition for message of type '<plan_for_goal_request>"
  (cl:format cl:nil "float64[] goal_state~%float64[] start_state~%float64 goal_radius~%float64 time_limit~%float64 probability_success_threshold~%string planning_algorithm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plan_for_goal_request)))
  "Returns full string definition for message of type 'plan_for_goal_request"
  (cl:format cl:nil "float64[] goal_state~%float64[] start_state~%float64 goal_radius~%float64 time_limit~%float64 probability_success_threshold~%string planning_algorithm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plan_for_goal_request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'planning_algorithm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plan_for_goal_request>))
  "Converts a ROS message object to a list"
  (cl:list 'plan_for_goal_request
    (cl:cons ':goal_state (goal_state msg))
    (cl:cons ':start_state (start_state msg))
    (cl:cons ':goal_radius (goal_radius msg))
    (cl:cons ':time_limit (time_limit msg))
    (cl:cons ':probability_success_threshold (probability_success_threshold msg))
    (cl:cons ':planning_algorithm (planning_algorithm msg))
))
