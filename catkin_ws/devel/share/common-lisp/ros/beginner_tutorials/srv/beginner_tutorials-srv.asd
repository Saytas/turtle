
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AdcToDistance" :depends-on ("_package_AdcToDistance"))
    (:file "_package_AdcToDistance" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "AnalogToDistance" :depends-on ("_package_AnalogToDistance"))
    (:file "_package_AnalogToDistance" :depends-on ("_package"))
  ))