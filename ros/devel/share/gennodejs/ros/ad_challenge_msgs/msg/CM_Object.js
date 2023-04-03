// Auto-generated. Do not edit!

// (in-package ad_challenge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CM_Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Object_name = null;
      this.state = null;
      this.distance = null;
      this.point_x = null;
      this.point_y = null;
      this.point_z = null;
      this.width = null;
      this.heigth = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('Object_name')) {
        this.Object_name = initObj.Object_name
      }
      else {
        this.Object_name = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('point_x')) {
        this.point_x = initObj.point_x
      }
      else {
        this.point_x = 0.0;
      }
      if (initObj.hasOwnProperty('point_y')) {
        this.point_y = initObj.point_y
      }
      else {
        this.point_y = 0.0;
      }
      if (initObj.hasOwnProperty('point_z')) {
        this.point_z = initObj.point_z
      }
      else {
        this.point_z = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('heigth')) {
        this.heigth = initObj.heigth
      }
      else {
        this.heigth = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CM_Object
    // Serialize message field [Object_name]
    bufferOffset = _serializer.string(obj.Object_name, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int64(obj.state, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [point_x]
    bufferOffset = _serializer.float32(obj.point_x, buffer, bufferOffset);
    // Serialize message field [point_y]
    bufferOffset = _serializer.float32(obj.point_y, buffer, bufferOffset);
    // Serialize message field [point_z]
    bufferOffset = _serializer.float32(obj.point_z, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [heigth]
    bufferOffset = _serializer.float32(obj.heigth, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CM_Object
    let len;
    let data = new CM_Object(null);
    // Deserialize message field [Object_name]
    data.Object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_x]
    data.point_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_y]
    data.point_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_z]
    data.point_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heigth]
    data.heigth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Object_name);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ad_challenge_msgs/CM_Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '776a0629d3fff71ce9c701a589add34f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CM_Object(null);
    if (msg.Object_name !== undefined) {
      resolved.Object_name = msg.Object_name;
    }
    else {
      resolved.Object_name = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.point_x !== undefined) {
      resolved.point_x = msg.point_x;
    }
    else {
      resolved.point_x = 0.0
    }

    if (msg.point_y !== undefined) {
      resolved.point_y = msg.point_y;
    }
    else {
      resolved.point_y = 0.0
    }

    if (msg.point_z !== undefined) {
      resolved.point_z = msg.point_z;
    }
    else {
      resolved.point_z = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.heigth !== undefined) {
      resolved.heigth = msg.heigth;
    }
    else {
      resolved.heigth = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = CM_Object;
