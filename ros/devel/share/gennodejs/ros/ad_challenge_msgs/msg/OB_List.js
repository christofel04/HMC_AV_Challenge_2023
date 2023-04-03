// Auto-generated. Do not edit!

// (in-package ad_challenge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CM_Object = require('./CM_Object.js');

//-----------------------------------------------------------

class OB_List {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.Object_list = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('Object_list')) {
        this.Object_list = initObj.Object_list
      }
      else {
        this.Object_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OB_List
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [Object_list]
    // Serialize the length for message field [Object_list]
    bufferOffset = _serializer.uint32(obj.Object_list.length, buffer, bufferOffset);
    obj.Object_list.forEach((val) => {
      bufferOffset = CM_Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OB_List
    let len;
    let data = new OB_List(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Object_list]
    // Deserialize array length for message field [Object_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Object_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Object_list[i] = CM_Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Object_list.forEach((val) => {
      length += CM_Object.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ad_challenge_msgs/OB_List';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16234d4525d50fecc276cdee56b97cf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time time   #testing
    
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OB_List(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.Object_list !== undefined) {
      resolved.Object_list = new Array(msg.Object_list.length);
      for (let i = 0; i < resolved.Object_list.length; ++i) {
        resolved.Object_list[i] = CM_Object.Resolve(msg.Object_list[i]);
      }
    }
    else {
      resolved.Object_list = []
    }

    return resolved;
    }
};

module.exports = OB_List;
