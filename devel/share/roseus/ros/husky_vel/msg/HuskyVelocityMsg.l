;; Auto-generated. Do not edit!


(when (boundp 'husky_vel::HuskyVelocityMsg)
  (if (not (find-package "HUSKY_VEL"))
    (make-package "HUSKY_VEL"))
  (shadow 'HuskyVelocityMsg (find-package "HUSKY_VEL")))
(unless (find-package "HUSKY_VEL::HUSKYVELOCITYMSG")
  (make-package "HUSKY_VEL::HUSKYVELOCITYMSG"))

(in-package "ROS")
;;//! \htmlinclude HuskyVelocityMsg.msg.html


(defclass husky_vel::HuskyVelocityMsg
  :super ros::object
  :slots (_linearVelocity _angularVelocity ))

(defmethod husky_vel::HuskyVelocityMsg
  (:init
   (&key
    ((:linearVelocity __linearVelocity) 0.0)
    ((:angularVelocity __angularVelocity) 0.0)
    )
   (send-super :init)
   (setq _linearVelocity (float __linearVelocity))
   (setq _angularVelocity (float __angularVelocity))
   self)
  (:linearVelocity
   (&optional __linearVelocity)
   (if __linearVelocity (setq _linearVelocity __linearVelocity)) _linearVelocity)
  (:angularVelocity
   (&optional __angularVelocity)
   (if __angularVelocity (setq _angularVelocity __angularVelocity)) _angularVelocity)
  (:serialization-length
   ()
   (+
    ;; float32 _linearVelocity
    4
    ;; float32 _angularVelocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linearVelocity
       (sys::poke _linearVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angularVelocity
       (sys::poke _angularVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linearVelocity
     (setq _linearVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angularVelocity
     (setq _angularVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get husky_vel::HuskyVelocityMsg :md5sum-) "352405445bc14611a0dc96feba55c2c2")
(setf (get husky_vel::HuskyVelocityMsg :datatype-) "husky_vel/HuskyVelocityMsg")
(setf (get husky_vel::HuskyVelocityMsg :definition-)
      "float32 linearVelocity
float32 angularVelocity

")



(provide :husky_vel/HuskyVelocityMsg "352405445bc14611a0dc96feba55c2c2")


