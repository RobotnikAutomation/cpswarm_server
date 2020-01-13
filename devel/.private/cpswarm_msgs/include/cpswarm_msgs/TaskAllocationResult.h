// Generated by gencpp from file cpswarm_msgs/TaskAllocationResult.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_TASKALLOCATIONRESULT_H
#define CPSWARM_MSGS_MESSAGE_TASKALLOCATIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace cpswarm_msgs
{
template <class ContainerAllocator>
struct TaskAllocationResult_
{
  typedef TaskAllocationResult_<ContainerAllocator> Type;

  TaskAllocationResult_()
    : winner()
    , task_id(0)
    , task_pose()  {
    }
  TaskAllocationResult_(const ContainerAllocator& _alloc)
    : winner(_alloc)
    , task_id(0)
    , task_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _winner_type;
  _winner_type winner;

   typedef uint32_t _task_id_type;
  _task_id_type task_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _task_pose_type;
  _task_pose_type task_pose;





  typedef boost::shared_ptr< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> const> ConstPtr;

}; // struct TaskAllocationResult_

typedef ::cpswarm_msgs::TaskAllocationResult_<std::allocator<void> > TaskAllocationResult;

typedef boost::shared_ptr< ::cpswarm_msgs::TaskAllocationResult > TaskAllocationResultPtr;
typedef boost::shared_ptr< ::cpswarm_msgs::TaskAllocationResult const> TaskAllocationResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f60eadc47e6ce28a299309752f58de4b";
  }

  static const char* value(const ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf60eadc47e6ce28aULL;
  static const uint64_t static_value2 = 0x299309752f58de4bULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/TaskAllocationResult";
  }

  static const char* value(const ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the result\n\
string winner                       # UUID of the CPS to which the task is allocated\n\
uint32 task_id                      # ID of the task\n\
geometry_msgs/PoseStamped task_pose # Local position of the task (if assignment failed, use as input)\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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

  static const char* value(const ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.winner);
      stream.next(m.task_id);
      stream.next(m.task_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskAllocationResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cpswarm_msgs::TaskAllocationResult_<ContainerAllocator>& v)
  {
    s << indent << "winner: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.winner);
    s << indent << "task_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "task_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.task_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_TASKALLOCATIONRESULT_H