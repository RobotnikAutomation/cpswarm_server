// Generated by gencpp from file cvm_msgs/BoundingBoxes.msg
// DO NOT EDIT!


#ifndef CVM_MSGS_MESSAGE_BOUNDINGBOXES_H
#define CVM_MSGS_MESSAGE_BOUNDINGBOXES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <cvm_msgs/BoundingBox.h>

namespace cvm_msgs
{
template <class ContainerAllocator>
struct BoundingBoxes_
{
  typedef BoundingBoxes_<ContainerAllocator> Type;

  BoundingBoxes_()
    : header()
    , boundingBoxes()  {
    }
  BoundingBoxes_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , boundingBoxes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::cvm_msgs::BoundingBox_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cvm_msgs::BoundingBox_<ContainerAllocator> >::other >  _boundingBoxes_type;
  _boundingBoxes_type boundingBoxes;





  typedef boost::shared_ptr< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBoxes_

typedef ::cvm_msgs::BoundingBoxes_<std::allocator<void> > BoundingBoxes;

typedef boost::shared_ptr< ::cvm_msgs::BoundingBoxes > BoundingBoxesPtr;
typedef boost::shared_ptr< ::cvm_msgs::BoundingBoxes const> BoundingBoxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cvm_msgs::BoundingBoxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cvm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'cvm_msgs': ['/home/miguel/ws/cpswarm_server/src/cvm_msgs/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'stereo_msgs': ['/opt/ros/kinetic/share/stereo_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "df7c8971a0328dc0867e90b22d93ed86";
  }

  static const char* value(const ::cvm_msgs::BoundingBoxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdf7c8971a0328dc0ULL;
  static const uint64_t static_value2 = 0x867e90b22d93ed86ULL;
};

template<class ContainerAllocator>
struct DataType< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cvm_msgs/BoundingBoxes";
  }

  static const char* value(const ::cvm_msgs::BoundingBoxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
BoundingBox[] boundingBoxes   # An array of bounding boxes\n\
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
MSG: cvm_msgs/BoundingBox\n\
Header header\n\
uint32 xmin   # X coordinate of the upper left corner, where bounding box of an object starts\n\
uint32 ymin   # Y coordinate of the upper left corner, where bounding box of an object starts\n\
uint32 xmax   # X coordinate of the bottom right corner, where bounding box of an object ends\n\
uint32 ymax   # Y coordinate of the bottom right corner, where bounding box of an object ends\n\
string Class  # Class name of an object\n\
float32 probability # Probability that the object belongs to the class\n\
geometry_msgs/PointStamped position # Position of the object\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::cvm_msgs::BoundingBoxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.boundingBoxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBoxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cvm_msgs::BoundingBoxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cvm_msgs::BoundingBoxes_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "boundingBoxes[]" << std::endl;
    for (size_t i = 0; i < v.boundingBoxes.size(); ++i)
    {
      s << indent << "  boundingBoxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cvm_msgs::BoundingBox_<ContainerAllocator> >::stream(s, indent + "    ", v.boundingBoxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CVM_MSGS_MESSAGE_BOUNDINGBOXES_H