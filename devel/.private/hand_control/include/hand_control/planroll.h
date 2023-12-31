// Generated by gencpp from file hand_control/planroll.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_PLANROLL_H
#define HAND_CONTROL_MESSAGE_PLANROLL_H

#include <ros/service_traits.h>


#include <hand_control/planrollRequest.h>
#include <hand_control/planrollResponse.h>


namespace hand_control
{

struct planroll
{

typedef planrollRequest Request;
typedef planrollResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct planroll
} // namespace hand_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_control::planroll > {
  static const char* value()
  {
    return "dd0ec4b436084a05fc1f687964d711d5";
  }

  static const char* value(const ::hand_control::planroll&) { return value(); }
};

template<>
struct DataType< ::hand_control::planroll > {
  static const char* value()
  {
    return "hand_control/planroll";
  }

  static const char* value(const ::hand_control::planroll&) { return value(); }
};


// service_traits::MD5Sum< ::hand_control::planrollRequest> should match
// service_traits::MD5Sum< ::hand_control::planroll >
template<>
struct MD5Sum< ::hand_control::planrollRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::planroll >::value();
  }
  static const char* value(const ::hand_control::planrollRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::planrollRequest> should match
// service_traits::DataType< ::hand_control::planroll >
template<>
struct DataType< ::hand_control::planrollRequest>
{
  static const char* value()
  {
    return DataType< ::hand_control::planroll >::value();
  }
  static const char* value(const ::hand_control::planrollRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_control::planrollResponse> should match
// service_traits::MD5Sum< ::hand_control::planroll >
template<>
struct MD5Sum< ::hand_control::planrollResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::planroll >::value();
  }
  static const char* value(const ::hand_control::planrollResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::planrollResponse> should match
// service_traits::DataType< ::hand_control::planroll >
template<>
struct DataType< ::hand_control::planrollResponse>
{
  static const char* value()
  {
    return DataType< ::hand_control::planroll >::value();
  }
  static const char* value(const ::hand_control::planrollResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_PLANROLL_H
