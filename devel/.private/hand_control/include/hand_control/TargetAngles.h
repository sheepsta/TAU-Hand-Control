// Generated by gencpp from file hand_control/TargetAngles.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_TARGETANGLES_H
#define HAND_CONTROL_MESSAGE_TARGETANGLES_H

#include <ros/service_traits.h>


#include <hand_control/TargetAnglesRequest.h>
#include <hand_control/TargetAnglesResponse.h>


namespace hand_control
{

struct TargetAngles
{

typedef TargetAnglesRequest Request;
typedef TargetAnglesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TargetAngles
} // namespace hand_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_control::TargetAngles > {
  static const char* value()
  {
    return "370f9a53bb9fc4e03100f718ee81318b";
  }

  static const char* value(const ::hand_control::TargetAngles&) { return value(); }
};

template<>
struct DataType< ::hand_control::TargetAngles > {
  static const char* value()
  {
    return "hand_control/TargetAngles";
  }

  static const char* value(const ::hand_control::TargetAngles&) { return value(); }
};


// service_traits::MD5Sum< ::hand_control::TargetAnglesRequest> should match
// service_traits::MD5Sum< ::hand_control::TargetAngles >
template<>
struct MD5Sum< ::hand_control::TargetAnglesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::TargetAngles >::value();
  }
  static const char* value(const ::hand_control::TargetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::TargetAnglesRequest> should match
// service_traits::DataType< ::hand_control::TargetAngles >
template<>
struct DataType< ::hand_control::TargetAnglesRequest>
{
  static const char* value()
  {
    return DataType< ::hand_control::TargetAngles >::value();
  }
  static const char* value(const ::hand_control::TargetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_control::TargetAnglesResponse> should match
// service_traits::MD5Sum< ::hand_control::TargetAngles >
template<>
struct MD5Sum< ::hand_control::TargetAnglesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::TargetAngles >::value();
  }
  static const char* value(const ::hand_control::TargetAnglesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::TargetAnglesResponse> should match
// service_traits::DataType< ::hand_control::TargetAngles >
template<>
struct DataType< ::hand_control::TargetAnglesResponse>
{
  static const char* value()
  {
    return DataType< ::hand_control::TargetAngles >::value();
  }
  static const char* value(const ::hand_control::TargetAnglesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_TARGETANGLES_H