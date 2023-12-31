// Generated by gencpp from file hand_control/observation.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_OBSERVATION_H
#define HAND_CONTROL_MESSAGE_OBSERVATION_H

#include <ros/service_traits.h>


#include <hand_control/observationRequest.h>
#include <hand_control/observationResponse.h>


namespace hand_control
{

struct observation
{

typedef observationRequest Request;
typedef observationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct observation
} // namespace hand_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_control::observation > {
  static const char* value()
  {
    return "3faa55f8813856aab6c4371b84f9b124";
  }

  static const char* value(const ::hand_control::observation&) { return value(); }
};

template<>
struct DataType< ::hand_control::observation > {
  static const char* value()
  {
    return "hand_control/observation";
  }

  static const char* value(const ::hand_control::observation&) { return value(); }
};


// service_traits::MD5Sum< ::hand_control::observationRequest> should match
// service_traits::MD5Sum< ::hand_control::observation >
template<>
struct MD5Sum< ::hand_control::observationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::observation >::value();
  }
  static const char* value(const ::hand_control::observationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::observationRequest> should match
// service_traits::DataType< ::hand_control::observation >
template<>
struct DataType< ::hand_control::observationRequest>
{
  static const char* value()
  {
    return DataType< ::hand_control::observation >::value();
  }
  static const char* value(const ::hand_control::observationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_control::observationResponse> should match
// service_traits::MD5Sum< ::hand_control::observation >
template<>
struct MD5Sum< ::hand_control::observationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::observation >::value();
  }
  static const char* value(const ::hand_control::observationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::observationResponse> should match
// service_traits::DataType< ::hand_control::observation >
template<>
struct DataType< ::hand_control::observationResponse>
{
  static const char* value()
  {
    return DataType< ::hand_control::observation >::value();
  }
  static const char* value(const ::hand_control::observationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_OBSERVATION_H
