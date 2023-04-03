// Generated by gencpp from file ad_challenge_msgs/TrafficSign.msg
// DO NOT EDIT!


#ifndef AD_CHALLENGE_MSGS_MESSAGE_TRAFFICSIGN_H
#define AD_CHALLENGE_MSGS_MESSAGE_TRAFFICSIGN_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ad_challenge_msgs
{
template <class ContainerAllocator>
struct TrafficSign_
{
  typedef TrafficSign_<ContainerAllocator> Type;

  TrafficSign_()
    : id(0)
    , position()
    , vector()  {
      position.assign(0.0);

      vector.assign(0.0);
  }
  TrafficSign_(const ContainerAllocator& _alloc)
    : id(0)
    , position()
    , vector()  {
  (void)_alloc;
      position.assign(0.0);

      vector.assign(0.0);
  }



   typedef int64_t _id_type;
  _id_type id;

   typedef boost::array<float, 3>  _position_type;
  _position_type position;

   typedef boost::array<float, 3>  _vector_type;
  _vector_type vector;





  typedef boost::shared_ptr< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> const> ConstPtr;

}; // struct TrafficSign_

typedef ::ad_challenge_msgs::TrafficSign_<std::allocator<void> > TrafficSign;

typedef boost::shared_ptr< ::ad_challenge_msgs::TrafficSign > TrafficSignPtr;
typedef boost::shared_ptr< ::ad_challenge_msgs::TrafficSign const> TrafficSignConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.position == rhs.position &&
    lhs.vector == rhs.vector;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator1> & lhs, const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ad_challenge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "462ab2ebdb1559910fd7323dabc3004e";
  }

  static const char* value(const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x462ab2ebdb155991ULL;
  static const uint64_t static_value2 = 0x0fd7323dabc3004eULL;
};

template<class ContainerAllocator>
struct DataType< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ad_challenge_msgs/TrafficSign";
  }

  static const char* value(const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 id\n"
"float32[3] position\n"
"float32[3] vector\n"
;
  }

  static const char* value(const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
      stream.next(m.vector);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrafficSign_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ad_challenge_msgs::TrafficSign_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ad_challenge_msgs::TrafficSign_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.id);
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "vector[]" << std::endl;
    for (size_t i = 0; i < v.vector.size(); ++i)
    {
      s << indent << "  vector[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.vector[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AD_CHALLENGE_MSGS_MESSAGE_TRAFFICSIGN_H
