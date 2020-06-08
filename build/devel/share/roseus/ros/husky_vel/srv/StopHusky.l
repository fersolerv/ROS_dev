;; Auto-generated. Do not edit!


(when (boundp 'husky_vel::StopHusky)
  (if (not (find-package "HUSKY_VEL"))
    (make-package "HUSKY_VEL"))
  (shadow 'StopHusky (find-package "HUSKY_VEL")))
(unless (find-package "HUSKY_VEL::STOPHUSKY")
  (make-package "HUSKY_VEL::STOPHUSKY"))
(unless (find-package "HUSKY_VEL::STOPHUSKYREQUEST")
  (make-package "HUSKY_VEL::STOPHUSKYREQUEST"))
(unless (find-package "HUSKY_VEL::STOPHUSKYRESPONSE")
  (make-package "HUSKY_VEL::STOPHUSKYRESPONSE"))

(in-package "ROS")





(defclass husky_vel::StopHuskyRequest
  :super ros::object
  :slots ())

(defmethod husky_vel::StopHuskyRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass husky_vel::StopHuskyResponse
  :super ros::object
  :slots ())

(defmethod husky_vel::StopHuskyResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass husky_vel::StopHusky
  :super ros::object
  :slots ())

(setf (get husky_vel::StopHusky :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get husky_vel::StopHusky :datatype-) "husky_vel/StopHusky")
(setf (get husky_vel::StopHusky :request) husky_vel::StopHuskyRequest)
(setf (get husky_vel::StopHusky :response) husky_vel::StopHuskyResponse)

(defmethod husky_vel::StopHuskyRequest
  (:response () (instance husky_vel::StopHuskyResponse :init)))

(setf (get husky_vel::StopHuskyRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get husky_vel::StopHuskyRequest :datatype-) "husky_vel/StopHuskyRequest")
(setf (get husky_vel::StopHuskyRequest :definition-)
      "
---
")

(setf (get husky_vel::StopHuskyResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get husky_vel::StopHuskyResponse :datatype-) "husky_vel/StopHuskyResponse")
(setf (get husky_vel::StopHuskyResponse :definition-)
      "
---
")



(provide :husky_vel/StopHusky "d41d8cd98f00b204e9800998ecf8427e")


