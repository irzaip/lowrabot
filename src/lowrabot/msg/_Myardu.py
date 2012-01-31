"""autogenerated by genmsg_py from Myardu.msg. Do not edit."""
import roslib.message
import struct


class Myardu(roslib.message.Message):
  _md5sum = "d80b48bb7b9460c12e4ef99c393aa5cb"
  _type = "lowrabot/Myardu"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint16  ab_dir
uint16  kk_dir
uint16  ab_val
uint16  kk_val
uint16  joy1
uint16  joy2
uint16  joy3
uint16  joy4
uint16  joy5
uint16  joy6
uint16  joy7
uint16  joy8
uint16  joy9
uint16  joy10

"""
  __slots__ = ['ab_dir','kk_dir','ab_val','kk_val','joy1','joy2','joy3','joy4','joy5','joy6','joy7','joy8','joy9','joy10']
  _slot_types = ['uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       ab_dir,kk_dir,ab_val,kk_val,joy1,joy2,joy3,joy4,joy5,joy6,joy7,joy8,joy9,joy10
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(Myardu, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ab_dir is None:
        self.ab_dir = 0
      if self.kk_dir is None:
        self.kk_dir = 0
      if self.ab_val is None:
        self.ab_val = 0
      if self.kk_val is None:
        self.kk_val = 0
      if self.joy1 is None:
        self.joy1 = 0
      if self.joy2 is None:
        self.joy2 = 0
      if self.joy3 is None:
        self.joy3 = 0
      if self.joy4 is None:
        self.joy4 = 0
      if self.joy5 is None:
        self.joy5 = 0
      if self.joy6 is None:
        self.joy6 = 0
      if self.joy7 is None:
        self.joy7 = 0
      if self.joy8 is None:
        self.joy8 = 0
      if self.joy9 is None:
        self.joy9 = 0
      if self.joy10 is None:
        self.joy10 = 0
    else:
      self.ab_dir = 0
      self.kk_dir = 0
      self.ab_val = 0
      self.kk_val = 0
      self.joy1 = 0
      self.joy2 = 0
      self.joy3 = 0
      self.joy4 = 0
      self.joy5 = 0
      self.joy6 = 0
      self.joy7 = 0
      self.joy8 = 0
      self.joy9 = 0
      self.joy10 = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_14H.pack(_x.ab_dir, _x.kk_dir, _x.ab_val, _x.kk_val, _x.joy1, _x.joy2, _x.joy3, _x.joy4, _x.joy5, _x.joy6, _x.joy7, _x.joy8, _x.joy9, _x.joy10))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.ab_dir, _x.kk_dir, _x.ab_val, _x.kk_val, _x.joy1, _x.joy2, _x.joy3, _x.joy4, _x.joy5, _x.joy6, _x.joy7, _x.joy8, _x.joy9, _x.joy10,) = _struct_14H.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_14H.pack(_x.ab_dir, _x.kk_dir, _x.ab_val, _x.kk_val, _x.joy1, _x.joy2, _x.joy3, _x.joy4, _x.joy5, _x.joy6, _x.joy7, _x.joy8, _x.joy9, _x.joy10))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.ab_dir, _x.kk_dir, _x.ab_val, _x.kk_val, _x.joy1, _x.joy2, _x.joy3, _x.joy4, _x.joy5, _x.joy6, _x.joy7, _x.joy8, _x.joy9, _x.joy10,) = _struct_14H.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_14H = struct.Struct("<14H")
