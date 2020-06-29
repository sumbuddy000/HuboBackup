# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moveit_msgs/PlaceLocation.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import moveit_msgs.msg
import std_msgs.msg
import trajectory_msgs.msg

class PlaceLocation(genpy.Message):
  _md5sum = "7b53f032c68481686026c3e9223d0713"
  _type = "moveit_msgs/PlaceLocation"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# A name for this grasp
string id

# The internal posture of the hand for the grasp
# positions and efforts are used
trajectory_msgs/JointTrajectory post_place_posture

# The position of the end-effector for the grasp relative to a reference frame 
# (that is always specified elsewhere, not in this message)
geometry_msgs/PoseStamped place_pose

# The estimated probability of success for this place, or some other
# measure of how "good" it is.
float64 quality

# The approach motion
GripperTranslation pre_place_approach

# The retreat motion
GripperTranslation post_place_retreat

# an optional list of obstacles that we have semantic information about
# and that can be touched/pushed/moved in the course of grasping
string[] allowed_touch_objects

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: moveit_msgs/GripperTranslation
# defines a translation for the gripper, used in pickup or place tasks
# for example for lifting an object off a table or approaching the table for placing

# the direction of the translation
geometry_msgs/Vector3Stamped direction

# the desired translation distance
float32 desired_distance

