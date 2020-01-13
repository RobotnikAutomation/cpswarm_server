// Generated by gencpp from file robotnik_msgs/get_alarmsResponse.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_GET_ALARMSRESPONSE_H
#define ROBOTNIK_MSGS_MESSAGE_GET_ALARMSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_msgs/alarmsmonitor.h>

namespace robotnik_msgs
{
template <class ContainerAllocator>
struct get_alarmsResponse_
{
  typedef get_alarmsResponse_<ContainerAllocator> Type;

  get_alarmsResponse_()
    : alarms()  {
    }
  get_alarmsResponse_(const ContainerAllocator& _alloc)
    : alarms(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robotnik_msgs::alarmsmonitor_<ContainerAllocator>  _alarms_type;
  _alarms_type alarms;





  typedef boost::shared_ptr< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_alarmsResponse_

typedef ::robotnik_msgs::get_alarmsResponse_<std::allocator<void> > get_alarmsResponse;

typedef boost::shared_ptr< ::robotnik_msgs::get_alarmsResponse > get_alarmsResponsePtr;
typedef boost::shared_ptr< ::robotnik_msgs::get_alarmsResponse const> get_alarmsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'robotnik_msgs': ['/home/miguel/ws/cpswarm_server/src/robotnik_msgs-master/msg', '/home/miguel/ws/cpswarm_server/devel/.private/robotnik_msgs/share/robotnik_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4550354b6bec7529a93833858063eaed";
  }

  static const char* value(const ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4550354b6bec7529ULL;
  static const uint64_t static_value2 = 0xa93833858063eaedULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/get_alarmsResponse";
  }

  static const char* value(const ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "alarmsmonitor alarms\n\
\n\
\n\
================================================================================\n\
MSG: robotnik_msgs/alarmsmonitor\n\
alarmmonitor[] alarms\n\
\n\
================================================================================\n\
MSG: robotnik_msgs/alarmmonitor\n\
# type: error, warning, event\n\
string type\n\
# displaing number for monitoring\n\
int32 display\n\
# component\n\
string component\n\
# To be shown in HMI\n\
bool hmi\n\
# group: alarm group all alarms of same group will be reset at same time\n\
string group\n\
# text: more explained information about alarm, should include group, time, conditions, etc\n\
string text\n\
# seconds active\n\
uint64 seconds_active\n\
";
  }

  static const char* value(const ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.alarms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_alarmsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::get_alarmsResponse_<ContainerAllocator>& v)
  {
    s << indent << "alarms: ";
    s << std::endl;
    Printer< ::robotnik_msgs::alarmsmonitor_<ContainerAllocator> >::stream(s, indent + "  ", v.alarms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_GET_ALARMSRESPONSE_H
