;; Auto-generated. Do not edit!


(when (boundp 'husky_vel::HuskyVelocity)
  (if (not (find-package "HUSKY_VEL"))
    (make-package "HUSKY_VEL"))
  (shadow 'HuskyVelocity (find-package "HUSKY_VEL")))
(unless (find-package "HUSKY_VEL::HUSKYVELOCITY")
  (make-package "HUSKY_VEL::HUSKYVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude HuskyVelocity.msg.html


(defclass husky_vel::HuskyVelocity
  :super ros::object
  :slots (_linearVelocityX _angularVelocityZ ))

(defmethod husky_vel::HuskyVelocity
  (:init
   (&key
    ((:linearVelocityX __linearVelocityX) 0.0)
    ((:angularVelocityZ __angularVelocityZ) 0.0)
    )
   (send-super :init)
   (setq _linearVelocityX (float __linearVelocityX))
   (setq _angularVelocityZ (float __angularVelocityZ))
   self)
  (:linearVelocityX
   (&optional __linearVelocityX)
   (if __linearVelocityX (setq _linearVelocityX __linearVelocityX)) _linearVelocityX)
  (:angularVelocityZ
   (&optional __angularVelocityZ)
   (if __angularVelocityZ (setq _angularVelocityZ __angularVelocityZ)) _angularVelocityZ)
  (:serialization-length
   ()
   (+
    ;; float32 _linearVelocityX
    4
    ;; float32 _angularVelocityZ
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linearVelocityX
       (sys::poke _linearVelocityX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angularVelocityZ
       (sys::poke _angularVelocityZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linearVelocityX
     (setq _linearVelocityX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angularVelocityZ
     (setq _angularVelocityZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get husky_vel::HuskyVelocity :md5sum-) "3810a70d8bd9757d7145a2f9707db9e0")
(setf (get husky_vel::HuskyVelocity :datatype-) "husky_vel/HuskyVelocity")
(setf (get husky_vel::HuskyVelocity :definition-)
      "float32 linearVelocityX
float32 angularVelocityZ

")



(provide :husky_vel/HuskyVelocity "3810a70d8bd9757d7145a2f9707db9e0")


