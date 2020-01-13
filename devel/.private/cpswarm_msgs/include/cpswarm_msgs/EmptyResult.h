// Generated by gencpp from file cpswarm_msgs/EmptyResult.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_EMPTYRESULT_H
#define CPSWARM_MSGS_MESSAGE_EMPTYRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cpswarm_msgs
{
template <class ContainerAllocator>
struct EmptyResult_
{
  typedef EmptyResult_<ContainerAllocator> Type;

  EmptyResult_()
    {
    }
  EmptyResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> const> ConstPtr;

}; // struct EmptyResult_

typedef ::cpswarm_msgs::EmptyResult_<std::allocator<void> > EmptyResult;

typedef boost::shared_ptr< ::cpswarm_msgs::EmptyResult > EmptyResultPtr;
typedef boost::shared_ptr< ::cpswarm_msgs::EmptyResult const> EmptyResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::EmptyResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cpswarm_msgs::EmptyResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/EmptyResult";
  }

  static const char* value(const ::cpswarm_msgs::EmptyResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
";
  }

  static const char* value(const ::cpswarm_msgs::EmptyResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EmptyResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::EmptyResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cpswarm_msgs::EmptyResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_EMPTYRESULT_H
