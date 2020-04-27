; Auto-generated. Do not edit!


(cl:in-package husky_vel-msg)


;//! \htmlinclude HuskyVelocityMsg.msg.html

(cl:defclass <HuskyVelocityMsg> (roslisp-msg-protocol:ros-message)
  ((linearVelocity
    :reader linearVelocity
    :initarg :linearVelocity
    :type cl:float
    :initform 0.0)
   (angularVelocity
    :reader angularVelocity
    :initarg :angularVelocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass HuskyVelocityMsg (<HuskyVelocityMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HuskyVelocityMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HuskyVelocityMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_vel-msg:<HuskyVelocityMsg> is deprecated: use husky_vel-msg:HuskyVelocityMsg instead.")))

(cl:ensure-generic-function 'linearVelocity-val :lambda-list '(m))
(cl:defmethod linearVelocity-val ((m <HuskyVelocityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_vel-msg:linearVelocity-val is deprecated.  Use husky_vel-msg:linearVelocity instead.")
  (linearVelocity m))

(cl:ensure-generic-function 'angularVelocity-val :lambda-list '(m))
(cl:defmethod angularVelocity-val ((m <HuskyVelocityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_vel-msg:angularVelocity-val is deprecated.  Use husky_vel-msg:angularVelocity instead.")
  (angularVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HuskyVelocityMsg>) ostream)
  "Serializes a message object of type '<HuskyVelocityMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linearVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angularVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HuskyVelocityMsg>) istream)
  "Deserializes a message object of type '<HuskyVelocityMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linearVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angularVelocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HuskyVelocityMsg>)))
  "Returns string type for a message object of type '<HuskyVelocityMsg>"
  "husky_vel/HuskyVelocityMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HuskyVelocityMsg)))
  "Returns string type for a message object of type 'HuskyVelocityMsg"
  "husky_vel/HuskyVelocityMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HuskyVelocityMsg>)))
  "Returns md5sum for a message object of type '<HuskyVelocityMsg>"
  "352405445bc14611a0dc96feba55c2c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HuskyVelocityMsg)))
  "Returns md5sum for a message object of type 'HuskyVelocityMsg"
  "352405445bc14611a0dc96feba55c2c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HuskyVelocityMsg>)))
  "Returns full string definition for message of type '<HuskyVelocityMsg>"
  (cl:format cl:nil "float32 linearVelocity~%float32 angularVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HuskyVelocityMsg)))
  "Returns full string definition for message of type 'HuskyVelocityMsg"
  (cl:format cl:nil "float32 linearVelocity~%float32 angularVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HuskyVelocityMsg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HuskyVelocityMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HuskyVelocityMsg
    (cl:cons ':linearVelocity (linearVelocity msg))
    (cl:cons ':angularVelocity (angularVelocity msg))
))
