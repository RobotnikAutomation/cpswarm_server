// Generated by gencpp from file cpswarm_msgs/GetVector.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_GETVECTOR_H
#define CPSWARM_MSGS_MESSAGE_GETVECTOR_H

#include <ros/service_traits.h>


#include <cpswarm_msgs/GetVectorRequest.h>
#include <cpswarm_msgs/GetVectorResponse.h>


namespace cpswarm_msgs
{

struct GetVector
{

typedef GetVectorRequest Request;
typedef GetVectorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetVector
} // namespace cpswarm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cpswarm_msgs::GetVector > {
  static const char* value()
  {
    return "b3a9e4daa2a94d943fe4e153df5ee05c";
  }

  static const char* value(const ::cpswarm_msgs::GetVector&) { return value(); }
};

template<>
struct DataType< ::cpswarm_msgs::GetVector > {
  static const char* value()
  {
    return "cpswarm_msgs/GetVector";
  }

  static const char* value(const ::cpswarm_msgs::GetVector&) { return value(); }
};


// service_traits::MD5Sum< ::cpswarm_msgs::GetVectorRequest> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::GetVector > 
template<>
struct MD5Sum< ::cpswarm_msgs::GetVectorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::GetVector >::value();
  }
  static const char* value(const ::cpswarm_msgs::GetVectorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::GetVectorRequest> should match 
// service_traits::DataType< ::cpswarm_msgs::GetVector > 
template<>
struct DataType< ::cpswarm_msgs::GetVectorRequest>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::GetVector >::value();
  }
  static const char* value(const ::cpswarm_msgs::GetVectorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cpswarm_msgs::GetVectorResponse> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::GetVector > 
template<>
struct MD5Sum< ::cpswarm_msgs::GetVectorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::GetVector >::value();
  }
  static const char* value(const ::cpswarm_msgs::GetVectorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::GetVectorResponse> should match 
// service_traits::DataType< ::cpswarm_msgs::GetVector > 
template<>
struct DataType< ::cpswarm_msgs::GetVectorResponse>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::GetVector >::value();
  }
  static const char* value(const ::cpswarm_msgs::GetVectorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_GETVECTOR_H
