// Generated by gencpp from file hand_control/ObjOrientation.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_OBJORIENTATION_H
#define HAND_CONTROL_MESSAGE_OBJORIENTATION_H

#include <ros/service_traits.h>


#include <hand_control/ObjOrientationRequest.h>
#include <hand_control/ObjOrientationResponse.h>


namespace hand_control
{

struct ObjOrientation
{

typedef ObjOrientationRequest Request;
typedef ObjOrientationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ObjOrientation
} // namespace hand_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_control::ObjOrientation > {
  static const char* value()
  {
    return "8d0c22b39a7964032a79fdf4de10eb10";
  }

  static const char* value(const ::hand_control::ObjOrientation&) { return value(); }
};

template<>
struct DataType< ::hand_control::ObjOrientation > {
  static const char* value()
  {
    return "hand_control/ObjOrientation";
  }

  static const char* value(const ::hand_control::ObjOrientation&) { return value(); }
};


// service_traits::MD5Sum< ::hand_control::ObjOrientationRequest> should match
// service_traits::MD5Sum< ::hand_control::ObjOrientation >
template<>
struct MD5Sum< ::hand_control::ObjOrientationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::ObjOrientation >::value();
  }
  static const char* value(const ::hand_control::ObjOrientationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::ObjOrientationRequest> should match
// service_traits::DataType< ::hand_control::ObjOrientation >
template<>
struct DataType< ::hand_control::ObjOrientationRequest>
{
  static const char* value()
  {
    return DataType< ::hand_control::ObjOrientation >::value();
  }
  static const char* value(const ::hand_control::ObjOrientationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_control::ObjOrientationResponse> should match
// service_traits::MD5Sum< ::hand_control::ObjOrientation >
template<>
struct MD5Sum< ::hand_control::ObjOrientationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::ObjOrientation >::value();
  }
  static const char* value(const ::hand_control::ObjOrientationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::ObjOrientationResponse> should match
// service_traits::DataType< ::hand_control::ObjOrientation >
template<>
struct DataType< ::hand_control::ObjOrientationResponse>
{
  static const char* value()
  {
    return DataType< ::hand_control::ObjOrientation >::value();
  }
  static const char* value(const ::hand_control::ObjOrientationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_OBJORIENTATION_H