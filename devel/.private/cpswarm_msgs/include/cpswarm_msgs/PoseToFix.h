// Generated by gencpp from file cpswarm_msgs/PoseToFix.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_POSETOFIX_H
#define CPSWARM_MSGS_MESSAGE_POSETOFIX_H

#include <ros/service_traits.h>


#include <cpswarm_msgs/PoseToFixRequest.h>
#include <cpswarm_msgs/PoseToFixResponse.h>


namespace cpswarm_msgs
{

struct PoseToFix
{

typedef PoseToFixRequest Request;
typedef PoseToFixResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PoseToFix
} // namespace cpswarm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cpswarm_msgs::PoseToFix > {
  static const char* value()
  {
    return "1c1928c0c7f60fe5203803617b5c96f0";
  }

  static const char* value(const ::cpswarm_msgs::PoseToFix&) { return value(); }
};

template<>
struct DataType< ::cpswarm_msgs::PoseToFix > {
  static const char* value()
  {
    return "cpswarm_msgs/PoseToFix";
  }

  static const char* value(const ::cpswarm_msgs::PoseToFix&) { return value(); }
};


// service_traits::MD5Sum< ::cpswarm_msgs::PoseToFixRequest> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::PoseToFix > 
template<>
struct MD5Sum< ::cpswarm_msgs::PoseToFixRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::PoseToFix >::value();
  }
  static const char* value(const ::cpswarm_msgs::PoseToFixRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::PoseToFixRequest> should match 
// service_traits::DataType< ::cpswarm_msgs::PoseToFix > 
template<>
struct DataType< ::cpswarm_msgs::PoseToFixRequest>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::PoseToFix >::value();
  }
  static const char* value(const ::cpswarm_msgs::PoseToFixRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cpswarm_msgs::PoseToFixResponse> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::PoseToFix > 
template<>
struct MD5Sum< ::cpswarm_msgs::PoseToFixResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::PoseToFix >::value();
  }
  static const char* value(const ::cpswarm_msgs::PoseToFixResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::PoseToFixResponse> should match 
// service_traits::DataType< ::cpswarm_msgs::PoseToFix > 
template<>
struct DataType< ::cpswarm_msgs::PoseToFixResponse>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::PoseToFix >::value();
  }
  static const char* value(const ::cpswarm_msgs::PoseToFixResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_POSETOFIX_H