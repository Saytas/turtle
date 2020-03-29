; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude AdcToDistance-request.msg.html

(cl:defclass <AdcToDistance-request> (roslisp-msg-protocol:ros-message)
  ((adc
    :reader adc
    :initarg :adc
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AdcToDistance-request (<AdcToDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdcToDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdcToDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AdcToDistance-request> is deprecated: use beginner_tutorials-srv:AdcToDistance-request instead.")))

(cl:ensure-generic-function 'adc-val :lambda-list '(m))
(cl:defmethod adc-val ((m <AdcToDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:adc-val is deprecated.  Use beginner_tutorials-srv:adc instead.")
  (adc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdcToDistance-request>) ostream)
  "Serializes a message object of type '<AdcToDistance-request>"
  (cl:let* ((signed (cl:slot-value msg 'adc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdcToDistance-request>) istream)
  "Deserializes a message object of type '<AdcToDistance-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'adc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdcToDistance-request>)))
  "Returns string type for a service object of type '<AdcToDistance-request>"
  "beginner_tutorials/AdcToDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdcToDistance-request)))
  "Returns string type for a service object of type 'AdcToDistance-request"
  "beginner_tutorials/AdcToDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdcToDistance-request>)))
  "Returns md5sum for a message object of type '<AdcToDistance-request>"
  "518d9b1ad9a9efc93a551a303cf3656d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdcToDistance-request)))
  "Returns md5sum for a message object of type 'AdcToDistance-request"
  "518d9b1ad9a9efc93a551a303cf3656d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdcToDistance-request>)))
  "Returns full string definition for message of type '<AdcToDistance-request>"
  (cl:format cl:nil "int16 adc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdcToDistance-request)))
  "Returns full string definition for message of type 'AdcToDistance-request"
  (cl:format cl:nil "int16 adc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdcToDistance-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdcToDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AdcToDistance-request
    (cl:cons ':adc (adc msg))
))
;//! \htmlinclude AdcToDistance-response.msg.html

(cl:defclass <AdcToDistance-response> (roslisp-msg-protocol:ros-message)
  ((inches
    :reader inches
    :initarg :inches
    :type cl:float
    :initform 0.0)
   (cm
    :reader cm
    :initarg :cm
    :type cl:float
    :initform 0.0))
)

(cl:defclass AdcToDistance-response (<AdcToDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdcToDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdcToDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AdcToDistance-response> is deprecated: use beginner_tutorials-srv:AdcToDistance-response instead.")))

(cl:ensure-generic-function 'inches-val :lambda-list '(m))
(cl:defmethod inches-val ((m <AdcToDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:inches-val is deprecated.  Use beginner_tutorials-srv:inches instead.")
  (inches m))

(cl:ensure-generic-function 'cm-val :lambda-list '(m))
(cl:defmethod cm-val ((m <AdcToDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:cm-val is deprecated.  Use beginner_tutorials-srv:cm instead.")
  (cm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdcToDistance-response>) ostream)
  "Serializes a message object of type '<AdcToDistance-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inches))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdcToDistance-response>) istream)
  "Deserializes a message object of type '<AdcToDistance-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inches) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdcToDistance-response>)))
  "Returns string type for a service object of type '<AdcToDistance-response>"
  "beginner_tutorials/AdcToDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdcToDistance-response)))
  "Returns string type for a service object of type 'AdcToDistance-response"
  "beginner_tutorials/AdcToDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdcToDistance-response>)))
  "Returns md5sum for a message object of type '<AdcToDistance-response>"
  "518d9b1ad9a9efc93a551a303cf3656d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdcToDistance-response)))
  "Returns md5sum for a message object of type 'AdcToDistance-response"
  "518d9b1ad9a9efc93a551a303cf3656d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdcToDistance-response>)))
  "Returns full string definition for message of type '<AdcToDistance-response>"
  (cl:format cl:nil "float32 inches~%float32 cm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdcToDistance-response)))
  "Returns full string definition for message of type 'AdcToDistance-response"
  (cl:format cl:nil "float32 inches~%float32 cm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdcToDistance-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdcToDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AdcToDistance-response
    (cl:cons ':inches (inches msg))
    (cl:cons ':cm (cm msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AdcToDistance)))
  'AdcToDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AdcToDistance)))
  'AdcToDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdcToDistance)))
  "Returns string type for a service object of type '<AdcToDistance>"
  "beginner_tutorials/AdcToDistance")