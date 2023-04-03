// Auto-generated. Do not edit!

// (in-package ad_challenge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UAQ_Out {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.cycleno = null;
      this.synthdelay = null;
      this.Car_Roll = null;
      this.Car_Pitch = null;
      this.Car_Yaw = null;
      this.Car_vx = null;
      this.Car_vy = null;
      this.Car_vz = null;
      this.Car_RollVel = null;
      this.Car_PitchVel = null;
      this.Car_YawVel = null;
      this.Car_ax = null;
      this.Car_ay = null;
      this.Car_az = null;
      this.Car_RollAcc = null;
      this.Car_PitchAcc = null;
      this.Car_YawAcc = null;
      this.Steer_WhlAng = null;
      this.VC_Gas = null;
      this.VC_Brake = null;
      this.VC_SelectorCtrl = null;
      this.Sensor_Inertial_0_Vel_B_x = null;
      this.Sensor_Inertial_0_Vel_B_y = null;
      this.Sensor_Inertial_0_Vel_B_z = null;
      this.Sensor_Inertial_0_Omega_B_x = null;
      this.Sensor_Inertial_0_Omega_B_y = null;
      this.Sensor_Inertial_0_Omega_B_z = null;
      this.Sensor_Inertial_0_Acc_B_x = null;
      this.Sensor_Inertial_0_Acc_B_y = null;
      this.Sensor_Inertial_0_Acc_B_z = null;
      this.Sensor_Inertial_0_Aplha_B_x = null;
      this.Sensor_Inertial_0_Aplha_B_y = null;
      this.Sensor_Inertial_0_Aplha_B_z = null;
      this.Sensor_Inertial_1_Vel_B_x = null;
      this.Sensor_Inertial_1_Vel_B_y = null;
      this.Sensor_Inertial_1_Vel_B_z = null;
      this.Sensor_Inertial_1_Omega_B_x = null;
      this.Sensor_Inertial_1_Omega_B_y = null;
      this.Sensor_Inertial_1_Omega_B_z = null;
      this.Sensor_Inertial_1_Acc_B_x = null;
      this.Sensor_Inertial_1_Acc_B_y = null;
      this.Sensor_Inertial_1_Acc_B_z = null;
      this.Sensor_Inertial_1_Aplha_B_x = null;
      this.Sensor_Inertial_1_Aplha_B_y = null;
      this.Sensor_Inertial_1_Aplha_B_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('cycleno')) {
        this.cycleno = initObj.cycleno
      }
      else {
        this.cycleno = 0;
      }
      if (initObj.hasOwnProperty('synthdelay')) {
        this.synthdelay = initObj.synthdelay
      }
      else {
        this.synthdelay = 0.0;
      }
      if (initObj.hasOwnProperty('Car_Roll')) {
        this.Car_Roll = initObj.Car_Roll
      }
      else {
        this.Car_Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Car_Pitch')) {
        this.Car_Pitch = initObj.Car_Pitch
      }
      else {
        this.Car_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Car_Yaw')) {
        this.Car_Yaw = initObj.Car_Yaw
      }
      else {
        this.Car_Yaw = 0.0;
      }
      if (initObj.hasOwnProperty('Car_vx')) {
        this.Car_vx = initObj.Car_vx
      }
      else {
        this.Car_vx = 0.0;
      }
      if (initObj.hasOwnProperty('Car_vy')) {
        this.Car_vy = initObj.Car_vy
      }
      else {
        this.Car_vy = 0.0;
      }
      if (initObj.hasOwnProperty('Car_vz')) {
        this.Car_vz = initObj.Car_vz
      }
      else {
        this.Car_vz = 0.0;
      }
      if (initObj.hasOwnProperty('Car_RollVel')) {
        this.Car_RollVel = initObj.Car_RollVel
      }
      else {
        this.Car_RollVel = 0.0;
      }
      if (initObj.hasOwnProperty('Car_PitchVel')) {
        this.Car_PitchVel = initObj.Car_PitchVel
      }
      else {
        this.Car_PitchVel = 0.0;
      }
      if (initObj.hasOwnProperty('Car_YawVel')) {
        this.Car_YawVel = initObj.Car_YawVel
      }
      else {
        this.Car_YawVel = 0.0;
      }
      if (initObj.hasOwnProperty('Car_ax')) {
        this.Car_ax = initObj.Car_ax
      }
      else {
        this.Car_ax = 0.0;
      }
      if (initObj.hasOwnProperty('Car_ay')) {
        this.Car_ay = initObj.Car_ay
      }
      else {
        this.Car_ay = 0.0;
      }
      if (initObj.hasOwnProperty('Car_az')) {
        this.Car_az = initObj.Car_az
      }
      else {
        this.Car_az = 0.0;
      }
      if (initObj.hasOwnProperty('Car_RollAcc')) {
        this.Car_RollAcc = initObj.Car_RollAcc
      }
      else {
        this.Car_RollAcc = 0.0;
      }
      if (initObj.hasOwnProperty('Car_PitchAcc')) {
        this.Car_PitchAcc = initObj.Car_PitchAcc
      }
      else {
        this.Car_PitchAcc = 0.0;
      }
      if (initObj.hasOwnProperty('Car_YawAcc')) {
        this.Car_YawAcc = initObj.Car_YawAcc
      }
      else {
        this.Car_YawAcc = 0.0;
      }
      if (initObj.hasOwnProperty('Steer_WhlAng')) {
        this.Steer_WhlAng = initObj.Steer_WhlAng
      }
      else {
        this.Steer_WhlAng = 0.0;
      }
      if (initObj.hasOwnProperty('VC_Gas')) {
        this.VC_Gas = initObj.VC_Gas
      }
      else {
        this.VC_Gas = 0.0;
      }
      if (initObj.hasOwnProperty('VC_Brake')) {
        this.VC_Brake = initObj.VC_Brake
      }
      else {
        this.VC_Brake = 0.0;
      }
      if (initObj.hasOwnProperty('VC_SelectorCtrl')) {
        this.VC_SelectorCtrl = initObj.VC_SelectorCtrl
      }
      else {
        this.VC_SelectorCtrl = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Vel_B_x')) {
        this.Sensor_Inertial_0_Vel_B_x = initObj.Sensor_Inertial_0_Vel_B_x
      }
      else {
        this.Sensor_Inertial_0_Vel_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Vel_B_y')) {
        this.Sensor_Inertial_0_Vel_B_y = initObj.Sensor_Inertial_0_Vel_B_y
      }
      else {
        this.Sensor_Inertial_0_Vel_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Vel_B_z')) {
        this.Sensor_Inertial_0_Vel_B_z = initObj.Sensor_Inertial_0_Vel_B_z
      }
      else {
        this.Sensor_Inertial_0_Vel_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Omega_B_x')) {
        this.Sensor_Inertial_0_Omega_B_x = initObj.Sensor_Inertial_0_Omega_B_x
      }
      else {
        this.Sensor_Inertial_0_Omega_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Omega_B_y')) {
        this.Sensor_Inertial_0_Omega_B_y = initObj.Sensor_Inertial_0_Omega_B_y
      }
      else {
        this.Sensor_Inertial_0_Omega_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Omega_B_z')) {
        this.Sensor_Inertial_0_Omega_B_z = initObj.Sensor_Inertial_0_Omega_B_z
      }
      else {
        this.Sensor_Inertial_0_Omega_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Acc_B_x')) {
        this.Sensor_Inertial_0_Acc_B_x = initObj.Sensor_Inertial_0_Acc_B_x
      }
      else {
        this.Sensor_Inertial_0_Acc_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Acc_B_y')) {
        this.Sensor_Inertial_0_Acc_B_y = initObj.Sensor_Inertial_0_Acc_B_y
      }
      else {
        this.Sensor_Inertial_0_Acc_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Acc_B_z')) {
        this.Sensor_Inertial_0_Acc_B_z = initObj.Sensor_Inertial_0_Acc_B_z
      }
      else {
        this.Sensor_Inertial_0_Acc_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Aplha_B_x')) {
        this.Sensor_Inertial_0_Aplha_B_x = initObj.Sensor_Inertial_0_Aplha_B_x
      }
      else {
        this.Sensor_Inertial_0_Aplha_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Aplha_B_y')) {
        this.Sensor_Inertial_0_Aplha_B_y = initObj.Sensor_Inertial_0_Aplha_B_y
      }
      else {
        this.Sensor_Inertial_0_Aplha_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_0_Aplha_B_z')) {
        this.Sensor_Inertial_0_Aplha_B_z = initObj.Sensor_Inertial_0_Aplha_B_z
      }
      else {
        this.Sensor_Inertial_0_Aplha_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Vel_B_x')) {
        this.Sensor_Inertial_1_Vel_B_x = initObj.Sensor_Inertial_1_Vel_B_x
      }
      else {
        this.Sensor_Inertial_1_Vel_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Vel_B_y')) {
        this.Sensor_Inertial_1_Vel_B_y = initObj.Sensor_Inertial_1_Vel_B_y
      }
      else {
        this.Sensor_Inertial_1_Vel_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Vel_B_z')) {
        this.Sensor_Inertial_1_Vel_B_z = initObj.Sensor_Inertial_1_Vel_B_z
      }
      else {
        this.Sensor_Inertial_1_Vel_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Omega_B_x')) {
        this.Sensor_Inertial_1_Omega_B_x = initObj.Sensor_Inertial_1_Omega_B_x
      }
      else {
        this.Sensor_Inertial_1_Omega_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Omega_B_y')) {
        this.Sensor_Inertial_1_Omega_B_y = initObj.Sensor_Inertial_1_Omega_B_y
      }
      else {
        this.Sensor_Inertial_1_Omega_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Omega_B_z')) {
        this.Sensor_Inertial_1_Omega_B_z = initObj.Sensor_Inertial_1_Omega_B_z
      }
      else {
        this.Sensor_Inertial_1_Omega_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Acc_B_x')) {
        this.Sensor_Inertial_1_Acc_B_x = initObj.Sensor_Inertial_1_Acc_B_x
      }
      else {
        this.Sensor_Inertial_1_Acc_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Acc_B_y')) {
        this.Sensor_Inertial_1_Acc_B_y = initObj.Sensor_Inertial_1_Acc_B_y
      }
      else {
        this.Sensor_Inertial_1_Acc_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Acc_B_z')) {
        this.Sensor_Inertial_1_Acc_B_z = initObj.Sensor_Inertial_1_Acc_B_z
      }
      else {
        this.Sensor_Inertial_1_Acc_B_z = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Aplha_B_x')) {
        this.Sensor_Inertial_1_Aplha_B_x = initObj.Sensor_Inertial_1_Aplha_B_x
      }
      else {
        this.Sensor_Inertial_1_Aplha_B_x = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Aplha_B_y')) {
        this.Sensor_Inertial_1_Aplha_B_y = initObj.Sensor_Inertial_1_Aplha_B_y
      }
      else {
        this.Sensor_Inertial_1_Aplha_B_y = 0.0;
      }
      if (initObj.hasOwnProperty('Sensor_Inertial_1_Aplha_B_z')) {
        this.Sensor_Inertial_1_Aplha_B_z = initObj.Sensor_Inertial_1_Aplha_B_z
      }
      else {
        this.Sensor_Inertial_1_Aplha_B_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UAQ_Out
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [cycleno]
    bufferOffset = _serializer.int64(obj.cycleno, buffer, bufferOffset);
    // Serialize message field [synthdelay]
    bufferOffset = _serializer.float64(obj.synthdelay, buffer, bufferOffset);
    // Serialize message field [Car_Roll]
    bufferOffset = _serializer.float64(obj.Car_Roll, buffer, bufferOffset);
    // Serialize message field [Car_Pitch]
    bufferOffset = _serializer.float64(obj.Car_Pitch, buffer, bufferOffset);
    // Serialize message field [Car_Yaw]
    bufferOffset = _serializer.float64(obj.Car_Yaw, buffer, bufferOffset);
    // Serialize message field [Car_vx]
    bufferOffset = _serializer.float64(obj.Car_vx, buffer, bufferOffset);
    // Serialize message field [Car_vy]
    bufferOffset = _serializer.float64(obj.Car_vy, buffer, bufferOffset);
    // Serialize message field [Car_vz]
    bufferOffset = _serializer.float64(obj.Car_vz, buffer, bufferOffset);
    // Serialize message field [Car_RollVel]
    bufferOffset = _serializer.float64(obj.Car_RollVel, buffer, bufferOffset);
    // Serialize message field [Car_PitchVel]
    bufferOffset = _serializer.float64(obj.Car_PitchVel, buffer, bufferOffset);
    // Serialize message field [Car_YawVel]
    bufferOffset = _serializer.float64(obj.Car_YawVel, buffer, bufferOffset);
    // Serialize message field [Car_ax]
    bufferOffset = _serializer.float64(obj.Car_ax, buffer, bufferOffset);
    // Serialize message field [Car_ay]
    bufferOffset = _serializer.float64(obj.Car_ay, buffer, bufferOffset);
    // Serialize message field [Car_az]
    bufferOffset = _serializer.float64(obj.Car_az, buffer, bufferOffset);
    // Serialize message field [Car_RollAcc]
    bufferOffset = _serializer.float64(obj.Car_RollAcc, buffer, bufferOffset);
    // Serialize message field [Car_PitchAcc]
    bufferOffset = _serializer.float64(obj.Car_PitchAcc, buffer, bufferOffset);
    // Serialize message field [Car_YawAcc]
    bufferOffset = _serializer.float64(obj.Car_YawAcc, buffer, bufferOffset);
    // Serialize message field [Steer_WhlAng]
    bufferOffset = _serializer.float64(obj.Steer_WhlAng, buffer, bufferOffset);
    // Serialize message field [VC_Gas]
    bufferOffset = _serializer.float64(obj.VC_Gas, buffer, bufferOffset);
    // Serialize message field [VC_Brake]
    bufferOffset = _serializer.float64(obj.VC_Brake, buffer, bufferOffset);
    // Serialize message field [VC_SelectorCtrl]
    bufferOffset = _serializer.float64(obj.VC_SelectorCtrl, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Vel_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Vel_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Vel_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Vel_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Vel_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Vel_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Omega_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Omega_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Omega_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Omega_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Omega_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Omega_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Acc_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Acc_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Acc_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Acc_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Acc_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Acc_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Aplha_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Aplha_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Aplha_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Aplha_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_0_Aplha_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_0_Aplha_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Vel_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Vel_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Vel_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Vel_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Vel_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Vel_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Omega_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Omega_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Omega_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Omega_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Omega_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Omega_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Acc_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Acc_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Acc_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Acc_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Acc_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Acc_B_z, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Aplha_B_x]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Aplha_B_x, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Aplha_B_y]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Aplha_B_y, buffer, bufferOffset);
    // Serialize message field [Sensor_Inertial_1_Aplha_B_z]
    bufferOffset = _serializer.float64(obj.Sensor_Inertial_1_Aplha_B_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UAQ_Out
    let len;
    let data = new UAQ_Out(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [cycleno]
    data.cycleno = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [synthdelay]
    data.synthdelay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_Roll]
    data.Car_Roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_Pitch]
    data.Car_Pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_Yaw]
    data.Car_Yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_vx]
    data.Car_vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_vy]
    data.Car_vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_vz]
    data.Car_vz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_RollVel]
    data.Car_RollVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_PitchVel]
    data.Car_PitchVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_YawVel]
    data.Car_YawVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_ax]
    data.Car_ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_ay]
    data.Car_ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_az]
    data.Car_az = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_RollAcc]
    data.Car_RollAcc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_PitchAcc]
    data.Car_PitchAcc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Car_YawAcc]
    data.Car_YawAcc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Steer_WhlAng]
    data.Steer_WhlAng = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VC_Gas]
    data.VC_Gas = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VC_Brake]
    data.VC_Brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VC_SelectorCtrl]
    data.VC_SelectorCtrl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Vel_B_x]
    data.Sensor_Inertial_0_Vel_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Vel_B_y]
    data.Sensor_Inertial_0_Vel_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Vel_B_z]
    data.Sensor_Inertial_0_Vel_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Omega_B_x]
    data.Sensor_Inertial_0_Omega_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Omega_B_y]
    data.Sensor_Inertial_0_Omega_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Omega_B_z]
    data.Sensor_Inertial_0_Omega_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Acc_B_x]
    data.Sensor_Inertial_0_Acc_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Acc_B_y]
    data.Sensor_Inertial_0_Acc_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Acc_B_z]
    data.Sensor_Inertial_0_Acc_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Aplha_B_x]
    data.Sensor_Inertial_0_Aplha_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Aplha_B_y]
    data.Sensor_Inertial_0_Aplha_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_0_Aplha_B_z]
    data.Sensor_Inertial_0_Aplha_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Vel_B_x]
    data.Sensor_Inertial_1_Vel_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Vel_B_y]
    data.Sensor_Inertial_1_Vel_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Vel_B_z]
    data.Sensor_Inertial_1_Vel_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Omega_B_x]
    data.Sensor_Inertial_1_Omega_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Omega_B_y]
    data.Sensor_Inertial_1_Omega_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Omega_B_z]
    data.Sensor_Inertial_1_Omega_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Acc_B_x]
    data.Sensor_Inertial_1_Acc_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Acc_B_y]
    data.Sensor_Inertial_1_Acc_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Acc_B_z]
    data.Sensor_Inertial_1_Acc_B_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Aplha_B_x]
    data.Sensor_Inertial_1_Aplha_B_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Aplha_B_y]
    data.Sensor_Inertial_1_Aplha_B_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Sensor_Inertial_1_Aplha_B_z]
    data.Sensor_Inertial_1_Aplha_B_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 368;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ad_challenge_msgs/UAQ_Out';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10e861f2efe1d78792349327441cc038';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Message from CarMaker ROS Node to external ROS Node
    #
    
    # General
    Header  header                                 # General ROS Header (optional)
    time    time                                   # ROS time when message was sent (optional)
    int64   cycleno                                # Cycle number since simulation start (optional)
    float64 synthdelay                             # Synthetic delay to check synchronization (optional)
    
    float64 Car_Roll
    float64 Car_Pitch
    float64 Car_Yaw
    float64 Car_vx
    float64 Car_vy
    float64 Car_vz
    float64 Car_RollVel
    float64 Car_PitchVel
    float64 Car_YawVel
    float64 Car_ax
    float64 Car_ay
    float64 Car_az
    float64 Car_RollAcc
    float64 Car_PitchAcc
    float64 Car_YawAcc
    float64 Steer_WhlAng
    float64 VC_Gas
    float64 VC_Brake
    float64 VC_SelectorCtrl
    float64 Sensor_Inertial_0_Vel_B_x
    float64 Sensor_Inertial_0_Vel_B_y
    float64 Sensor_Inertial_0_Vel_B_z
    float64 Sensor_Inertial_0_Omega_B_x
    float64 Sensor_Inertial_0_Omega_B_y
    float64 Sensor_Inertial_0_Omega_B_z
    float64 Sensor_Inertial_0_Acc_B_x
    float64 Sensor_Inertial_0_Acc_B_y
    float64 Sensor_Inertial_0_Acc_B_z
    float64 Sensor_Inertial_0_Aplha_B_x
    float64 Sensor_Inertial_0_Aplha_B_y
    float64 Sensor_Inertial_0_Aplha_B_z
    float64 Sensor_Inertial_1_Vel_B_x
    float64 Sensor_Inertial_1_Vel_B_y
    float64 Sensor_Inertial_1_Vel_B_z
    float64 Sensor_Inertial_1_Omega_B_x
    float64 Sensor_Inertial_1_Omega_B_y
    float64 Sensor_Inertial_1_Omega_B_z
    float64 Sensor_Inertial_1_Acc_B_x
    float64 Sensor_Inertial_1_Acc_B_y
    float64 Sensor_Inertial_1_Acc_B_z
    float64 Sensor_Inertial_1_Aplha_B_x
    float64 Sensor_Inertial_1_Aplha_B_y
    float64 Sensor_Inertial_1_Aplha_B_z
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UAQ_Out(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.cycleno !== undefined) {
      resolved.cycleno = msg.cycleno;
    }
    else {
      resolved.cycleno = 0
    }

    if (msg.synthdelay !== undefined) {
      resolved.synthdelay = msg.synthdelay;
    }
    else {
      resolved.synthdelay = 0.0
    }

    if (msg.Car_Roll !== undefined) {
      resolved.Car_Roll = msg.Car_Roll;
    }
    else {
      resolved.Car_Roll = 0.0
    }

    if (msg.Car_Pitch !== undefined) {
      resolved.Car_Pitch = msg.Car_Pitch;
    }
    else {
      resolved.Car_Pitch = 0.0
    }

    if (msg.Car_Yaw !== undefined) {
      resolved.Car_Yaw = msg.Car_Yaw;
    }
    else {
      resolved.Car_Yaw = 0.0
    }

    if (msg.Car_vx !== undefined) {
      resolved.Car_vx = msg.Car_vx;
    }
    else {
      resolved.Car_vx = 0.0
    }

    if (msg.Car_vy !== undefined) {
      resolved.Car_vy = msg.Car_vy;
    }
    else {
      resolved.Car_vy = 0.0
    }

    if (msg.Car_vz !== undefined) {
      resolved.Car_vz = msg.Car_vz;
    }
    else {
      resolved.Car_vz = 0.0
    }

    if (msg.Car_RollVel !== undefined) {
      resolved.Car_RollVel = msg.Car_RollVel;
    }
    else {
      resolved.Car_RollVel = 0.0
    }

    if (msg.Car_PitchVel !== undefined) {
      resolved.Car_PitchVel = msg.Car_PitchVel;
    }
    else {
      resolved.Car_PitchVel = 0.0
    }

    if (msg.Car_YawVel !== undefined) {
      resolved.Car_YawVel = msg.Car_YawVel;
    }
    else {
      resolved.Car_YawVel = 0.0
    }

    if (msg.Car_ax !== undefined) {
      resolved.Car_ax = msg.Car_ax;
    }
    else {
      resolved.Car_ax = 0.0
    }

    if (msg.Car_ay !== undefined) {
      resolved.Car_ay = msg.Car_ay;
    }
    else {
      resolved.Car_ay = 0.0
    }

    if (msg.Car_az !== undefined) {
      resolved.Car_az = msg.Car_az;
    }
    else {
      resolved.Car_az = 0.0
    }

    if (msg.Car_RollAcc !== undefined) {
      resolved.Car_RollAcc = msg.Car_RollAcc;
    }
    else {
      resolved.Car_RollAcc = 0.0
    }

    if (msg.Car_PitchAcc !== undefined) {
      resolved.Car_PitchAcc = msg.Car_PitchAcc;
    }
    else {
      resolved.Car_PitchAcc = 0.0
    }

    if (msg.Car_YawAcc !== undefined) {
      resolved.Car_YawAcc = msg.Car_YawAcc;
    }
    else {
      resolved.Car_YawAcc = 0.0
    }

    if (msg.Steer_WhlAng !== undefined) {
      resolved.Steer_WhlAng = msg.Steer_WhlAng;
    }
    else {
      resolved.Steer_WhlAng = 0.0
    }

    if (msg.VC_Gas !== undefined) {
      resolved.VC_Gas = msg.VC_Gas;
    }
    else {
      resolved.VC_Gas = 0.0
    }

    if (msg.VC_Brake !== undefined) {
      resolved.VC_Brake = msg.VC_Brake;
    }
    else {
      resolved.VC_Brake = 0.0
    }

    if (msg.VC_SelectorCtrl !== undefined) {
      resolved.VC_SelectorCtrl = msg.VC_SelectorCtrl;
    }
    else {
      resolved.VC_SelectorCtrl = 0.0
    }

    if (msg.Sensor_Inertial_0_Vel_B_x !== undefined) {
      resolved.Sensor_Inertial_0_Vel_B_x = msg.Sensor_Inertial_0_Vel_B_x;
    }
    else {
      resolved.Sensor_Inertial_0_Vel_B_x = 0.0
    }

    if (msg.Sensor_Inertial_0_Vel_B_y !== undefined) {
      resolved.Sensor_Inertial_0_Vel_B_y = msg.Sensor_Inertial_0_Vel_B_y;
    }
    else {
      resolved.Sensor_Inertial_0_Vel_B_y = 0.0
    }

    if (msg.Sensor_Inertial_0_Vel_B_z !== undefined) {
      resolved.Sensor_Inertial_0_Vel_B_z = msg.Sensor_Inertial_0_Vel_B_z;
    }
    else {
      resolved.Sensor_Inertial_0_Vel_B_z = 0.0
    }

    if (msg.Sensor_Inertial_0_Omega_B_x !== undefined) {
      resolved.Sensor_Inertial_0_Omega_B_x = msg.Sensor_Inertial_0_Omega_B_x;
    }
    else {
      resolved.Sensor_Inertial_0_Omega_B_x = 0.0
    }

    if (msg.Sensor_Inertial_0_Omega_B_y !== undefined) {
      resolved.Sensor_Inertial_0_Omega_B_y = msg.Sensor_Inertial_0_Omega_B_y;
    }
    else {
      resolved.Sensor_Inertial_0_Omega_B_y = 0.0
    }

    if (msg.Sensor_Inertial_0_Omega_B_z !== undefined) {
      resolved.Sensor_Inertial_0_Omega_B_z = msg.Sensor_Inertial_0_Omega_B_z;
    }
    else {
      resolved.Sensor_Inertial_0_Omega_B_z = 0.0
    }

    if (msg.Sensor_Inertial_0_Acc_B_x !== undefined) {
      resolved.Sensor_Inertial_0_Acc_B_x = msg.Sensor_Inertial_0_Acc_B_x;
    }
    else {
      resolved.Sensor_Inertial_0_Acc_B_x = 0.0
    }

    if (msg.Sensor_Inertial_0_Acc_B_y !== undefined) {
      resolved.Sensor_Inertial_0_Acc_B_y = msg.Sensor_Inertial_0_Acc_B_y;
    }
    else {
      resolved.Sensor_Inertial_0_Acc_B_y = 0.0
    }

    if (msg.Sensor_Inertial_0_Acc_B_z !== undefined) {
      resolved.Sensor_Inertial_0_Acc_B_z = msg.Sensor_Inertial_0_Acc_B_z;
    }
    else {
      resolved.Sensor_Inertial_0_Acc_B_z = 0.0
    }

    if (msg.Sensor_Inertial_0_Aplha_B_x !== undefined) {
      resolved.Sensor_Inertial_0_Aplha_B_x = msg.Sensor_Inertial_0_Aplha_B_x;
    }
    else {
      resolved.Sensor_Inertial_0_Aplha_B_x = 0.0
    }

    if (msg.Sensor_Inertial_0_Aplha_B_y !== undefined) {
      resolved.Sensor_Inertial_0_Aplha_B_y = msg.Sensor_Inertial_0_Aplha_B_y;
    }
    else {
      resolved.Sensor_Inertial_0_Aplha_B_y = 0.0
    }

    if (msg.Sensor_Inertial_0_Aplha_B_z !== undefined) {
      resolved.Sensor_Inertial_0_Aplha_B_z = msg.Sensor_Inertial_0_Aplha_B_z;
    }
    else {
      resolved.Sensor_Inertial_0_Aplha_B_z = 0.0
    }

    if (msg.Sensor_Inertial_1_Vel_B_x !== undefined) {
      resolved.Sensor_Inertial_1_Vel_B_x = msg.Sensor_Inertial_1_Vel_B_x;
    }
    else {
      resolved.Sensor_Inertial_1_Vel_B_x = 0.0
    }

    if (msg.Sensor_Inertial_1_Vel_B_y !== undefined) {
      resolved.Sensor_Inertial_1_Vel_B_y = msg.Sensor_Inertial_1_Vel_B_y;
    }
    else {
      resolved.Sensor_Inertial_1_Vel_B_y = 0.0
    }

    if (msg.Sensor_Inertial_1_Vel_B_z !== undefined) {
      resolved.Sensor_Inertial_1_Vel_B_z = msg.Sensor_Inertial_1_Vel_B_z;
    }
    else {
      resolved.Sensor_Inertial_1_Vel_B_z = 0.0
    }

    if (msg.Sensor_Inertial_1_Omega_B_x !== undefined) {
      resolved.Sensor_Inertial_1_Omega_B_x = msg.Sensor_Inertial_1_Omega_B_x;
    }
    else {
      resolved.Sensor_Inertial_1_Omega_B_x = 0.0
    }

    if (msg.Sensor_Inertial_1_Omega_B_y !== undefined) {
      resolved.Sensor_Inertial_1_Omega_B_y = msg.Sensor_Inertial_1_Omega_B_y;
    }
    else {
      resolved.Sensor_Inertial_1_Omega_B_y = 0.0
    }

    if (msg.Sensor_Inertial_1_Omega_B_z !== undefined) {
      resolved.Sensor_Inertial_1_Omega_B_z = msg.Sensor_Inertial_1_Omega_B_z;
    }
    else {
      resolved.Sensor_Inertial_1_Omega_B_z = 0.0
    }

    if (msg.Sensor_Inertial_1_Acc_B_x !== undefined) {
      resolved.Sensor_Inertial_1_Acc_B_x = msg.Sensor_Inertial_1_Acc_B_x;
    }
    else {
      resolved.Sensor_Inertial_1_Acc_B_x = 0.0
    }

    if (msg.Sensor_Inertial_1_Acc_B_y !== undefined) {
      resolved.Sensor_Inertial_1_Acc_B_y = msg.Sensor_Inertial_1_Acc_B_y;
    }
    else {
      resolved.Sensor_Inertial_1_Acc_B_y = 0.0
    }

    if (msg.Sensor_Inertial_1_Acc_B_z !== undefined) {
      resolved.Sensor_Inertial_1_Acc_B_z = msg.Sensor_Inertial_1_Acc_B_z;
    }
    else {
      resolved.Sensor_Inertial_1_Acc_B_z = 0.0
    }

    if (msg.Sensor_Inertial_1_Aplha_B_x !== undefined) {
      resolved.Sensor_Inertial_1_Aplha_B_x = msg.Sensor_Inertial_1_Aplha_B_x;
    }
    else {
      resolved.Sensor_Inertial_1_Aplha_B_x = 0.0
    }

    if (msg.Sensor_Inertial_1_Aplha_B_y !== undefined) {
      resolved.Sensor_Inertial_1_Aplha_B_y = msg.Sensor_Inertial_1_Aplha_B_y;
    }
    else {
      resolved.Sensor_Inertial_1_Aplha_B_y = 0.0
    }

    if (msg.Sensor_Inertial_1_Aplha_B_z !== undefined) {
      resolved.Sensor_Inertial_1_Aplha_B_z = msg.Sensor_Inertial_1_Aplha_B_z;
    }
    else {
      resolved.Sensor_Inertial_1_Aplha_B_z = 0.0
    }

    return resolved;
    }
};

module.exports = UAQ_Out;
