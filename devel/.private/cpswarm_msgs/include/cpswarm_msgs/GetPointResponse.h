// Generated by gencpp from file cpswarm_msgs/GetPointResponse.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_GETPOINTRESPONSE_H
#define CPSWARM_MSGS_MESSAGE_GETPOINTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace cpswarm_msgs
{
template <class ContainerAllocator>
struct GetPointResponse_
{
  typedef GetPointResponse_<ContainerAllocator> Type;

  GetPointResponse_()
    : point()  {
    }
  GetPointResponse_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPointResponse_

typedef ::cpswarm_msgs::GetPointResponse_<std::allocator<void> > GetPointResponse;

typedef boost::shared_ptr< ::cpswarm_msgs::GetPointResponse > GetPointResponsePtr;
typedef boost::shared_ptr< ::cpswarm_msgs::GetPointResponse const> GetPointResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cpswarm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'swarmros': ['/opt/ros/kinetic/share/swarmros/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cpswarm_msgs': ['/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7c84ff13976aa04656e56e300124444";
  }

  static const char* value(const ::cpswarm_msgs::GetPointResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7c84ff13976aa04ULL;
  static const uint64_t static_value2 = 0x656e56e300124444ULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/GetPointResponse";
  }

  static const char* value(const ::cpswarm_msgs::GetPointResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point point\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::cpswarm_msgs::GetPointResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPointResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::GetPointResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cpswarm_msgs::GetPointResponse_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_GETPOINTRESPONSE_H