; Auto-generated. Do not edit!


(cl:in-package rosserial_arduino-msg)


;//! \htmlinclude Myardu.msg.html

(cl:defclass <Myardu> (roslisp-msg-protocol:ros-message)
  ((ab_dir
    :reader ab_dir
    :initarg :ab_dir
    :type cl:fixnum
    :initform 0)
   (kk_dir
    :reader kk_dir
    :initarg :kk_dir
    :type cl:fixnum
    :initform 0)
   (ab_val
    :reader ab_val
    :initarg :ab_val
    :type cl:fixnum
    :initform 0)
   (kk_val
    :reader kk_val
    :initarg :kk_val
    :type cl:fixnum
    :initform 0)
   (joy1
    :reader joy1
    :initarg :joy1
    :type cl:fixnum
    :initform 0)
   (joy2
    :reader joy2
    :initarg :joy2
    :type cl:fixnum
    :initform 0)
   (joy3
    :reader joy3
    :initarg :joy3
    :type cl:fixnum
    :initform 0)
   (joy4
    :reader joy4
    :initarg :joy4
    :type cl:fixnum
    :initform 0)
   (joy5
    :reader joy5
    :initarg :joy5
    :type cl:fixnum
    :initform 0)
   (joy6
    :reader joy6
    :initarg :joy6
    :type cl:fixnum
    :initform 0)
   (joy7
    :reader joy7
    :initarg :joy7
    :type cl:fixnum
    :initform 0)
   (joy8
    :reader joy8
    :initarg :joy8
    :type cl:fixnum
    :initform 0)
   (joy9
    :reader joy9
    :initarg :joy9
    :type cl:fixnum
    :initform 0)
   (joy10
    :reader joy10
    :initarg :joy10
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Myardu (<Myardu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Myardu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Myardu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosserial_arduino-msg:<Myardu> is deprecated: use rosserial_arduino-msg:Myardu instead.")))

(cl:ensure-generic-function 'ab_dir-val :lambda-list '(m))
(cl:defmethod ab_dir-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:ab_dir-val is deprecated.  Use rosserial_arduino-msg:ab_dir instead.")
  (ab_dir m))

(cl:ensure-generic-function 'kk_dir-val :lambda-list '(m))
(cl:defmethod kk_dir-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:kk_dir-val is deprecated.  Use rosserial_arduino-msg:kk_dir instead.")
  (kk_dir m))

(cl:ensure-generic-function 'ab_val-val :lambda-list '(m))
(cl:defmethod ab_val-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:ab_val-val is deprecated.  Use rosserial_arduino-msg:ab_val instead.")
  (ab_val m))

(cl:ensure-generic-function 'kk_val-val :lambda-list '(m))
(cl:defmethod kk_val-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:kk_val-val is deprecated.  Use rosserial_arduino-msg:kk_val instead.")
  (kk_val m))

(cl:ensure-generic-function 'joy1-val :lambda-list '(m))
(cl:defmethod joy1-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy1-val is deprecated.  Use rosserial_arduino-msg:joy1 instead.")
  (joy1 m))

(cl:ensure-generic-function 'joy2-val :lambda-list '(m))
(cl:defmethod joy2-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy2-val is deprecated.  Use rosserial_arduino-msg:joy2 instead.")
  (joy2 m))

(cl:ensure-generic-function 'joy3-val :lambda-list '(m))
(cl:defmethod joy3-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy3-val is deprecated.  Use rosserial_arduino-msg:joy3 instead.")
  (joy3 m))

(cl:ensure-generic-function 'joy4-val :lambda-list '(m))
(cl:defmethod joy4-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy4-val is deprecated.  Use rosserial_arduino-msg:joy4 instead.")
  (joy4 m))

(cl:ensure-generic-function 'joy5-val :lambda-list '(m))
(cl:defmethod joy5-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy5-val is deprecated.  Use rosserial_arduino-msg:joy5 instead.")
  (joy5 m))

(cl:ensure-generic-function 'joy6-val :lambda-list '(m))
(cl:defmethod joy6-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy6-val is deprecated.  Use rosserial_arduino-msg:joy6 instead.")
  (joy6 m))

(cl:ensure-generic-function 'joy7-val :lambda-list '(m))
(cl:defmethod joy7-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy7-val is deprecated.  Use rosserial_arduino-msg:joy7 instead.")
  (joy7 m))

(cl:ensure-generic-function 'joy8-val :lambda-list '(m))
(cl:defmethod joy8-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy8-val is deprecated.  Use rosserial_arduino-msg:joy8 instead.")
  (joy8 m))

(cl:ensure-generic-function 'joy9-val :lambda-list '(m))
(cl:defmethod joy9-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy9-val is deprecated.  Use rosserial_arduino-msg:joy9 instead.")
  (joy9 m))

(cl:ensure-generic-function 'joy10-val :lambda-list '(m))
(cl:defmethod joy10-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosserial_arduino-msg:joy10-val is deprecated.  Use rosserial_arduino-msg:joy10 instead.")
  (joy10 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Myardu>) ostream)
  "Serializes a message object of type '<Myardu>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ab_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ab_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kk_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'kk_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ab_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ab_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kk_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'kk_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy10)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Myardu>) istream)
  "Deserializes a message object of type '<Myardu>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ab_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ab_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kk_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'kk_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ab_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ab_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kk_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'kk_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joy10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joy10)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Myardu>)))
  "Returns string type for a message object of type '<Myardu>"
  "rosserial_arduino/Myardu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Myardu)))
  "Returns string type for a message object of type 'Myardu"
  "rosserial_arduino/Myardu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Myardu>)))
  "Returns md5sum for a message object of type '<Myardu>"
  "d80b48bb7b9460c12e4ef99c393aa5cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Myardu)))
  "Returns md5sum for a message object of type 'Myardu"
  "d80b48bb7b9460c12e4ef99c393aa5cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Myardu>)))
  "Returns full string definition for message of type '<Myardu>"
  (cl:format cl:nil "uint16  ab_dir~%uint16  kk_dir~%uint16  ab_val~%uint16  kk_val~%uint16  joy1~%uint16  joy2~%uint16  joy3~%uint16  joy4~%uint16  joy5~%uint16  joy6~%uint16  joy7~%uint16  joy8~%uint16  joy9~%uint16  joy10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Myardu)))
  "Returns full string definition for message of type 'Myardu"
  (cl:format cl:nil "uint16  ab_dir~%uint16  kk_dir~%uint16  ab_val~%uint16  kk_val~%uint16  joy1~%uint16  joy2~%uint16  joy3~%uint16  joy4~%uint16  joy5~%uint16  joy6~%uint16  joy7~%uint16  joy8~%uint16  joy9~%uint16  joy10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Myardu>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Myardu>))
  "Converts a ROS message object to a list"
  (cl:list 'Myardu
    (cl:cons ':ab_dir (ab_dir msg))
    (cl:cons ':kk_dir (kk_dir msg))
    (cl:cons ':ab_val (ab_val msg))
    (cl:cons ':kk_val (kk_val msg))
    (cl:cons ':joy1 (joy1 msg))
    (cl:cons ':joy2 (joy2 msg))
    (cl:cons ':joy3 (joy3 msg))
    (cl:cons ':joy4 (joy4 msg))
    (cl:cons ':joy5 (joy5 msg))
    (cl:cons ':joy6 (joy6 msg))
    (cl:cons ':joy7 (joy7 msg))
    (cl:cons ':joy8 (joy8 msg))
    (cl:cons ':joy9 (joy9 msg))
    (cl:cons ':joy10 (joy10 msg))
))
