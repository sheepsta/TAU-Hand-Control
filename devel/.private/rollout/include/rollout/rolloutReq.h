// Generated by gencpp from file rollout/rolloutReq.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_ROLLOUTREQ_H
#define ROLLOUT_MESSAGE_ROLLOUTREQ_H

#include <ros/service_traits.h>


#include <rollout/rolloutReqRequest.h>
#include <rollout/rolloutReqResponse.h>


namespace rollout
{

struct rolloutReq
{

typedef rolloutReqRequest Request;
typedef rolloutReqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct rolloutReq
} // namespace rollout


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rollout::rolloutReq > {
  static const char* value()
  {
    return "a45383b0a89115a618aa3e42009d257b";
  }

  static const char* value(const ::rollout::rolloutReq&) { return value(); }
};

template<>
struct DataType< ::rollout::rolloutReq > {
  static const char* value()
  {
    return "rollout/rolloutReq";
  }

  static const char* value(const ::rollout::rolloutReq&) { return value(); }
};


// service_traits::MD5Sum< ::rollout::rolloutReqRequest> should match
// service_traits::MD5Sum< ::rollout::rolloutReq >
template<>
struct MD5Sum< ::rollout::rolloutReqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::rolloutReq >::value();
  }
  static const char* value(const ::rollout::rolloutReqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::rolloutReqRequest> should match
// service_traits::DataType< ::rollout::rolloutReq >
template<>
struct DataType< ::rollout::rolloutReqRequest>
{
  static const char* value()
  {
    return DataType< ::rollout::rolloutReq >::value();
  }
  static const char* value(const ::rollout::rolloutReqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rollout::rolloutReqResponse> should match
// service_traits::MD5Sum< ::rollout::rolloutReq >
template<>
struct MD5Sum< ::rollout::rolloutReqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::rolloutReq >::value();
  }
  static const char* value(const ::rollout::rolloutReqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::rolloutReqResponse> should match
// service_traits::DataType< ::rollout::rolloutReq >
template<>
struct DataType< ::rollout::rolloutReqResponse>
{
  static const char* value()
  {
    return DataType< ::rollout::rolloutReq >::value();
  }
  static const char* value(const ::rollout::rolloutReqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLOUT_MESSAGE_ROLLOUTREQ_H
