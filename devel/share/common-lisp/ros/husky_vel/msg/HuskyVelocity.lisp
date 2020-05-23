; Auto-generated. Do not edit!


(cl:in-package husky_vel-msg)


;//! \htmlinclude HuskyVelocity.msg.html

(cl:defclass <HuskyVelocity> (roslisp-msg-protocol:ros-message)
  ((linearVelocityX
    :reader linearVelocityX
    :initarg :linearVelocityX
    :type cl:float
    :initform 0.0)
   (angularVelocityZ
    :reader angularVelocityZ
    :initarg :angularVelocityZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass HuskyVelocity (<HuskyVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HuskyVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HuskyVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_vel-msg:<HuskyVelocity> is deprecated: use husky_vel-msg:HuskyVelocity instead.")))

(cl:ensure-generic-function 'linearVelocityX-val :lambda-list '(m))
(cl:defmethod linearVelocityX-val ((m <HuskyVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_vel-msg:linearVelocityX-val is deprecated.  Use husky_vel-msg:linearVelocityX instead.")
  (linearVelocityX m))

(cl:ensure-generic-function 'angularVelocityZ-val :lambda-list '(m))
(cl:defmethod angularVelocityZ-val ((m <HuskyVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_vel-msg:angularVelocityZ-val is deprecated.  Use husky_vel-msg:angularVelocityZ instead.")
  (angularVelocityZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HuskyVelocity>) ostream)
  "Serializes a message object of type '<HuskyVelocity>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linearVelocityX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angularVelocityZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HuskyVelocity>) istream)
  "Deserializes a message object of type '<HuskyVelocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linearVelocityX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angularVelocityZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HuskyVelocity>)))
  "Returns string type for a message object of type '<HuskyVelocity>"
  "husky_vel/HuskyVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HuskyVelocity)))
  "Returns string type for a message object of type 'HuskyVelocity"
  "husky_vel/HuskyVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HuskyVelocity>)))
  "Returns md5sum for a message object of type '<HuskyVelocity>"
  "3810a70d8bd9757d7145a2f9707db9e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HuskyVelocity)))
  "Returns md5sum for a message object of type 'HuskyVelocity"
  "3810a70d8bd9757d7145a2f9707db9e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HuskyVelocity>)))
  "Returns full string definition for message of type '<HuskyVelocity>"
  (cl:format cl:nil "float32 linearVelocityX~%float32 angularVelocityZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HuskyVelocity)))
  "Returns full string definition for message of type 'HuskyVelocity"
  (cl:format cl:nil "float32 linearVelocityX~%float32 angularVelocityZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HuskyVelocity>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HuskyVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'HuskyVelocity
    (cl:cons ':linearVelocityX (linearVelocityX msg))
    (cl:cons ':angularVelocityZ (angularVelocityZ msg))
))
