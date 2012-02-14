; Auto-generated. Do not edit!


(cl:in-package lowrabot-msg)


;//! \htmlinclude Myardu.msg.html

(cl:defclass <Myardu> (roslisp-msg-protocol:ros-message)
  ((mkn_dir
    :reader mkn_dir
    :initarg :mkn_dir
    :type cl:fixnum
    :initform 0)
   (mkr_dir
    :reader mkr_dir
    :initarg :mkr_dir
    :type cl:fixnum
    :initform 0)
   (mkn_val
    :reader mkn_val
    :initarg :mkn_val
    :type cl:fixnum
    :initform 0)
   (mkr_val
    :reader mkr_val
    :initarg :mkr_val
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lowrabot-msg:<Myardu> is deprecated: use lowrabot-msg:Myardu instead.")))

(cl:ensure-generic-function 'mkn_dir-val :lambda-list '(m))
(cl:defmethod mkn_dir-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:mkn_dir-val is deprecated.  Use lowrabot-msg:mkn_dir instead.")
  (mkn_dir m))

(cl:ensure-generic-function 'mkr_dir-val :lambda-list '(m))
(cl:defmethod mkr_dir-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:mkr_dir-val is deprecated.  Use lowrabot-msg:mkr_dir instead.")
  (mkr_dir m))

(cl:ensure-generic-function 'mkn_val-val :lambda-list '(m))
(cl:defmethod mkn_val-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:mkn_val-val is deprecated.  Use lowrabot-msg:mkn_val instead.")
  (mkn_val m))

(cl:ensure-generic-function 'mkr_val-val :lambda-list '(m))
(cl:defmethod mkr_val-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:mkr_val-val is deprecated.  Use lowrabot-msg:mkr_val instead.")
  (mkr_val m))

(cl:ensure-generic-function 'joy1-val :lambda-list '(m))
(cl:defmethod joy1-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy1-val is deprecated.  Use lowrabot-msg:joy1 instead.")
  (joy1 m))

(cl:ensure-generic-function 'joy2-val :lambda-list '(m))
(cl:defmethod joy2-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy2-val is deprecated.  Use lowrabot-msg:joy2 instead.")
  (joy2 m))

(cl:ensure-generic-function 'joy3-val :lambda-list '(m))
(cl:defmethod joy3-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy3-val is deprecated.  Use lowrabot-msg:joy3 instead.")
  (joy3 m))

(cl:ensure-generic-function 'joy4-val :lambda-list '(m))
(cl:defmethod joy4-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy4-val is deprecated.  Use lowrabot-msg:joy4 instead.")
  (joy4 m))

(cl:ensure-generic-function 'joy5-val :lambda-list '(m))
(cl:defmethod joy5-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy5-val is deprecated.  Use lowrabot-msg:joy5 instead.")
  (joy5 m))

(cl:ensure-generic-function 'joy6-val :lambda-list '(m))
(cl:defmethod joy6-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy6-val is deprecated.  Use lowrabot-msg:joy6 instead.")
  (joy6 m))

(cl:ensure-generic-function 'joy7-val :lambda-list '(m))
(cl:defmethod joy7-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy7-val is deprecated.  Use lowrabot-msg:joy7 instead.")
  (joy7 m))

(cl:ensure-generic-function 'joy8-val :lambda-list '(m))
(cl:defmethod joy8-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy8-val is deprecated.  Use lowrabot-msg:joy8 instead.")
  (joy8 m))

(cl:ensure-generic-function 'joy9-val :lambda-list '(m))
(cl:defmethod joy9-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy9-val is deprecated.  Use lowrabot-msg:joy9 instead.")
  (joy9 m))

(cl:ensure-generic-function 'joy10-val :lambda-list '(m))
(cl:defmethod joy10-val ((m <Myardu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lowrabot-msg:joy10-val is deprecated.  Use lowrabot-msg:joy10 instead.")
  (joy10 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Myardu>) ostream)
  "Serializes a message object of type '<Myardu>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkn_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkn_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkr_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkr_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkn_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkn_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkr_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkr_val)) ostream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkn_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkn_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkr_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkr_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkn_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkn_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mkr_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mkr_val)) (cl:read-byte istream))
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
  "lowrabot/Myardu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Myardu)))
  "Returns string type for a message object of type 'Myardu"
  "lowrabot/Myardu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Myardu>)))
  "Returns md5sum for a message object of type '<Myardu>"
  "167ba2f194cc8ae4cb45c5330f04a7c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Myardu)))
  "Returns md5sum for a message object of type 'Myardu"
  "167ba2f194cc8ae4cb45c5330f04a7c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Myardu>)))
  "Returns full string definition for message of type '<Myardu>"
  (cl:format cl:nil "uint16  mkn_dir~%uint16  mkr_dir~%uint16  mkn_val~%uint16  mkr_val~%uint16  joy1~%uint16  joy2~%uint16  joy3~%uint16  joy4~%uint16  joy5~%uint16  joy6~%uint16  joy7~%uint16  joy8~%uint16  joy9~%uint16  joy10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Myardu)))
  "Returns full string definition for message of type 'Myardu"
  (cl:format cl:nil "uint16  mkn_dir~%uint16  mkr_dir~%uint16  mkn_val~%uint16  mkr_val~%uint16  joy1~%uint16  joy2~%uint16  joy3~%uint16  joy4~%uint16  joy5~%uint16  joy6~%uint16  joy7~%uint16  joy8~%uint16  joy9~%uint16  joy10~%~%~%"))
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
    (cl:cons ':mkn_dir (mkn_dir msg))
    (cl:cons ':mkr_dir (mkr_dir msg))
    (cl:cons ':mkn_val (mkn_val msg))
    (cl:cons ':mkr_val (mkr_val msg))
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
