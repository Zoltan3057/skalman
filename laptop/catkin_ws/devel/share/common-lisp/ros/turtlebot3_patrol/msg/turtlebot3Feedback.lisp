; Auto-generated. Do not edit!


(cl:in-package turtlebot3_patrol-msg)


;//! \htmlinclude turtlebot3Feedback.msg.html

(cl:defclass <turtlebot3Feedback> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass turtlebot3Feedback (<turtlebot3Feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtlebot3Feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtlebot3Feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_patrol-msg:<turtlebot3Feedback> is deprecated: use turtlebot3_patrol-msg:turtlebot3Feedback instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <turtlebot3Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_patrol-msg:state-val is deprecated.  Use turtlebot3_patrol-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtlebot3Feedback>) ostream)
  "Serializes a message object of type '<turtlebot3Feedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtlebot3Feedback>) istream)
  "Deserializes a message object of type '<turtlebot3Feedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtlebot3Feedback>)))
  "Returns string type for a message object of type '<turtlebot3Feedback>"
  "turtlebot3_patrol/turtlebot3Feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtlebot3Feedback)))
  "Returns string type for a message object of type 'turtlebot3Feedback"
  "turtlebot3_patrol/turtlebot3Feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtlebot3Feedback>)))
  "Returns md5sum for a message object of type '<turtlebot3Feedback>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtlebot3Feedback)))
  "Returns md5sum for a message object of type 'turtlebot3Feedback"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtlebot3Feedback>)))
  "Returns full string definition for message of type '<turtlebot3Feedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtlebot3Feedback)))
  "Returns full string definition for message of type 'turtlebot3Feedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtlebot3Feedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtlebot3Feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'turtlebot3Feedback
    (cl:cons ':state (state msg))
))
