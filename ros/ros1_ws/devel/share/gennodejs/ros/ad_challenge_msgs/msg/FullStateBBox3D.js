// Auto-generated. Do not edit!

// (in-package ad_challenge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let vision_msgs = _finder('vision_msgs');

//-----------------------------------------------------------

class FullStateBBox3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.box = null;
      this.velocity = null;
      this.acceleration = null;
      this.size_dot = null;
      this.size_ddot = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new vision_msgs.msg.BoundingBox3D();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('size_dot')) {
        this.size_dot = initObj.size_dot
      }
      else {
        this.size_dot = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('size_ddot')) {
        this.size_ddot = initObj.size_ddot
      }
      else {
        this.size_ddot = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FullStateBBox3D
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = vision_msgs.msg.BoundingBox3D.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [size_dot]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size_dot, buffer, bufferOffset);
    // Serialize message field [size_ddot]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size_ddot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FullStateBBox3D
    let len;
    let data = new FullStateBBox3D(null);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = vision_msgs.msg.BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_dot]
    data.size_dot = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_ddot]
    data.size_ddot = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 232;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ad_challenge_msgs/FullStateBBox3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9c7d008a4a47a5d05b55140b7b32d93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 id
    vision_msgs/BoundingBox3D box
    
    ## velocity and acceleration for bounding-box location
    geometry_msgs/Twist velocity
    geometry_msgs/Accel acceleration
    
    ## velocity and acceleration for bounding-box size
    geometry_msgs/Vector3 size_dot
    geometry_msgs/Vector3 size_ddot
    ================================================================================
    MSG: vision_msgs/BoundingBox3D
    # A 3D bounding box that can be positioned and rotated about its center (6 DOF)
    # Dimensions of this box are in meters, and as such, it may be migrated to
    #   another package, such as geometry_msgs, in the future.
    
    # The 3D position and orientation of the bounding box center
    geometry_msgs/Pose center
    
    # The size of the bounding box, in meters, surrounding the object's center
    #   pose.
    geometry_msgs/Vector3 size
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FullStateBBox3D(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.box !== undefined) {
      resolved.box = vision_msgs.msg.BoundingBox3D.Resolve(msg.box)
    }
    else {
      resolved.box = new vision_msgs.msg.BoundingBox3D()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Accel.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Accel()
    }

    if (msg.size_dot !== undefined) {
      resolved.size_dot = geometry_msgs.msg.Vector3.Resolve(msg.size_dot)
    }
    else {
      resolved.size_dot = new geometry_msgs.msg.Vector3()
    }

    if (msg.size_ddot !== undefined) {
      resolved.size_ddot = geometry_msgs.msg.Vector3.Resolve(msg.size_ddot)
    }
    else {
      resolved.size_ddot = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = FullStateBBox3D;
