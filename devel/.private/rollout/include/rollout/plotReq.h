// Generated by gencpp from file rollout/plotReq.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_PLOTREQ_H
#define ROLLOUT_MESSAGE_PLOTREQ_H

#include <ros/service_traits.h>


#include <rollout/plotReqRequest.h>
#include <rollout/plotReqResponse.h>


namespace rollout
{

struct plotReq
{

typedef plotReqRequest Request;
typedef plotReqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct plotReq
} // namespace rollout


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rollout::plotReq > {
  static const char* value()
  {
    return "1148cadfcfa6d659984233cc92414368";
  }

  static const char* value(const ::rollout::plotReq&) { return value(); }
};

template<>
struct DataType< ::rollout::plotReq > {
  static const char* value()
  {
    return "rollout/plotReq";
  }

  static const char* value(const ::rollout::plotReq&) { return value(); }
};


// service_traits::MD5Sum< ::rollout::plotReqRequest> should match
// service_traits::MD5Sum< ::rollout::plotReq >
template<>
struct MD5Sum< ::rollout::plotReqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::plotReq >::value();
  }
  static const char* value(const ::rollout::plotReqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::plotReqRequest> should match
// service_traits::DataType< ::rollout::plotReq >
template<>
struct DataType< ::rollout::plotReqRequest>
{
  static const char* value()
  {
    return DataType< ::rollout::plotReq >::value();
  }
  static const char* value(const ::rollout::plotReqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rollout::plotReqResponse> should match
// service_traits::MD5Sum< ::rollout::plotReq >
template<>
struct MD5Sum< ::rollout::plotReqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rollout::plotReq >::value();
  }
  static const char* value(const ::rollout::plotReqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rollout::plotReqResponse> should match
// service_traits::DataType< ::rollout::plotReq >
template<>
struct DataType< ::rollout::plotReqResponse>
{
  static const char* value()
  {
    return DataType< ::rollout::plotReq >::value();
  }
  static const char* value(const ::rollout::plotReqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLOUT_MESSAGE_PLOTREQ_H
