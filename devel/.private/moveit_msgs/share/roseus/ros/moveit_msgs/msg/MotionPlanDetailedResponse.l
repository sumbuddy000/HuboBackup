;; Auto-generated. Do not edit!


(when (boundp 'moveit_msgs::MotionPlanDetailedResponse)
  (if (not (find-package "MOVEIT_MSGS"))
    (make-package "MOVEIT_MSGS"))
  (shadow 'MotionPlanDetailedResponse (find-package "MOVEIT_MSGS")))
(unless (find-package "MOVEIT_MSGS::MOTIONPLANDETAILEDRESPONSE")
  (make-package "MOVEIT_MSGS::MOTIONPLANDETAILEDRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude MotionPlanDetailedResponse.msg.html


(defclass moveit_msgs::MotionPlanDetailedResponse
  :super ros::object
  :slots (_trajectory_start _group_name _trajectory _description _processing_time _error_code ))

(defmethod moveit_msgs::MotionPlanDetailedResponse
  (:init
   (&key
    ((:trajectory_start __trajectory_start) (instance moveit_msgs::RobotState :init))
    ((:group_name __group_name) "")
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance moveit_msgs::RobotTrajectory :init) r)) r))
    ((:description __description) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:processing_time __processing_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error_code __error_code) (instance moveit_msgs::MoveItErrorCodes :init))
    )
   (send-super :init)
   (setq _trajectory_start __trajectory_start)
   (setq _group_name (string __group_name))
   (setq _trajectory __trajectory)
   (setq _description __description)
   (setq _processing_time __processing_time)
   (setq _error_code __error_code)
   self)
  (:trajectory_start
   (&rest __trajectory_start)
   (if (keywordp (car __trajectory_start))
       (send* _trajectory_start __trajectory_start)
     (progn
       (if __trajectory_start (setq _trajectory_start (car __trajectory_start)))
       _trajectory_start)))
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:processing_time
   (&optional __processing_time)
   (if __processing_time (setq _processing_time __processing_time)) _processing_time)
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:serialization-length
   ()
   (+
    ;; moveit_msgs/RobotState _trajectory_start
    (send _trajectory_start :serialization-length)
    ;; string _group_name
    4 (length _group_name)
    ;; moveit_msgs/RobotTrajectory[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ;; string[] _description
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _description)) 4
    ;; float64[] _processing_time
    (* 8    (length _processing_time)) 4
    ;; moveit_msgs/MoveItErrorCodes _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveit_msgs/RobotState _trajectory_start
       (send _trajectory_start :serialize s)
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; moveit_msgs/RobotTrajectory[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;; string[] _description
     (write-long (length _description) s)
     (dolist (elem _description)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _processing_time
     (write-long (length _processing_time) s)
     (dotimes (i (length _processing_time))
       (sys::poke (elt _processing_time i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; moveit_msgs/MoveItErrorCodes _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveit_msgs/RobotState _trajectory_start
     (send _trajectory_start :deserialize buf ptr-) (incf ptr- (send _trajectory_start :serialization-length))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; moveit_msgs/RobotTrajectory[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance moveit_msgs::RobotTrajectory :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _description i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _processing_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _processing_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _processing_time i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; moveit_msgs/MoveItErrorCodes _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get moveit_msgs::MotionPlanDetailedResponse :md5sum-) "24ca49329688ccb45f3f1e82de532220")
(setf (get moveit_msgs::MotionPlanDetailedResponse :datatype-) "moveit_msgs/MotionPlanDetailedResponse")
(setf (get moveit_msgs::MotionPlanDetailedResponse :definition-)
      "# The representation of a solution to a planning problem, including intermediate data

# The starting state considered for the robot solution path
RobotState trajectory_start

# The group used for planning (usually the same as in the request)
string group_name

# Multiple solution paths are reported, each reflecting intermediate steps in the trajectory processing

# The list of reported trajectories
RobotTrajectory[] trajectory

# Description of the reported trajectories (name of processing step)
string[] description

# The amount of time spent computing a particular step in motion plan computation 
float64[] processing_time

# Status at the end of this plan
MoveItErrorCodes error_code

================================================================================
MSG: moveit_msgs/RobotState
# This message contains information about the robot state, i.e. the positions of its joints and links
sensor_msgs/JointState joint_state

# Joints that may have multiple DOF are specified here
sensor_msgs/MultiDOFJointState multi_dof_joint_state

# Attached collision objects (attached to some link on the robot)
AttachedCollisionObject[] attached_collision_objects

# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene
# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies
# of a moveit::core::RobotState before updating it with this message)
bool is_diff

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
MSG: sensor_msgs/MultiDOFJointState
# Representation of state for joints with multiple degrees of freedom, 
# following the structure of JointState.
#
# It is assumed that a joint in a system corresponds to a transform that gets applied 
# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
# and those 3DOF can be expressed as a transformation matrix, and that transformation
# matrix can be converted back to (x, y, yaw)
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# wrench associated with them, you can leave the wrench array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.

Header header

string[] joint_names
geometry_msgs/Transform[] transforms
geometry_msgs/Twist[] twist
geometry_msgs/Wrench[] wrench

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: moveit_msgs/AttachedCollisionObject
# The CollisionObject will be attached with a fixed joint to this link
string link_name

#This contains the actual shapes and poses for the CollisionObject
#to be attached to the link
#If action is remove and no object.id is set, all objects
#attached to the link indicated by link_name will be removed
CollisionObject object

# The set of links that the attached objects are allowed to touch
# by default - the link_name is already considered by default
string[] touch_links

# If certain links were placed in a particular posture for this object to remain attached 
# (e.g., an end effector closing around an object), the posture necessary for releasing
# the object is stored here
trajectory_msgs/JointTrajectory detach_posture

# The weight of the attached object, if known
float64 weight

================================================================================
MSG: moveit_msgs/CollisionObject
# A header, used for interpreting the poses
Header header

# The object's pose relative to the header frame.
# The shapes and subframe poses are defined relative to this pose.
geometry_msgs/Pose pose

# The id of the object (name used in MoveIt)
string id

# The object type in a database of known objects
object_recognition_msgs/ObjectType type

# The collision geometries associated with the object.
# Their poses are with respect to the object's pose

# Solid geometric primitives
shape_msgs/SolidPrimitive[] primitives
geometry_msgs/Pose[] primitive_poses

# Meshes
shape_msgs/Mesh[] meshes
geometry_msgs/Pose[] mesh_poses

# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)
shape_msgs/Plane[] planes
geometry_msgs/Pose[] plane_poses

# Named subframes on the object. Use these to define points of interest on the object that you want
# to plan with (e.g. \"tip\", \"spout\", \"handle\"). The id of the object will be prepended to the subframe.
# If an object with the id \"screwdriver\" and a subframe \"tip\" is in the scene, you can use the frame
# \"screwdriver/tip\" for planning.
# The length of the subframe_names and subframe_poses has to be identical.
string[] subframe_names
geometry_msgs/Pose[] subframe_poses

# Adds the object to the planning scene. If the object previously existed, it is replaced.
byte ADD=0

# Removes the object from the environment entirely (everything that matches the specified id)
byte REMOVE=1

# Append to an object that already exists in the planning scene. If the object does not exist, it is added.
byte APPEND=2

# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)
# if solely moving the object is desired
byte MOVE=3

# Operation to be performed
byte operation

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
MSG: object_recognition_msgs/ObjectType
################################################## OBJECT ID #########################################################

# Contains information about the type of a found object. Those two sets of parameters together uniquely define an
# object

# The key of the found object: the unique identifier in the given db
string key

# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"
# There is no conventional format for those parameters and it's nice to keep that flexibility.
# The object_recognition_core as a generic DB type that can read those fields
# Current examples:
# For CouchDB:
#   type: 'CouchDB'
#   root: 'http://localhost:5984'
#   collection: 'object_recognition'
# For SQL household database:
#   type: 'SqlHousehold'
#   host: 'wgs36'
#   port: 5432
#   user: 'willow'
#   password: 'willow'
#   name: 'household_objects'
#   module: 'tabletop'
string db

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

================================================================================
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: shape_msgs/Plane
# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
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
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: moveit_msgs/MoveItErrorCodes
int32 val

# overall behavior
int32 SUCCESS=1
int32 FAILURE=99999

int32 PLANNING_FAILED=-1
int32 INVALID_MOTION_PLAN=-2
int32 MOTION_PLAN_INVALIDATED_BY_ENVIRONMENT_CHANGE=-3
int32 CONTROL_FAILED=-4
int32 UNABLE_TO_AQUIRE_SENSOR_DATA=-5
int32 TIMED_OUT=-6
int32 PREEMPTED=-7

# planning & kinematics request errors
int32 START_STATE_IN_COLLISION=-10
int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-11

int32 GOAL_IN_COLLISION=-12
int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-13
int32 GOAL_CONSTRAINTS_VIOLATED=-14

int32 INVALID_GROUP_NAME=-15
int32 INVALID_GOAL_CONSTRAINTS=-16
int32 INVALID_ROBOT_STATE=-17
int32 INVALID_LINK_NAME=-18
int32 INVALID_OBJECT_NAME=-19

# system errors
int32 FRAME_TRANSFORM_FAILURE=-21
int32 COLLISION_CHECKING_UNAVAILABLE=-22
int32 ROBOT_STATE_STALE=-23
int32 SENSOR_INFO_STALE=-24
int32 COMMUNICATION_FAILURE=-25

# kinematics errors
int32 NO_IK_SOLUTION=-31

")



(provide :moveit_msgs/MotionPlanDetailedResponse "24ca49329688ccb45f3f1e82de532220")

