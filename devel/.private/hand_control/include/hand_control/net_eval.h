// Generated by gencpp from file hand_control/net_eval.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_NET_EVAL_H
#define HAND_CONTROL_MESSAGE_NET_EVAL_H

#include <ros/service_traits.h>


#include <hand_control/net_evalRequest.h>
#include <hand_control/net_evalResponse.h>


namespace hand_control
{

struct net_eval
{

typedef net_evalRequest Request;
typedef net_evalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct net_eval
} // namespace hand_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hand_control::net_eval > {
  static const char* value()
  {
    return "e3969ebe585f0d178688db6dd33c11d0";
  }

  static const char* value(const ::hand_control::net_eval&) { return value(); }
};

template<>
struct DataType< ::hand_control::net_eval > {
  static const char* value()
  {
    return "hand_control/net_eval";
  }

  static const char* value(const ::hand_control::net_eval&) { return value(); }
};


// service_traits::MD5Sum< ::hand_control::net_evalRequest> should match
// service_traits::MD5Sum< ::hand_control::net_eval >
template<>
struct MD5Sum< ::hand_control::net_evalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::net_eval >::value();
  }
  static const char* value(const ::hand_control::net_evalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::net_evalRequest> should match
// service_traits::DataType< ::hand_control::net_eval >
template<>
struct DataType< ::hand_control::net_evalRequest>
{
  static const char* value()
  {
    return DataType< ::hand_control::net_eval >::value();
  }
  static const char* value(const ::hand_control::net_evalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hand_control::net_evalResponse> should match
// service_traits::MD5Sum< ::hand_control::net_eval >
template<>
struct MD5Sum< ::hand_control::net_evalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hand_control::net_eval >::value();
  }
  static const char* value(const ::hand_control::net_evalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hand_control::net_evalResponse> should match
// service_traits::DataType< ::hand_control::net_eval >
template<>
struct DataType< ::hand_control::net_evalResponse>
{
  static const char* value()
  {
    return DataType< ::hand_control::net_eval >::value();
  }
  static const char* value(const ::hand_control::net_evalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_NET_EVAL_H
