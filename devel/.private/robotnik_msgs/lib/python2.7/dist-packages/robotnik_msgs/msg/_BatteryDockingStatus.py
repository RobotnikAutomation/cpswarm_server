# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotnik_msgs/BatteryDockingStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class BatteryDockingStatus(genpy.Message):
  _md5sum = "d7c3a4e25e4a4a665c4a1dd0862edfc2"
  _type = "robotnik_msgs/BatteryDockingStatus"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Modes of operation:
# no docking station contacts
string MODE_DISABLED=disabled
# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw
string MODE_AUTO_HW=automatic_hw
# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw
string MODE_AUTO_SW=automatic_sw
# Unattended relay detection & and manual activation of the charging relay
string MODE_MANUAL_SW=manual_sw

string operation_mode
	
bool contact_relay_status	# shows if there's contact with the charger
bool charger_relay_status   # shows if the relay for the charge is active or not
"""
  # Pseudo-constants
  MODE_DISABLED = 'disabled'
  MODE_AUTO_HW = 'automatic_hw'
  MODE_AUTO_SW = 'automatic_sw'
  MODE_MANUAL_SW = 'manual_sw'

  __slots__ = ['operation_mode','contact_relay_status','charger_relay_status']
  _slot_types = ['string','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       operation_mode,contact_relay_status,charger_relay_status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BatteryDockingStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.operation_mode is None:
        self.operation_mode = ''
      if self.contact_relay_status is None:
        self.contact_relay_status = False
      if self.charger_relay_status is None:
        self.charger_relay_status = False
    else:
      self.operation_mode = ''
      self.contact_relay_status = False
      self.charger_relay_status = False

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
      _x = self.operation_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.contact_relay_status, _x.charger_relay_status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.operation_mode = str[start:end].decode('utf-8')
      else:
        self.operation_mode = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.contact_relay_status, _x.charger_relay_status,) = _get_struct_2B().unpack(str[start:end])
      self.contact_relay_status = bool(self.contact_relay_status)
      self.charger_relay_status = bool(self.charger_relay_status)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.operation_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.contact_relay_status, _x.charger_relay_status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.operation_mode = str[start:end].decode('utf-8')
      else:
        self.operation_mode = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.contact_relay_status, _x.charger_relay_status,) = _get_struct_2B().unpack(str[start:end])
      self.contact_relay_status = bool(self.contact_relay_status)
      self.charger_relay_status = bool(self.charger_relay_status)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
