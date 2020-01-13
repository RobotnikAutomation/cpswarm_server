// Generated by gencpp from file cpswarm_msgs/CoverageResult.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_COVERAGERESULT_H
#define CPSWARM_MSGS_MESSAGE_COVERAGERESULT_H


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
struct CoverageResult_
{
  typedef CoverageResult_<ContainerAllocator> Type;

  CoverageResult_()
    : target_id(0)
    , target_pose()  {
    }
  CoverageResult_(const ContainerAllocator& _alloc)
    : target_id(0)
    , target_pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _target_id_type;
  _target_id_type target_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;





  typedef boost::shared_ptr< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> const> ConstPtr;

}; // struct CoverageResult_

typedef ::cpswarm_msgs::CoverageResult_<std::allocator<void> > CoverageResult;

typedef boost::shared_ptr< ::cpswarm_msgs::CoverageResult > CoverageResultPtr;
typedef boost::shared_ptr< ::cpswarm_msgs::CoverageResult const> CoverageResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cpswarm_msgs::CoverageResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcc669309162d4fa6dc359bea359f549";
  }

  static const char* value(const ::cpswarm_msgs::CoverageResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfcc669309162d4faULL;
  static const uint64_t static_value2 = 0x6dc359bea359f549ULL;
};

template<class ContainerAllocator>
struct DataType< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cpswarm_msgs/CoverageResult";
  }

  static const char* value(const ::cpswarm_msgs::CoverageResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
uint32 target_id                      # id of the found target\n\
geometry_msgs/PoseStamped target_pose # position of the found target\n\
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

  static const char* value(const ::cpswarm_msgs::CoverageResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_id);
      stream.next(m.target_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CoverageResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cpswarm_msgs::CoverageResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cpswarm_msgs::CoverageResult_<ContainerAllocator>& v)
  {
    s << indent << "target_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.target_id);
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_COVERAGERESULT_H
