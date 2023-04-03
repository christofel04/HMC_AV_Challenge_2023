// Generated by gencpp from file ad_challenge_msgs/UAQ_Out.msg
// DO NOT EDIT!


#ifndef AD_CHALLENGE_MSGS_MESSAGE_UAQ_OUT_H
#define AD_CHALLENGE_MSGS_MESSAGE_UAQ_OUT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ad_challenge_msgs
{
template <class ContainerAllocator>
struct UAQ_Out_
{
  typedef UAQ_Out_<ContainerAllocator> Type;

  UAQ_Out_()
    : header()
    , time()
    , cycleno(0)
    , synthdelay(0.0)
    , Car_Roll(0.0)
    , Car_Pitch(0.0)
    , Car_Yaw(0.0)
    , Car_vx(0.0)
    , Car_vy(0.0)
    , Car_vz(0.0)
    , Car_RollVel(0.0)
    , Car_PitchVel(0.0)
    , Car_YawVel(0.0)
    , Car_ax(0.0)
    , Car_ay(0.0)
    , Car_az(0.0)
    , Car_RollAcc(0.0)
    , Car_PitchAcc(0.0)
    , Car_YawAcc(0.0)
    , Steer_WhlAng(0.0)
    , VC_Gas(0.0)
    , VC_Brake(0.0)
    , VC_SelectorCtrl(0.0)
    , Sensor_Inertial_0_Vel_B_x(0.0)
    , Sensor_Inertial_0_Vel_B_y(0.0)
    , Sensor_Inertial_0_Vel_B_z(0.0)
    , Sensor_Inertial_0_Omega_B_x(0.0)
    , Sensor_Inertial_0_Omega_B_y(0.0)
    , Sensor_Inertial_0_Omega_B_z(0.0)
    , Sensor_Inertial_0_Acc_B_x(0.0)
    , Sensor_Inertial_0_Acc_B_y(0.0)
    , Sensor_Inertial_0_Acc_B_z(0.0)
    , Sensor_Inertial_0_Aplha_B_x(0.0)
    , Sensor_Inertial_0_Aplha_B_y(0.0)
    , Sensor_Inertial_0_Aplha_B_z(0.0)
    , Sensor_Inertial_1_Vel_B_x(0.0)
    , Sensor_Inertial_1_Vel_B_y(0.0)
    , Sensor_Inertial_1_Vel_B_z(0.0)
    , Sensor_Inertial_1_Omega_B_x(0.0)
    , Sensor_Inertial_1_Omega_B_y(0.0)
    , Sensor_Inertial_1_Omega_B_z(0.0)
    , Sensor_Inertial_1_Acc_B_x(0.0)
    , Sensor_Inertial_1_Acc_B_y(0.0)
    , Sensor_Inertial_1_Acc_B_z(0.0)
    , Sensor_Inertial_1_Aplha_B_x(0.0)
    , Sensor_Inertial_1_Aplha_B_y(0.0)
    , Sensor_Inertial_1_Aplha_B_z(0.0)  {
    }
  UAQ_Out_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time()
    , cycleno(0)
    , synthdelay(0.0)
    , Car_Roll(0.0)
    , Car_Pitch(0.0)
    , Car_Yaw(0.0)
    , Car_vx(0.0)
    , Car_vy(0.0)
    , Car_vz(0.0)
    , Car_RollVel(0.0)
    , Car_PitchVel(0.0)
    , Car_YawVel(0.0)
    , Car_ax(0.0)
    , Car_ay(0.0)
    , Car_az(0.0)
    , Car_RollAcc(0.0)
    , Car_PitchAcc(0.0)
    , Car_YawAcc(0.0)
    , Steer_WhlAng(0.0)
    , VC_Gas(0.0)
    , VC_Brake(0.0)
    , VC_SelectorCtrl(0.0)
    , Sensor_Inertial_0_Vel_B_x(0.0)
    , Sensor_Inertial_0_Vel_B_y(0.0)
    , Sensor_Inertial_0_Vel_B_z(0.0)
    , Sensor_Inertial_0_Omega_B_x(0.0)
    , Sensor_Inertial_0_Omega_B_y(0.0)
    , Sensor_Inertial_0_Omega_B_z(0.0)
    , Sensor_Inertial_0_Acc_B_x(0.0)
    , Sensor_Inertial_0_Acc_B_y(0.0)
    , Sensor_Inertial_0_Acc_B_z(0.0)
    , Sensor_Inertial_0_Aplha_B_x(0.0)
    , Sensor_Inertial_0_Aplha_B_y(0.0)
    , Sensor_Inertial_0_Aplha_B_z(0.0)
    , Sensor_Inertial_1_Vel_B_x(0.0)
    , Sensor_Inertial_1_Vel_B_y(0.0)
    , Sensor_Inertial_1_Vel_B_z(0.0)
    , Sensor_Inertial_1_Omega_B_x(0.0)
    , Sensor_Inertial_1_Omega_B_y(0.0)
    , Sensor_Inertial_1_Omega_B_z(0.0)
    , Sensor_Inertial_1_Acc_B_x(0.0)
    , Sensor_Inertial_1_Acc_B_y(0.0)
    , Sensor_Inertial_1_Acc_B_z(0.0)
    , Sensor_Inertial_1_Aplha_B_x(0.0)
    , Sensor_Inertial_1_Aplha_B_y(0.0)
    , Sensor_Inertial_1_Aplha_B_z(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef ros::Time _time_type;
  _time_type time;

   typedef int64_t _cycleno_type;
  _cycleno_type cycleno;

   typedef double _synthdelay_type;
  _synthdelay_type synthdelay;

   typedef double _Car_Roll_type;
  _Car_Roll_type Car_Roll;

   typedef double _Car_Pitch_type;
  _Car_Pitch_type Car_Pitch;

   typedef double _Car_Yaw_type;
  _Car_Yaw_type Car_Yaw;

   typedef double _Car_vx_type;
  _Car_vx_type Car_vx;

   typedef double _Car_vy_type;
  _Car_vy_type Car_vy;

   typedef double _Car_vz_type;
  _Car_vz_type Car_vz;

   typedef double _Car_RollVel_type;
  _Car_RollVel_type Car_RollVel;

   typedef double _Car_PitchVel_type;
  _Car_PitchVel_type Car_PitchVel;

   typedef double _Car_YawVel_type;
  _Car_YawVel_type Car_YawVel;

   typedef double _Car_ax_type;
  _Car_ax_type Car_ax;

   typedef double _Car_ay_type;
  _Car_ay_type Car_ay;

   typedef double _Car_az_type;
  _Car_az_type Car_az;

   typedef double _Car_RollAcc_type;
  _Car_RollAcc_type Car_RollAcc;

   typedef double _Car_PitchAcc_type;
  _Car_PitchAcc_type Car_PitchAcc;

   typedef double _Car_YawAcc_type;
  _Car_YawAcc_type Car_YawAcc;

   typedef double _Steer_WhlAng_type;
  _Steer_WhlAng_type Steer_WhlAng;

   typedef double _VC_Gas_type;
  _VC_Gas_type VC_Gas;

   typedef double _VC_Brake_type;
  _VC_Brake_type VC_Brake;

   typedef double _VC_SelectorCtrl_type;
  _VC_SelectorCtrl_type VC_SelectorCtrl;

   typedef double _Sensor_Inertial_0_Vel_B_x_type;
  _Sensor_Inertial_0_Vel_B_x_type Sensor_Inertial_0_Vel_B_x;

   typedef double _Sensor_Inertial_0_Vel_B_y_type;
  _Sensor_Inertial_0_Vel_B_y_type Sensor_Inertial_0_Vel_B_y;

   typedef double _Sensor_Inertial_0_Vel_B_z_type;
  _Sensor_Inertial_0_Vel_B_z_type Sensor_Inertial_0_Vel_B_z;

   typedef double _Sensor_Inertial_0_Omega_B_x_type;
  _Sensor_Inertial_0_Omega_B_x_type Sensor_Inertial_0_Omega_B_x;

   typedef double _Sensor_Inertial_0_Omega_B_y_type;
  _Sensor_Inertial_0_Omega_B_y_type Sensor_Inertial_0_Omega_B_y;

   typedef double _Sensor_Inertial_0_Omega_B_z_type;
  _Sensor_Inertial_0_Omega_B_z_type Sensor_Inertial_0_Omega_B_z;

   typedef double _Sensor_Inertial_0_Acc_B_x_type;
  _Sensor_Inertial_0_Acc_B_x_type Sensor_Inertial_0_Acc_B_x;

   typedef double _Sensor_Inertial_0_Acc_B_y_type;
  _Sensor_Inertial_0_Acc_B_y_type Sensor_Inertial_0_Acc_B_y;

   typedef double _Sensor_Inertial_0_Acc_B_z_type;
  _Sensor_Inertial_0_Acc_B_z_type Sensor_Inertial_0_Acc_B_z;

   typedef double _Sensor_Inertial_0_Aplha_B_x_type;
  _Sensor_Inertial_0_Aplha_B_x_type Sensor_Inertial_0_Aplha_B_x;

   typedef double _Sensor_Inertial_0_Aplha_B_y_type;
  _Sensor_Inertial_0_Aplha_B_y_type Sensor_Inertial_0_Aplha_B_y;

   typedef double _Sensor_Inertial_0_Aplha_B_z_type;
  _Sensor_Inertial_0_Aplha_B_z_type Sensor_Inertial_0_Aplha_B_z;

   typedef double _Sensor_Inertial_1_Vel_B_x_type;
  _Sensor_Inertial_1_Vel_B_x_type Sensor_Inertial_1_Vel_B_x;

   typedef double _Sensor_Inertial_1_Vel_B_y_type;
  _Sensor_Inertial_1_Vel_B_y_type Sensor_Inertial_1_Vel_B_y;

   typedef double _Sensor_Inertial_1_Vel_B_z_type;
  _Sensor_Inertial_1_Vel_B_z_type Sensor_Inertial_1_Vel_B_z;

   typedef double _Sensor_Inertial_1_Omega_B_x_type;
  _Sensor_Inertial_1_Omega_B_x_type Sensor_Inertial_1_Omega_B_x;

   typedef double _Sensor_Inertial_1_Omega_B_y_type;
  _Sensor_Inertial_1_Omega_B_y_type Sensor_Inertial_1_Omega_B_y;

   typedef double _Sensor_Inertial_1_Omega_B_z_type;
  _Sensor_Inertial_1_Omega_B_z_type Sensor_Inertial_1_Omega_B_z;

   typedef double _Sensor_Inertial_1_Acc_B_x_type;
  _Sensor_Inertial_1_Acc_B_x_type Sensor_Inertial_1_Acc_B_x;

   typedef double _Sensor_Inertial_1_Acc_B_y_type;
  _Sensor_Inertial_1_Acc_B_y_type Sensor_Inertial_1_Acc_B_y;

   typedef double _Sensor_Inertial_1_Acc_B_z_type;
  _Sensor_Inertial_1_Acc_B_z_type Sensor_Inertial_1_Acc_B_z;

   typedef double _Sensor_Inertial_1_Aplha_B_x_type;
  _Sensor_Inertial_1_Aplha_B_x_type Sensor_Inertial_1_Aplha_B_x;

   typedef double _Sensor_Inertial_1_Aplha_B_y_type;
  _Sensor_Inertial_1_Aplha_B_y_type Sensor_Inertial_1_Aplha_B_y;

   typedef double _Sensor_Inertial_1_Aplha_B_z_type;
  _Sensor_Inertial_1_Aplha_B_z_type Sensor_Inertial_1_Aplha_B_z;





  typedef boost::shared_ptr< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> const> ConstPtr;

}; // struct UAQ_Out_

typedef ::ad_challenge_msgs::UAQ_Out_<std::allocator<void> > UAQ_Out;

typedef boost::shared_ptr< ::ad_challenge_msgs::UAQ_Out > UAQ_OutPtr;
typedef boost::shared_ptr< ::ad_challenge_msgs::UAQ_Out const> UAQ_OutConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time == rhs.time &&
    lhs.cycleno == rhs.cycleno &&
    lhs.synthdelay == rhs.synthdelay &&
    lhs.Car_Roll == rhs.Car_Roll &&
    lhs.Car_Pitch == rhs.Car_Pitch &&
    lhs.Car_Yaw == rhs.Car_Yaw &&
    lhs.Car_vx == rhs.Car_vx &&
    lhs.Car_vy == rhs.Car_vy &&
    lhs.Car_vz == rhs.Car_vz &&
    lhs.Car_RollVel == rhs.Car_RollVel &&
    lhs.Car_PitchVel == rhs.Car_PitchVel &&
    lhs.Car_YawVel == rhs.Car_YawVel &&
    lhs.Car_ax == rhs.Car_ax &&
    lhs.Car_ay == rhs.Car_ay &&
    lhs.Car_az == rhs.Car_az &&
    lhs.Car_RollAcc == rhs.Car_RollAcc &&
    lhs.Car_PitchAcc == rhs.Car_PitchAcc &&
    lhs.Car_YawAcc == rhs.Car_YawAcc &&
    lhs.Steer_WhlAng == rhs.Steer_WhlAng &&
    lhs.VC_Gas == rhs.VC_Gas &&
    lhs.VC_Brake == rhs.VC_Brake &&
    lhs.VC_SelectorCtrl == rhs.VC_SelectorCtrl &&
    lhs.Sensor_Inertial_0_Vel_B_x == rhs.Sensor_Inertial_0_Vel_B_x &&
    lhs.Sensor_Inertial_0_Vel_B_y == rhs.Sensor_Inertial_0_Vel_B_y &&
    lhs.Sensor_Inertial_0_Vel_B_z == rhs.Sensor_Inertial_0_Vel_B_z &&
    lhs.Sensor_Inertial_0_Omega_B_x == rhs.Sensor_Inertial_0_Omega_B_x &&
    lhs.Sensor_Inertial_0_Omega_B_y == rhs.Sensor_Inertial_0_Omega_B_y &&
    lhs.Sensor_Inertial_0_Omega_B_z == rhs.Sensor_Inertial_0_Omega_B_z &&
    lhs.Sensor_Inertial_0_Acc_B_x == rhs.Sensor_Inertial_0_Acc_B_x &&
    lhs.Sensor_Inertial_0_Acc_B_y == rhs.Sensor_Inertial_0_Acc_B_y &&
    lhs.Sensor_Inertial_0_Acc_B_z == rhs.Sensor_Inertial_0_Acc_B_z &&
    lhs.Sensor_Inertial_0_Aplha_B_x == rhs.Sensor_Inertial_0_Aplha_B_x &&
    lhs.Sensor_Inertial_0_Aplha_B_y == rhs.Sensor_Inertial_0_Aplha_B_y &&
    lhs.Sensor_Inertial_0_Aplha_B_z == rhs.Sensor_Inertial_0_Aplha_B_z &&
    lhs.Sensor_Inertial_1_Vel_B_x == rhs.Sensor_Inertial_1_Vel_B_x &&
    lhs.Sensor_Inertial_1_Vel_B_y == rhs.Sensor_Inertial_1_Vel_B_y &&
    lhs.Sensor_Inertial_1_Vel_B_z == rhs.Sensor_Inertial_1_Vel_B_z &&
    lhs.Sensor_Inertial_1_Omega_B_x == rhs.Sensor_Inertial_1_Omega_B_x &&
    lhs.Sensor_Inertial_1_Omega_B_y == rhs.Sensor_Inertial_1_Omega_B_y &&
    lhs.Sensor_Inertial_1_Omega_B_z == rhs.Sensor_Inertial_1_Omega_B_z &&
    lhs.Sensor_Inertial_1_Acc_B_x == rhs.Sensor_Inertial_1_Acc_B_x &&
    lhs.Sensor_Inertial_1_Acc_B_y == rhs.Sensor_Inertial_1_Acc_B_y &&
    lhs.Sensor_Inertial_1_Acc_B_z == rhs.Sensor_Inertial_1_Acc_B_z &&
    lhs.Sensor_Inertial_1_Aplha_B_x == rhs.Sensor_Inertial_1_Aplha_B_x &&
    lhs.Sensor_Inertial_1_Aplha_B_y == rhs.Sensor_Inertial_1_Aplha_B_y &&
    lhs.Sensor_Inertial_1_Aplha_B_z == rhs.Sensor_Inertial_1_Aplha_B_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ad_challenge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
{
  static const char* value()
  {
    return "10e861f2efe1d78792349327441cc038";
  }

  static const char* value(const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x10e861f2efe1d787ULL;
  static const uint64_t static_value2 = 0x92349327441cc038ULL;
};

template<class ContainerAllocator>
struct DataType< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ad_challenge_msgs/UAQ_Out";
  }

  static const char* value(const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Message from CarMaker ROS Node to external ROS Node\n"
"#\n"
"\n"
"# General\n"
"Header  header                                 # General ROS Header (optional)\n"
"time    time                                   # ROS time when message was sent (optional)\n"
"int64   cycleno                                # Cycle number since simulation start (optional)\n"
"float64 synthdelay                             # Synthetic delay to check synchronization (optional)\n"
"\n"
"float64 Car_Roll\n"
"float64 Car_Pitch\n"
"float64 Car_Yaw\n"
"float64 Car_vx\n"
"float64 Car_vy\n"
"float64 Car_vz\n"
"float64 Car_RollVel\n"
"float64 Car_PitchVel\n"
"float64 Car_YawVel\n"
"float64 Car_ax\n"
"float64 Car_ay\n"
"float64 Car_az\n"
"float64 Car_RollAcc\n"
"float64 Car_PitchAcc\n"
"float64 Car_YawAcc\n"
"float64 Steer_WhlAng\n"
"float64 VC_Gas\n"
"float64 VC_Brake\n"
"float64 VC_SelectorCtrl\n"
"float64 Sensor_Inertial_0_Vel_B_x\n"
"float64 Sensor_Inertial_0_Vel_B_y\n"
"float64 Sensor_Inertial_0_Vel_B_z\n"
"float64 Sensor_Inertial_0_Omega_B_x\n"
"float64 Sensor_Inertial_0_Omega_B_y\n"
"float64 Sensor_Inertial_0_Omega_B_z\n"
"float64 Sensor_Inertial_0_Acc_B_x\n"
"float64 Sensor_Inertial_0_Acc_B_y\n"
"float64 Sensor_Inertial_0_Acc_B_z\n"
"float64 Sensor_Inertial_0_Aplha_B_x\n"
"float64 Sensor_Inertial_0_Aplha_B_y\n"
"float64 Sensor_Inertial_0_Aplha_B_z\n"
"float64 Sensor_Inertial_1_Vel_B_x\n"
"float64 Sensor_Inertial_1_Vel_B_y\n"
"float64 Sensor_Inertial_1_Vel_B_z\n"
"float64 Sensor_Inertial_1_Omega_B_x\n"
"float64 Sensor_Inertial_1_Omega_B_y\n"
"float64 Sensor_Inertial_1_Omega_B_z\n"
"float64 Sensor_Inertial_1_Acc_B_x\n"
"float64 Sensor_Inertial_1_Acc_B_y\n"
"float64 Sensor_Inertial_1_Acc_B_z\n"
"float64 Sensor_Inertial_1_Aplha_B_x\n"
"float64 Sensor_Inertial_1_Aplha_B_y\n"
"float64 Sensor_Inertial_1_Aplha_B_z\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time);
      stream.next(m.cycleno);
      stream.next(m.synthdelay);
      stream.next(m.Car_Roll);
      stream.next(m.Car_Pitch);
      stream.next(m.Car_Yaw);
      stream.next(m.Car_vx);
      stream.next(m.Car_vy);
      stream.next(m.Car_vz);
      stream.next(m.Car_RollVel);
      stream.next(m.Car_PitchVel);
      stream.next(m.Car_YawVel);
      stream.next(m.Car_ax);
      stream.next(m.Car_ay);
      stream.next(m.Car_az);
      stream.next(m.Car_RollAcc);
      stream.next(m.Car_PitchAcc);
      stream.next(m.Car_YawAcc);
      stream.next(m.Steer_WhlAng);
      stream.next(m.VC_Gas);
      stream.next(m.VC_Brake);
      stream.next(m.VC_SelectorCtrl);
      stream.next(m.Sensor_Inertial_0_Vel_B_x);
      stream.next(m.Sensor_Inertial_0_Vel_B_y);
      stream.next(m.Sensor_Inertial_0_Vel_B_z);
      stream.next(m.Sensor_Inertial_0_Omega_B_x);
      stream.next(m.Sensor_Inertial_0_Omega_B_y);
      stream.next(m.Sensor_Inertial_0_Omega_B_z);
      stream.next(m.Sensor_Inertial_0_Acc_B_x);
      stream.next(m.Sensor_Inertial_0_Acc_B_y);
      stream.next(m.Sensor_Inertial_0_Acc_B_z);
      stream.next(m.Sensor_Inertial_0_Aplha_B_x);
      stream.next(m.Sensor_Inertial_0_Aplha_B_y);
      stream.next(m.Sensor_Inertial_0_Aplha_B_z);
      stream.next(m.Sensor_Inertial_1_Vel_B_x);
      stream.next(m.Sensor_Inertial_1_Vel_B_y);
      stream.next(m.Sensor_Inertial_1_Vel_B_z);
      stream.next(m.Sensor_Inertial_1_Omega_B_x);
      stream.next(m.Sensor_Inertial_1_Omega_B_y);
      stream.next(m.Sensor_Inertial_1_Omega_B_z);
      stream.next(m.Sensor_Inertial_1_Acc_B_x);
      stream.next(m.Sensor_Inertial_1_Acc_B_y);
      stream.next(m.Sensor_Inertial_1_Acc_B_z);
      stream.next(m.Sensor_Inertial_1_Aplha_B_x);
      stream.next(m.Sensor_Inertial_1_Aplha_B_y);
      stream.next(m.Sensor_Inertial_1_Aplha_B_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UAQ_Out_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ad_challenge_msgs::UAQ_Out_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time);
    s << indent << "cycleno: ";
    Printer<int64_t>::stream(s, indent + "  ", v.cycleno);
    s << indent << "synthdelay: ";
    Printer<double>::stream(s, indent + "  ", v.synthdelay);
    s << indent << "Car_Roll: ";
    Printer<double>::stream(s, indent + "  ", v.Car_Roll);
    s << indent << "Car_Pitch: ";
    Printer<double>::stream(s, indent + "  ", v.Car_Pitch);
    s << indent << "Car_Yaw: ";
    Printer<double>::stream(s, indent + "  ", v.Car_Yaw);
    s << indent << "Car_vx: ";
    Printer<double>::stream(s, indent + "  ", v.Car_vx);
    s << indent << "Car_vy: ";
    Printer<double>::stream(s, indent + "  ", v.Car_vy);
    s << indent << "Car_vz: ";
    Printer<double>::stream(s, indent + "  ", v.Car_vz);
    s << indent << "Car_RollVel: ";
    Printer<double>::stream(s, indent + "  ", v.Car_RollVel);
    s << indent << "Car_PitchVel: ";
    Printer<double>::stream(s, indent + "  ", v.Car_PitchVel);
    s << indent << "Car_YawVel: ";
    Printer<double>::stream(s, indent + "  ", v.Car_YawVel);
    s << indent << "Car_ax: ";
    Printer<double>::stream(s, indent + "  ", v.Car_ax);
    s << indent << "Car_ay: ";
    Printer<double>::stream(s, indent + "  ", v.Car_ay);
    s << indent << "Car_az: ";
    Printer<double>::stream(s, indent + "  ", v.Car_az);
    s << indent << "Car_RollAcc: ";
    Printer<double>::stream(s, indent + "  ", v.Car_RollAcc);
    s << indent << "Car_PitchAcc: ";
    Printer<double>::stream(s, indent + "  ", v.Car_PitchAcc);
    s << indent << "Car_YawAcc: ";
    Printer<double>::stream(s, indent + "  ", v.Car_YawAcc);
    s << indent << "Steer_WhlAng: ";
    Printer<double>::stream(s, indent + "  ", v.Steer_WhlAng);
    s << indent << "VC_Gas: ";
    Printer<double>::stream(s, indent + "  ", v.VC_Gas);
    s << indent << "VC_Brake: ";
    Printer<double>::stream(s, indent + "  ", v.VC_Brake);
    s << indent << "VC_SelectorCtrl: ";
    Printer<double>::stream(s, indent + "  ", v.VC_SelectorCtrl);
    s << indent << "Sensor_Inertial_0_Vel_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Vel_B_x);
    s << indent << "Sensor_Inertial_0_Vel_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Vel_B_y);
    s << indent << "Sensor_Inertial_0_Vel_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Vel_B_z);
    s << indent << "Sensor_Inertial_0_Omega_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Omega_B_x);
    s << indent << "Sensor_Inertial_0_Omega_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Omega_B_y);
    s << indent << "Sensor_Inertial_0_Omega_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Omega_B_z);
    s << indent << "Sensor_Inertial_0_Acc_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Acc_B_x);
    s << indent << "Sensor_Inertial_0_Acc_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Acc_B_y);
    s << indent << "Sensor_Inertial_0_Acc_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Acc_B_z);
    s << indent << "Sensor_Inertial_0_Aplha_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Aplha_B_x);
    s << indent << "Sensor_Inertial_0_Aplha_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Aplha_B_y);
    s << indent << "Sensor_Inertial_0_Aplha_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_0_Aplha_B_z);
    s << indent << "Sensor_Inertial_1_Vel_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Vel_B_x);
    s << indent << "Sensor_Inertial_1_Vel_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Vel_B_y);
    s << indent << "Sensor_Inertial_1_Vel_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Vel_B_z);
    s << indent << "Sensor_Inertial_1_Omega_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Omega_B_x);
    s << indent << "Sensor_Inertial_1_Omega_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Omega_B_y);
    s << indent << "Sensor_Inertial_1_Omega_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Omega_B_z);
    s << indent << "Sensor_Inertial_1_Acc_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Acc_B_x);
    s << indent << "Sensor_Inertial_1_Acc_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Acc_B_y);
    s << indent << "Sensor_Inertial_1_Acc_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Acc_B_z);
    s << indent << "Sensor_Inertial_1_Aplha_B_x: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Aplha_B_x);
    s << indent << "Sensor_Inertial_1_Aplha_B_y: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Aplha_B_y);
    s << indent << "Sensor_Inertial_1_Aplha_B_z: ";
    Printer<double>::stream(s, indent + "  ", v.Sensor_Inertial_1_Aplha_B_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AD_CHALLENGE_MSGS_MESSAGE_UAQ_OUT_H
