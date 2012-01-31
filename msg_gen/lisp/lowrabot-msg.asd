
(cl:in-package :asdf)

(defsystem "lowrabot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Myardu" :depends-on ("_package_Myardu"))
    (:file "_package_Myardu" :depends-on ("_package"))
  ))