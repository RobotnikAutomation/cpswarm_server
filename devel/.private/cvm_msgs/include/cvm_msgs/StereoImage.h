// Generated by gencpp from file cvm_msgs/StereoImage.msg
// DO NOT EDIT!


#ifndef CVM_MSGS_MESSAGE_STEREOIMAGE_H
#define CVM_MSGS_MESSAGE_STEREOIMAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>
#include <stereo_msgs/DisparityImage.h>

namespace cvm_msgs
{
template <class ContainerAllocator>
struct StereoImage_
{
  typedef StereoImage_<ContainerAllocator> Type;

  StereoImage_()
    : header()
    , leftImage()
    , disparityImage()  {
    }
  StereoImage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , leftImage(_alloc)
    , disparityImage(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _leftImage_type;
  _leftImage_type leftImage;

   typedef  ::stereo_msgs::DisparityImage_<ContainerAllocator>  _disparityImage_type;
  _disparityImage_type disparityImage;





  typedef boost::shared_ptr< ::cvm_msgs::StereoImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cvm_msgs::StereoImage_<ContainerAllocator> const> ConstPtr;

}; // struct StereoImage_

typedef ::cvm_msgs::StereoImage_<std::allocator<void> > StereoImage;

typedef boost::shared_ptr< ::cvm_msgs::StereoImage > StereoImagePtr;
typedef boost::shared_ptr< ::cvm_msgs::StereoImage const> StereoImageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cvm_msgs::StereoImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cvm_msgs::StereoImage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cvm_msgs::StereoImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cvm_msgs::StereoImage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cvm_msgs::StereoImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cvm_msgs::StereoImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cvm_msgs::StereoImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cvm_msgs::StereoImage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cvm_msgs::StereoImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5f1c29e66000c37c7aac14102a4beda";
  }

  static const char* value(const ::cvm_msgs::StereoImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5f1c29e66000c37ULL;
  static const uint64_t static_value2 = 0xc7aac14102a4bedaULL;
};

template<class ContainerAllocator>
struct DataType< ::cvm_msgs::StereoImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cvm_msgs/StereoImage";
  }

  static const char* value(const ::cvm_msgs::StereoImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cvm_msgs::StereoImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
sensor_msgs/Image leftImage                # Left rectified image\n\
stereo_msgs/DisparityImage disparityImage  # Disparity image estimated with respect to the left rectified image\n\
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
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of camera\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: stereo_msgs/DisparityImage\n\
# Separate header for compatibility with current TimeSynchronizer.\n\
# Likely to be removed in a later release, use image.header instead.\n\
Header header\n\
\n\
# Floating point disparity image. The disparities are pre-adjusted for any\n\
# x-offset between the principal points of the two cameras (in the case\n\
# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)\n\
sensor_msgs/Image image\n\
\n\
# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.\n\
float32 f # Focal length, pixels\n\
float32 T # Baseline, world units\n\
\n\
# Subwindow of (potentially) valid disparity values.\n\
sensor_msgs/RegionOfInterest valid_window\n\
\n\
# The range of disparities searched.\n\
# In the disparity image, any disparity less than min_disparity is invalid.\n\
# The disparity search range defines the horopter, or 3D volume that the\n\
# stereo algorithm can \"see\". Points with Z outside of:\n\
#     Z_min = fT / max_disparity\n\
#     Z_max = fT / min_disparity\n\
# could not be found.\n\
float32 min_disparity\n\
float32 max_disparity\n\
\n\
# Smallest allowed disparity increment. The smallest achievable depth range\n\
# resolution is delta_Z = (Z^2/fT)*delta_d.\n\
float32 delta_d\n\
\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
";
  }

  static const char* value(const ::cvm_msgs::StereoImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cvm_msgs::StereoImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.leftImage);
      stream.next(m.disparityImage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StereoImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cvm_msgs::StereoImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cvm_msgs::StereoImage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "leftImage: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.leftImage);
    s << indent << "disparityImage: ";
    s << std::endl;
    Printer< ::stereo_msgs::DisparityImage_<ContainerAllocator> >::stream(s, indent + "  ", v.disparityImage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CVM_MSGS_MESSAGE_STEREOIMAGE_H