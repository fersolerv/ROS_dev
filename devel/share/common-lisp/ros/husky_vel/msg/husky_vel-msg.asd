
(cl:in-package :asdf)

(defsystem "husky_vel-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HuskyVelocity" :depends-on ("_package_HuskyVelocity"))
    (:file "_package_HuskyVelocity" :depends-on ("_package"))
  ))