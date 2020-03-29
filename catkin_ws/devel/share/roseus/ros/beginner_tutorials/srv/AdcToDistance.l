;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::AdcToDistance)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'AdcToDistance (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ADCTODISTANCE")
  (make-package "BEGINNER_TUTORIALS::ADCTODISTANCE"))
(unless (find-package "BEGINNER_TUTORIALS::ADCTODISTANCEREQUEST")
  (make-package "BEGINNER_TUTORIALS::ADCTODISTANCEREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::ADCTODISTANCERESPONSE")
  (make-package "BEGINNER_TUTORIALS::ADCTODISTANCERESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::AdcToDistanceRequest
  :super ros::object
  :slots (_adc ))

(defmethod beginner_tutorials::AdcToDistanceRequest
  (:init
   (&key
    ((:adc __adc) 0)
    )
   (send-super :init)
   (setq _adc (round __adc))
   self)
  (:adc
   (&optional __adc)
   (if __adc (setq _adc __adc)) _adc)
  (:serialization-length
   ()
   (+
    ;; int16 _adc
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _adc
       (write-word _adc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _adc
     (setq _adc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass beginner_tutorials::AdcToDistanceResponse
  :super ros::object
  :slots (_inches _cm ))

(defmethod beginner_tutorials::AdcToDistanceResponse
  (:init
   (&key
    ((:inches __inches) 0.0)
    ((:cm __cm) 0.0)
    )
   (send-super :init)
   (setq _inches (float __inches))
   (setq _cm (float __cm))
   self)
  (:inches
   (&optional __inches)
   (if __inches (setq _inches __inches)) _inches)
  (:cm
   (&optional __cm)
   (if __cm (setq _cm __cm)) _cm)
  (:serialization-length
   ()
   (+
    ;; float32 _inches
    4
    ;; float32 _cm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _inches
       (sys::poke _inches (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cm
       (sys::poke _cm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _inches
     (setq _inches (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cm
     (setq _cm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::AdcToDistance
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::AdcToDistance :md5sum-) "518d9b1ad9a9efc93a551a303cf3656d")
(setf (get beginner_tutorials::AdcToDistance :datatype-) "beginner_tutorials/AdcToDistance")
(setf (get beginner_tutorials::AdcToDistance :request) beginner_tutorials::AdcToDistanceRequest)
(setf (get beginner_tutorials::AdcToDistance :response) beginner_tutorials::AdcToDistanceResponse)

(defmethod beginner_tutorials::AdcToDistanceRequest
  (:response () (instance beginner_tutorials::AdcToDistanceResponse :init)))

(setf (get beginner_tutorials::AdcToDistanceRequest :md5sum-) "518d9b1ad9a9efc93a551a303cf3656d")
(setf (get beginner_tutorials::AdcToDistanceRequest :datatype-) "beginner_tutorials/AdcToDistanceRequest")
(setf (get beginner_tutorials::AdcToDistanceRequest :definition-)
      "int16 adc
---
float32 inches
float32 cm

")

(setf (get beginner_tutorials::AdcToDistanceResponse :md5sum-) "518d9b1ad9a9efc93a551a303cf3656d")
(setf (get beginner_tutorials::AdcToDistanceResponse :datatype-) "beginner_tutorials/AdcToDistanceResponse")
(setf (get beginner_tutorials::AdcToDistanceResponse :definition-)
      "int16 adc
---
float32 inches
float32 cm

")



(provide :beginner_tutorials/AdcToDistance "518d9b1ad9a9efc93a551a303cf3656d")


