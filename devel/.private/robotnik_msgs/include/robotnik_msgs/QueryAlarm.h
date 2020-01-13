// Generated by gencpp from file robotnik_msgs/QueryAlarm.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_QUERYALARM_H
#define ROBOTNIK_MSGS_MESSAGE_QUERYALARM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_msgs
{
template <class ContainerAllocator>
struct QueryAlarm_
{
  typedef QueryAlarm_<ContainerAllocator> Type;

  QueryAlarm_()
    : alm_id(0)
    , alm_component()
    , alm_type()
    , alm_group()
    , alm_description()
    , alm_start_time()
    , alm_end_time()  {
    }
  QueryAlarm_(const ContainerAllocator& _alloc)
    : alm_id(0)
    , alm_component(_alloc)
    , alm_type(_alloc)
    , alm_group(_alloc)
    , alm_description(_alloc)
    , alm_start_time(_alloc)
    , alm_end_time(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _alm_id_type;
  _alm_id_type alm_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_component_type;
  _alm_component_type alm_component;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_type_type;
  _alm_type_type alm_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_group_type;
  _alm_group_type alm_group;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_description_type;
  _alm_description_type alm_description;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_start_time_type;
  _alm_start_time_type alm_start_time;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alm_end_time_type;
  _alm_end_time_type alm_end_time;





  typedef boost::shared_ptr< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> const> ConstPtr;

}; // struct QueryAlarm_

typedef ::robotnik_msgs::QueryAlarm_<std::allocator<void> > QueryAlarm;

typedef boost::shared_ptr< ::robotnik_msgs::QueryAlarm > QueryAlarmPtr;
typedef boost::shared_ptr< ::robotnik_msgs::QueryAlarm const> QueryAlarmConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::QueryAlarm_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3c7e9979cb91a050b98067ffb98adff";
  }

  static const char* value(const ::robotnik_msgs::QueryAlarm_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3c7e9979cb91a05ULL;
  static const uint64_t static_value2 = 0x0b98067ffb98adffULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/QueryAlarm";
  }

  static const char* value(const ::robotnik_msgs::QueryAlarm_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 alm_id\n\
string alm_component\n\
string alm_type\n\
string alm_group\n\
string alm_description\n\
string alm_start_time\n\
string alm_end_time\n\
";
  }

  static const char* value(const ::robotnik_msgs::QueryAlarm_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.alm_id);
      stream.next(m.alm_component);
      stream.next(m.alm_type);
      stream.next(m.alm_group);
      stream.next(m.alm_description);
      stream.next(m.alm_start_time);
      stream.next(m.alm_end_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryAlarm_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::QueryAlarm_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::QueryAlarm_<ContainerAllocator>& v)
  {
    s << indent << "alm_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.alm_id);
    s << indent << "alm_component: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_component);
    s << indent << "alm_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_type);
    s << indent << "alm_group: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_group);
    s << indent << "alm_description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_description);
    s << indent << "alm_start_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_start_time);
    s << indent << "alm_end_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alm_end_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_QUERYALARM_H
