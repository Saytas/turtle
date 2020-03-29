;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::distance)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'distance (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::DISTANCE")
  (make-package "BEGINNER_TUTORIALS::DISTANCE"))

(in-package "ROS")
;;//! \htmlinclude distance.msg.html


(defclass beginner_tutorials::distance
  :super ros::object
  :slots (_raw _inch _cm ))

(defmethod beginner_tutorials::distance
  (:init
   (&key
    ((:raw __raw) 0)
    ((:inch __inch) 0.0)
    ((:cm __cm) 0.0)
    )
   (send-super :init)
   (setq _raw (round __raw))
   (setq _inch (float __inch))
   (setq _cm (float __cm))
   self)
  (:raw
   (&optional __raw)
   (if __raw (setq _raw __raw)) _raw)
  (:inch
   (&optional __inch)
   (if __inch (setq _inch __inch)) _inch)
  (:cm
   (&optional __cm)
   (if __cm (setq _cm __cm)) _cm)
  (:serialization-length
   ()
   (+
    ;; uint8 _raw
    1
    ;; float32 _inch
    4
    ;; float32 _cm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _raw
       (write-byte _raw s)
     ;; float32 _inch
       (sys::poke _inch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cm
       (sys::poke _cm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _raw
     (setq _raw (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _inch
     (setq _inch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cm
     (setq _cm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::distance :md5sum-) "5266ff5b846e219dfd622ac9a1b131ed")
(setf (get beginner_tutorials::distance :datatype-) "beginner_tutorials/distance")
(setf (get beginner_tutorials::distance :definition-)
      "uint8 raw
float32 inch
float32 cm

")



(provide :beginner_tutorials/distance "5266ff5b846e219dfd622ac9a1b131ed")