# the min distance that must be considered feasible before the
# grasp is even attempted
float32 min_distance

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['id','post_place_posture','place_pose','quality','pre_place_approach','post_place_retreat','allowed_touch_objects']
  _slot_types = ['string','trajectory_msgs/JointTrajectory','geometry_msgs/PoseStamped','float64','moveit_msgs/GripperTranslation','moveit_msgs/GripperTranslation','string[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,post_place_posture,place_pose,quality,pre_place_approach,post_place_retreat,allowed_touch_objects

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PlaceLocation, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.post_place_posture is None:
        self.post_place_posture = trajectory_msgs.msg.JointTrajectory()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.PoseStamped()
      if self.quality is None:
        self.quality = 0.
      if self.pre_place_approach is None:
        self.pre_place_approach = moveit_msgs.msg.GripperTranslation()
      if self.post_place_retreat is None:
        self.post_place_retreat = moveit_msgs.msg.GripperTranslation()
      if self.allowed_touch_objects is None:
        self.allowed_touch_objects = []
    else:
      self.id = ''
      self.post_place_posture = trajectory_msgs.msg.JointTrajectory()
      self.place_pose = geometry_msgs.msg.PoseStamped()
      self.quality = 0.
      self.pre_place_approach = moveit_msgs.msg.GripperTranslation()
      self.post_place_retreat = moveit_msgs.msg.GripperTranslation()
      self.allowed_touch_objects = []

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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.post_place_posture.header.seq, _x.post_place_posture.header.stamp.secs, _x.post_place_posture.header.stamp.nsecs))
      _x = self.post_place_posture.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.post_place_posture.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.post_place_posture.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.post_place_posture.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.post_place_posture.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.positions))
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.velocities))
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.accelerations))
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.effort))
        _v1 = val1.time_from_start
        _x = _v1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.place_pose.header.seq, _x.place_pose.header.stamp.secs, _x.place_pose.header.stamp.nsecs))
      _x = self.place_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d3I().pack(_x.place_pose.pose.position.x, _x.place_pose.pose.position.y, _x.place_pose.pose.position.z, _x.place_pose.pose.orientation.x, _x.place_pose.pose.orientation.y, _x.place_pose.pose.orientation.z, _x.place_pose.pose.orientation.w, _x.quality, _x.pre_place_approach.direction.header.seq, _x.pre_place_approach.direction.header.stamp.secs, _x.pre_place_approach.direction.header.stamp.nsecs))
      _x = self.pre_place_approach.direction.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2f3I().pack(_x.pre_place_approach.direction.vector.x, _x.pre_place_approach.direction.vector.y, _x.pre_place_approach.direction.vector.z, _x.pre_place_approach.desired_distance, _x.pre_place_approach.min_distance, _x.post_place_retreat.direction.header.seq, _x.post_place_retreat.direction.header.stamp.secs, _x.post_place_retreat.direction.header.stamp.nsecs))
      _x = self.post_place_retreat.direction.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2f().pack(_x.post_place_retreat.direction.vector.x, _x.post_place_retreat.direction.vector.y, _x.post_place_retreat.direction.vector.z, _x.post_place_retreat.desired_distance, _x.post_place_retreat.min_distance))
      length = len(self.allowed_touch_objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.allowed_touch_objects:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.post_place_posture is None:
        self.post_place_posture = trajectory_msgs.msg.JointTrajectory()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.PoseStamped()
      if self.pre_place_approach is None:
        self.pre_place_approach = moveit_msgs.msg.GripperTranslation()
      if self.post_place_retreat is None:
        self.post_place_retreat = moveit_msgs.msg.GripperTranslation()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.post_place_posture.header.seq, _x.post_place_posture.header.stamp.secs, _x.post_place_posture.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.post_place_posture.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.post_place_posture.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.post_place_posture.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.post_place_posture.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.post_place_posture.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = struct.unpack(pattern, str[start:end])
        _v2 = val1.time_from_start
        _x = _v2
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.post_place_posture.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.place_pose.header.seq, _x.place_pose.header.stamp.secs, _x.place_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.place_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.place_pose.pose.position.x, _x.place_pose.pose.position.y, _x.place_pose.pose.position.z, _x.place_pose.pose.orientation.x, _x.place_pose.pose.orientation.y, _x.place_pose.pose.orientation.z, _x.place_pose.pose.orientation.w, _x.quality, _x.pre_place_approach.direction.header.seq, _x.pre_place_approach.direction.header.stamp.secs, _x.pre_place_approach.direction.header.stamp.nsecs,) = _get_struct_8d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pre_place_approach.direction.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.pre_place_approach.direction.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 44
      (_x.pre_place_approach.direction.vector.x, _x.pre_place_approach.direction.vector.y, _x.pre_place_approach.direction.vector.z, _x.pre_place_approach.desired_distance, _x.pre_place_approach.min_distance, _x.post_place_retreat.direction.header.seq, _x.post_place_retreat.direction.header.stamp.secs, _x.post_place_retreat.direction.header.stamp.nsecs,) = _get_struct_3d2f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.post_place_retreat.direction.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.post_place_retreat.direction.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.post_place_retreat.direction.vector.x, _x.post_place_retreat.direction.vector.y, _x.post_place_retreat.direction.vector.z, _x.post_place_retreat.desired_distance, _x.post_place_retreat.min_distance,) = _get_struct_3d2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.allowed_touch_objects = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.allowed_touch_objects.append(val1)
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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.post_place_posture.header.seq, _x.post_place_posture.header.stamp.secs, _x.post_place_posture.header.stamp.nsecs))
      _x = self.post_place_posture.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.post_place_posture.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.post_place_posture.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.post_place_posture.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.post_place_posture.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.positions.tostring())
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.velocities.tostring())
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.accelerations.tostring())
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.effort.tostring())
        _v3 = val1.time_from_start
        _x = _v3
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.place_pose.header.seq, _x.place_pose.header.stamp.secs, _x.place_pose.header.stamp.nsecs))
      _x = self.place_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d3I().pack(_x.place_pose.pose.position.x, _x.place_pose.pose.position.y, _x.place_pose.pose.position.z, _x.place_pose.pose.orientation.x, _x.place_pose.pose.orientation.y, _x.place_pose.pose.orientation.z, _x.place_pose.pose.orientation.w, _x.quality, _x.pre_place_approach.direction.header.seq, _x.pre_place_approach.direction.header.stamp.secs, _x.pre_place_approach.direction.header.stamp.nsecs))
      _x = self.pre_place_approach.direction.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2f3I().pack(_x.pre_place_approach.direction.vector.x, _x.pre_place_approach.direction.vector.y, _x.pre_place_approach.direction.vector.z, _x.pre_place_approach.desired_distance, _x.pre_place_approach.min_distance, _x.post_place_retreat.direction.header.seq, _x.post_place_retreat.direction.header.stamp.secs, _x.post_place_retreat.direction.header.stamp.nsecs))
      _x = self.post_place_retreat.direction.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2f().pack(_x.post_place_retreat.direction.vector.x, _x.post_place_retreat.direction.vector.y, _x.post_place_retreat.direction.vector.z, _x.post_place_retreat.desired_distance, _x.post_place_retreat.min_distance))
      length = len(self.allowed_touch_objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.allowed_touch_objects:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.post_place_posture is None:
        self.post_place_posture = trajectory_msgs.msg.JointTrajectory()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.PoseStamped()
      if self.pre_place_approach is None:
        self.pre_place_approach = moveit_msgs.msg.GripperTranslation()
      if self.post_place_retreat is None:
        self.post_place_retreat = moveit_msgs.msg.GripperTranslation()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.post_place_posture.header.seq, _x.post_place_posture.header.stamp.secs, _x.post_place_posture.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.post_place_posture.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.post_place_posture.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.post_place_posture.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.post_place_posture.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.post_place_posture.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _v4 = val1.time_from_start
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.post_place_posture.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.place_pose.header.seq, _x.place_pose.header.stamp.secs, _x.place_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.place_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.place_pose.pose.position.x, _x.place_pose.pose.position.y, _x.place_pose.pose.position.z, _x.place_pose.pose.orientation.x, _x.place_pose.pose.orientation.y, _x.place_pose.pose.orientation.z, _x.place_pose.pose.orientation.w, _x.quality, _x.pre_place_approach.direction.header.seq, _x.pre_place_approach.direction.header.stamp.secs, _x.pre_place_approach.direction.header.stamp.nsecs,) = _get_struct_8d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pre_place_approach.direction.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.pre_place_approach.direction.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 44
      (_x.pre_place_approach.direction.vector.x, _x.pre_place_approach.direction.vector.y, _x.pre_place_approach.direction.vector.z, _x.pre_place_approach.desired_distance, _x.pre_place_approach.min_distance, _x.post_place_retreat.direction.header.seq, _x.post_place_retreat.direction.header.stamp.secs, _x.post_place_retreat.direction.header.stamp.nsecs,) = _get_struct_3d2f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.post_place_retreat.direction.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.post_place_retreat.direction.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.post_place_retreat.direction.vector.x, _x.post_place_retreat.direction.vector.y, _x.post_place_retreat.direction.vector.z, _x.post_place_retreat.desired_distance, _x.post_place_retreat.min_distance,) = _get_struct_3d2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.allowed_touch_objects = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.allowed_touch_objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d2f = None
def _get_struct_3d2f():
    global _struct_3d2f
    if _struct_3d2f is None:
        _struct_3d2f = struct.Struct("<3d2f")
    return _struct_3d2f
_struct_3d2f3I = None
def _get_struct_3d2f3I():
    global _struct_3d2f3I
    if _struct_3d2f3I is None:
        _struct_3d2f3I = struct.Struct("<3d2f3I")
    return _struct_3d2f3I
_struct_8d3I = None
def _get_struct_8d3I():
    global _struct_8d3I
    if _struct_8d3I is None:
        _struct_8d3I = struct.Struct("<8d3I")
    return _struct_8d3I
