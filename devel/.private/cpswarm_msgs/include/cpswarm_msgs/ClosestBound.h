// Generated by gencpp from file cpswarm_msgs/ClosestBound.msg
// DO NOT EDIT!


#ifndef CPSWARM_MSGS_MESSAGE_CLOSESTBOUND_H
#define CPSWARM_MSGS_MESSAGE_CLOSESTBOUND_H

#include <ros/service_traits.h>


#include <cpswarm_msgs/ClosestBoundRequest.h>
#include <cpswarm_msgs/ClosestBoundResponse.h>


namespace cpswarm_msgs
{

struct ClosestBound
{

typedef ClosestBoundRequest Request;
typedef ClosestBoundResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ClosestBound
} // namespace cpswarm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cpswarm_msgs::ClosestBound > {
  static const char* value()
  {
    return "8837846bed2f577b9e2edeeefebc2265";
  }

  static const char* value(const ::cpswarm_msgs::ClosestBound&) { return value(); }
};

template<>
struct DataType< ::cpswarm_msgs::ClosestBound > {
  static const char* value()
  {
    return "cpswarm_msgs/ClosestBound";
  }

  static const char* value(const ::cpswarm_msgs::ClosestBound&) { return value(); }
};


// service_traits::MD5Sum< ::cpswarm_msgs::ClosestBoundRequest> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::ClosestBound > 
template<>
struct MD5Sum< ::cpswarm_msgs::ClosestBoundRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::ClosestBound >::value();
  }
  static const char* value(const ::cpswarm_msgs::ClosestBoundRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::ClosestBoundRequest> should match 
// service_traits::DataType< ::cpswarm_msgs::ClosestBound > 
template<>
struct DataType< ::cpswarm_msgs::ClosestBoundRequest>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::ClosestBound >::value();
  }
  static const char* value(const ::cpswarm_msgs::ClosestBoundRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cpswarm_msgs::ClosestBoundResponse> should match 
// service_traits::MD5Sum< ::cpswarm_msgs::ClosestBound > 
template<>
struct MD5Sum< ::cpswarm_msgs::ClosestBoundResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cpswarm_msgs::ClosestBound >::value();
  }
  static const char* value(const ::cpswarm_msgs::ClosestBoundResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cpswarm_msgs::ClosestBoundResponse> should match 
// service_traits::DataType< ::cpswarm_msgs::ClosestBound > 
template<>
struct DataType< ::cpswarm_msgs::ClosestBoundResponse>
{
  static const char* value()
  {
    return DataType< ::cpswarm_msgs::ClosestBound >::value();
  }
  static const char* value(const ::cpswarm_msgs::ClosestBoundResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CPSWARM_MSGS_MESSAGE_CLOSESTBOUND_H