int64 id
vision_msgs/BoundingBox3D box

## velocity and acceleration for bounding-box location
geometry_msgs/Twist velocity
geometry_msgs/Accel acceleration

## velocity and acceleration for bounding-box size
geometry_msgs/Vector3 size_dot
geometry_msgs/Vector3 size_ddot