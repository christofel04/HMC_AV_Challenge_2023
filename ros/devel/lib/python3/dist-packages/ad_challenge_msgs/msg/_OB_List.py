# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ad_challenge_msgs/OB_List.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ad_challenge_msgs.msg
import genpy

class OB_List(genpy.Message):
  _md5sum = "16234d4525d50fecc276cdee56b97cf0"
  _type = "ad_challenge_msgs/OB_List"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time time   #testing

ad_challenge_msgs/CM_Object[] Object_list
================================================================================
MSG: ad_challenge_msgs/CM_Object
string Object_name

# 0 : no data, 1 : on data
int64 state

# reference dist
float32 distance

# reference point
float32 point_x
float32 point_y
float32 point_z

# width, heigth, length
float32 width
float32 heigth
float32 length

"""
  __slots__ = ['time','Object_list']
  _slot_types = ['time','ad_challenge_msgs/CM_Object[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,Object_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OB_List, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = genpy.Time()
      if self.Object_list is None:
        self.Object_list = []
    else:
      self.time = genpy.Time()
      self.Object_list = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.time.secs, _x.time.nsecs))
      length = len(self.Object_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.Object_list:
        _x = val1.Object_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_q7f().pack(_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time is None:
        self.time = genpy.Time()
      if self.Object_list is None:
        self.Object_list = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time.secs, _x.time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Object_list = []
      for i in range(0, length):
        val1 = ad_challenge_msgs.msg.CM_Object()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.Object_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.Object_name = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length,) = _get_struct_q7f().unpack(str[start:end])
        self.Object_list.append(val1)
      self.time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.time.secs, _x.time.nsecs))
      length = len(self.Object_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.Object_list:
        _x = val1.Object_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_q7f().pack(_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time is None:
        self.time = genpy.Time()
      if self.Object_list is None:
        self.Object_list = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time.secs, _x.time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Object_list = []
      for i in range(0, length):
        val1 = ad_challenge_msgs.msg.CM_Object()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.Object_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.Object_name = str[start:end]
        _x = val1
        start = end
        end += 36
        (_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length,) = _get_struct_q7f().unpack(str[start:end])
        self.Object_list.append(val1)
      self.time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_q7f = None
def _get_struct_q7f():
    global _struct_q7f
    if _struct_q7f is None:
        _struct_q7f = struct.Struct("<q7f")
    return _struct_q7f
