// Generated by gencpp from file rollout/IsDropped.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_ISDROPPED_H
#define ROLLOUT_MESSAGE_ISDROPPED_H

#include <ros/service_traits.h>


#include <rollout/IsDroppedRequest.h>
#include <rollout/IsDroppedResponse.h>


namespace rollout
{

struct IsDropped
{

typedef IsDroppedRequest Request;
typedef IsDroppedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IsDropped
} // namespace rollout


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rollout::IsDropped > {
  static const char* value()
  {
    return "89b1ea20d43c8bbdf4c72f92a40ab2ad";
  }

  static const char* value(const ::rollout::IsDropped&) { return value(); }
};

template<>
struct DataType< ::rollout::IsDropped > {
  static const char* value()
  {
    return "rollout/IsDropped";
  }

  static const char* value(const ::rollout::IsDropped&) { return value(); }
};


// service_traits::MD5Sum< ::rollout::IsDroppedRequest> should match
// service_traits::MD5Sum< ::rollout::IsDropped >
template<>
struct MD5Sum< ::rollout::IsDroppedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::IsDropped >::value();
  }
  static const char* value(const ::rollout::IsDroppedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::IsDroppedRequest> should match
// service_traits::DataType< ::rollout::IsDropped >
template<>
struct DataType< ::rollout::IsDroppedRequest>
{
  static const char* value()
  {
    return DataType< ::rollout::IsDropped >::value();
  }
  static const char* value(const ::rollout::IsDroppedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rollout::IsDroppedResponse> should match
// service_traits::MD5Sum< ::rollout::IsDropped >
template<>
struct MD5Sum< ::rollout::IsDroppedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::IsDropped >::value();
  }
  static const char* value(const ::rollout::IsDroppedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::IsDroppedResponse> should match
// service_traits::DataType< ::rollout::IsDropped >
template<>
struct DataType< ::rollout::IsDroppedResponse>
{
  static const char* value()
  {
    return DataType< ::rollout::IsDropped >::value();
  }
  static const char* value(const ::rollout::IsDroppedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLOUT_MESSAGE_ISDROPPED_H