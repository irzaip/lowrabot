
(cl:in-package :asdf)

(defsystem "lowrabot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "Myardu" :depends-on ("_package_Myardu"))
    (:file "_package_Myardu" :depends-on ("_package"))
  ))