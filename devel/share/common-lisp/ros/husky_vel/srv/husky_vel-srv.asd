
(cl:in-package :asdf)

(defsystem "husky_vel-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StopHusky" :depends-on ("_package_StopHusky"))
    (:file "_package_StopHusky" :depends-on ("_package"))
  ))