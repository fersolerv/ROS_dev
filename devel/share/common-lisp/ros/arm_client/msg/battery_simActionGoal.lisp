; Auto-generated. Do not edit!


(cl:in-package arm_client-msg)


;//! \htmlinclude battery_simActionGoal.msg.html

(cl:defclass <battery_simActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type arm_client-msg:battery_simGoal
    :initform (cl:make-instance 'arm_client-msg:battery_simGoal)))
)

(cl:defclass battery_simActionGoal (<battery_simActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery_simActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery_simActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_client-msg:<battery_simActionGoal> is deprecated: use arm_client-msg:battery_simActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <battery_simActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_client-msg:header-val is deprecated.  Use arm_client-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <battery_simActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_client-msg:goal_id-val is deprecated.  Use arm_client-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <battery_simActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_client-msg:goal-val is deprecated.  Use arm_client-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery_simActionGoal>) ostream)
  "Serializes a message object of type '<battery_simActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery_simActionGoal>) istream)
  "Deserializes a message object of type '<battery_simActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery_simActionGoal>)))
  "Returns string type for a message object of type '<battery_simActionGoal>"
  "arm_client/battery_simActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_simActionGoal)))
  "Returns string type for a message object of type 'battery_simActionGoal"
  "arm_client/battery_simActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery_simActionGoal>)))
  "Returns md5sum for a message object of type '<battery_simActionGoal>"
  "75b7a5301ebeb807cc0fc9197f982eb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery_simActionGoal)))
  "Returns md5sum for a message object of type 'battery_simActionGoal"
  "75b7a5301ebeb807cc0fc9197f982eb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery_simActionGoal>)))
  "Returns full string definition for message of type '<battery_simActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%battery_simGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_client/battery_simGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This is an action definition file, which has three parts: the goal, the~%# result, and the feedback.~%#~%# Part 1: the goal, to be sent by the client~%#~%# The amount of time we want to wait~%bool charge_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery_simActionGoal)))
  "Returns full string definition for message of type 'battery_simActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%battery_simGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arm_client/battery_simGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This is an action definition file, which has three parts: the goal, the~%# result, and the feedback.~%#~%# Part 1: the goal, to be sent by the client~%#~%# The amount of time we want to wait~%bool charge_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery_simActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery_simActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'battery_simActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
