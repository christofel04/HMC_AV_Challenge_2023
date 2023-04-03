// Generated by gencpp from file ad_challenge_msgs/FullStateBBox3D.msg
// DO NOT EDIT!


#ifndef AD_CHALLENGE_MSGS_MESSAGE_FULLSTATEBBOX3D_H
#define AD_CHALLENGE_MSGS_MESSAGE_FULLSTATEBBOX3D_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <vision_msgs/BoundingBox3D.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Accel.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace ad_challenge_msgs
{
template <class ContainerAllocator>
struct FullStateBBox3D_
{
  typedef FullStateBBox3D_<ContainerAllocator> Type;

  FullStateBBox3D_()
    : id(0)
    , box()
    , velocity()
    , acceleration()
    , size_dot()
    , size_ddot()  {
    }
  FullStateBBox3D_(const ContainerAllocator& _alloc)
    : id(0)
    , box(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)
    , size_dot(_alloc)
    , size_ddot(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _id_type;
  _id_type id;

   typedef  ::vision_msgs::BoundingBox3D_<ContainerAllocator>  _box_type;
  _box_type box;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Accel_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _size_dot_type;
  _size_dot_type size_dot;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _size_ddot_type;
  _size_ddot_type size_ddot;





  typedef boost::shared_ptr< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> const> ConstPtr;

}; // struct FullStateBBox3D_

typedef ::ad_challenge_msgs::FullStateBBox3D_<std::allocator<void> > FullStateBBox3D;

typedef boost::shared_ptr< ::ad_challenge_msgs::FullStateBBox3D > FullStateBBox3DPtr;
typedef boost::shared_ptr< ::ad_challenge_msgs::FullStateBBox3D const> FullStateBBox3DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.box == rhs.box &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration &&
    lhs.size_dot == rhs.size_dot &&
    lhs.size_ddot == rhs.size_ddot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ad_challenge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9c7d008a4a47a5d05b55140b7b32d93";
  }

  static const char* value(const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9c7d008a4a47a5dULL;
  static const uint64_t static_value2 = 0x05b55140b7b32d93ULL;
};

template<class ContainerAllocator>
struct DataType< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ad_challenge_msgs/FullStateBBox3D";
  }

  static const char* value(const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 id\n"
"vision_msgs/BoundingBox3D box\n"
"\n"
"## velocity and acceleration for bounding-box location\n"
"geometry_msgs/Twist velocity\n"
"geometry_msgs/Accel acceleration\n"
"\n"
"## velocity and acceleration for bounding-box size\n"
"geometry_msgs/Vector3 size_dot\n"
"geometry_msgs/Vector3 size_ddot\n"
"================================================================================\n"
"MSG: vision_msgs/BoundingBox3D\n"
"# A 3D bounding box that can be positioned and rotated about its center (6 DOF)\n"
"# Dimensions of this box are in meters, and as such, it may be migrated to\n"
"#   another package, such as geometry_msgs, in the future.\n"
"\n"
"# The 3D position and orientation of the bounding box center\n"
"geometry_msgs/Pose center\n"
"\n"
"# The size of the bounding box, in meters, surrounding the object's center\n"
"#   pose.\n"
"geometry_msgs/Vector3 size\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.box);
      stream.next(m.velocity);
      stream.next(m.acceleration);
      stream.next(m.size_dot);
      stream.next(m.size_ddot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FullStateBBox3D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ad_challenge_msgs::FullStateBBox3D_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.id);
    s << indent << "box: ";
    s << std::endl;
    Printer< ::vision_msgs::BoundingBox3D_<ContainerAllocator> >::stream(s, indent + "  ", v.box);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Accel_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
    s << indent << "size_dot: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.size_dot);
    s << indent << "size_ddot: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.size_ddot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AD_CHALLENGE_MSGS_MESSAGE_FULLSTATEBBOX3D_H
