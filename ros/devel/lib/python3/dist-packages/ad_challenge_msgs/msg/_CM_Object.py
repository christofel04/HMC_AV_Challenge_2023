# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ad_challenge_msgs/CM_Object.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CM_Object(genpy.Message):
  _md5sum = "776a0629d3fff71ce9c701a589add34f"
  _type = "ad_challenge_msgs/CM_Object"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string Object_name

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
  __slots__ = ['Object_name','state','distance','point_x','point_y','point_z','width','heigth','length']
  _slot_types = ['string','int64','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Object_name,state,distance,point_x,point_y,point_z,width,heigth,length

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CM_Object, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Object_name is None:
        self.Object_name = ''
      if self.state is None:
        self.state = 0
      if self.distance is None:
        self.distance = 0.
      if self.point_x is None:
        self.point_x = 0.
      if self.point_y is None:
        self.point_y = 0.
      if self.point_z is None:
        self.point_z = 0.
      if self.width is None:
        self.width = 0.
      if self.heigth is None:
        self.heigth = 0.
      if self.length is None:
        self.length = 0.
    else:
      self.Object_name = ''
      self.state = 0
      self.distance = 0.
      self.point_x = 0.
      self.point_y = 0.
      self.point_z = 0.
      self.width = 0.
      self.heigth = 0.
      self.length = 0.

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
      _x = self.Object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Object_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Object_name = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length,) = _get_struct_q7f().unpack(str[start:end])
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
      _x = self.Object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Object_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Object_name = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state, _x.distance, _x.point_x, _x.point_y, _x.point_z, _x.width, _x.heigth, _x.length,) = _get_struct_q7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_q7f = None
def _get_struct_q7f():
    global _struct_q7f
    if _struct_q7f is None:
        _struct_q7f = struct.Struct("<q7f")
    return _struct_q7f
