// Generated by gencpp from file cpswarm_msgs/ArrayOfStates.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_ARRAYOFSTATES_H
#define CPSWARM_MSGS_MESSAGE_ARRAYOFSTATES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cpswarm_msgs/StateEvent.h>

namespace cpswarm_msgs
{
template <class ContainerAllocator>
struct ArrayOfStates_
{
  typedef ArrayOfStates_<ContainerAllocator> Type;

  ArrayOfStates_()
    : states()  {
    }
  ArrayOfStates_(const ContainerAllocator& _alloc)
    : states(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::cpswarm_msgs::StateEvent_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cpswarm_msgs::StateEvent_<ContainerAllocator> >::other >  _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> const> ConstPtr;

}; // struct ArrayOfStates_

typedef ::cpswarm_msgs::ArrayOfStates_<std::allocator<void> > ArrayOfStates;

typedef boost::shared_ptr< ::cpswarm_msgs::ArrayOfStates > ArrayOfStatesPtr;
typedef boost::shared_ptr< ::cpswarm_msgs::ArrayOfStates const> ArrayOfStatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cpswarm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'swarmros': ['/opt/ros/kinetic/share/swarmros/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cpswarm_msgs': ['/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/src/cpswarm_msgs/msg', '/home/miguel/ws/cpswarm_server/devel/.private/cpswarm_msgs/share/cpswarm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f75e4178e3e7edf854c68e5181aa9c80";
  }

  static const char* value(const ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf75e4178e3e7edf8ULL;
  static const uint64_t static_value2 = 0x54c68e5181aa9c80ULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/ArrayOfStates";
  }

  static const char* value(const ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/StateEvent[] states # Array of state events\n\
\n\
================================================================================\n\
MSG: cpswarm_msgs/StateEvent\n\
std_msgs/Header header       # ros header\n\
swarmros/EventHeader swarmio # cpswarm swarmio swarmros header\n\
string state                 # state of the cps\n\
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
";
  }

  static const char* value(const ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArrayOfStates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cpswarm_msgs::ArrayOfStates_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cpswarm_msgs::StateEvent_<ContainerAllocator> >::stream(s, indent + "    ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_ARRAYOFSTATES_H
