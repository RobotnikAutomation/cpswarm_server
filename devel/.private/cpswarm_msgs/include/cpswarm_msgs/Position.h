// Generated by gencpp from file cpswarm_msgs/Position.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_POSITION_H
#define CPSWARM_MSGS_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <swarmros/EventHeader.h>
#include <geometry_msgs/Pose.h>

namespace cpswarm_msgs
{
template <class ContainerAllocator>
struct Position_
{
  typedef Position_<ContainerAllocator> Type;

  Position_()
    : header()
    , swarmio()
    , pose()  {
    }
  Position_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , swarmio(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::swarmros::EventHeader_<ContainerAllocator>  _swarmio_type;
  _swarmio_type swarmio;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::cpswarm_msgs::Position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::Position_<ContainerAllocator> const> ConstPtr;

}; // struct Position_

typedef ::cpswarm_msgs::Position_<std::allocator<void> > Position;

typedef boost::shared_ptr< ::cpswarm_msgs::Position > PositionPtr;
typedef boost::shared_ptr< ::cpswarm_msgs::Position const> PositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::Position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::Position_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cpswarm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'swarmros': ['/opt/ros/kinetic/share/swarmros/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cpswarm_msgs': ['/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::Position_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::Position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::Position_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a041bfbb95aa185025b98677edd3bed";
  }

  static const char* value(const ::cpswarm_msgs::Position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a041bfbb95aa185ULL;
  static const uint64_t static_value2 = 0x025b98677edd3bedULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/Position";
  }

  static const char* value(const ::cpswarm_msgs::Position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header       # ros header\n\
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header\n\
geometry_msgs/Pose pose      # cps position in local coordinates\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: swarmros/EventHeader\n\
string name # Name of the event\n\
string node # UUID of the source or target node\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::cpswarm_msgs::Position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::Position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.swarmio);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::Position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cpswarm_msgs::Position_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "swarmio: ";
    s << std::endl;
    Printer< ::swarmros::EventHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.swarmio);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_POSITION_H
