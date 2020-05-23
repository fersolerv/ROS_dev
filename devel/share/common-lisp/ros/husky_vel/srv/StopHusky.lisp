; Auto-generated. Do not edit!


(cl:in-package husky_vel-srv)


;//! \htmlinclude StopHusky-request.msg.html

(cl:defclass <StopHusky-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopHusky-request (<StopHusky-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopHusky-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopHusky-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_vel-srv:<StopHusky-request> is deprecated: use husky_vel-srv:StopHusky-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopHusky-request>) ostream)
  "Serializes a message object of type '<StopHusky-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopHusky-request>) istream)
  "Deserializes a message object of type '<StopHusky-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopHusky-request>)))
  "Returns string type for a service object of type '<StopHusky-request>"
  "husky_vel/StopHuskyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopHusky-request)))
  "Returns string type for a service object of type 'StopHusky-request"
  "husky_vel/StopHuskyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopHusky-request>)))
  "Returns md5sum for a message object of type '<StopHusky-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopHusky-request)))
  "Returns md5sum for a message object of type 'StopHusky-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopHusky-request>)))
  "Returns full string definition for message of type '<StopHusky-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopHusky-request)))
  "Returns full string definition for message of type 'StopHusky-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopHusky-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopHusky-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopHusky-request
))
;//! \htmlinclude StopHusky-response.msg.html

(cl:defclass <StopHusky-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopHusky-response (<StopHusky-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopHusky-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopHusky-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_vel-srv:<StopHusky-response> is deprecated: use husky_vel-srv:StopHusky-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopHusky-response>) ostream)
  "Serializes a message object of type '<StopHusky-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopHusky-response>) istream)
  "Deserializes a message object of type '<StopHusky-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopHusky-response>)))
  "Returns string type for a service object of type '<StopHusky-response>"
  "husky_vel/StopHuskyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopHusky-response)))
  "Returns string type for a service object of type 'StopHusky-response"
  "husky_vel/StopHuskyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopHusky-response>)))
  "Returns md5sum for a message object of type '<StopHusky-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopHusky-response)))
  "Returns md5sum for a message object of type 'StopHusky-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopHusky-response>)))
  "Returns full string definition for message of type '<StopHusky-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopHusky-response)))
  "Returns full string definition for message of type 'StopHusky-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopHusky-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopHusky-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopHusky-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopHusky)))
  'StopHusky-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopHusky)))
  'StopHusky-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopHusky)))
  "Returns string type for a service object of type '<StopHusky>"
  "husky_vel/StopHusky")