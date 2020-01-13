// Generated by gencpp from file robotnik_msgs/SetNamedDigitalOutputResponse.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_SETNAMEDDIGITALOUTPUTRESPONSE_H
#define ROBOTNIK_MSGS_MESSAGE_SETNAMEDDIGITALOUTPUTRESPONSE_H


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
struct SetNamedDigitalOutputResponse_
{
  typedef SetNamedDigitalOutputResponse_<ContainerAllocator> Type;

  SetNamedDigitalOutputResponse_()
    : ret(false)
    , msg()  {
    }
  SetNamedDigitalOutputResponse_(const ContainerAllocator& _alloc)
    : ret(false)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ret_type;
  _ret_type ret;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetNamedDigitalOutputResponse_

typedef ::robotnik_msgs::SetNamedDigitalOutputResponse_<std::allocator<void> > SetNamedDigitalOutputResponse;

typedef boost::shared_ptr< ::robotnik_msgs::SetNamedDigitalOutputResponse > SetNamedDigitalOutputResponsePtr;
typedef boost::shared_ptr< ::robotnik_msgs::SetNamedDigitalOutputResponse const> SetNamedDigitalOutputResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65c6e116a9cb9637c42bc276afbf8ed8";
  }

  static const char* value(const ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65c6e116a9cb9637ULL;
  static const uint64_t static_value2 = 0xc42bc276afbf8ed8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/SetNamedDigitalOutputResponse";
  }

  static const char* value(const ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ret\n\
string msg\n\
\n\
";
  }

  static const char* value(const ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetNamedDigitalOutputResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::SetNamedDigitalOutputResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ret);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_SETNAMEDDIGITALOUTPUTRESPONSE_H
