// Generated by gencpp from file openhand_node/HoldServos.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_HOLDSERVOS_H
#define OPENHAND_NODE_MESSAGE_HOLDSERVOS_H

#include <ros/service_traits.h>


#include <openhand_node/HoldServosRequest.h>
#include <openhand_node/HoldServosResponse.h>


namespace openhand_node
{

struct HoldServos
{

typedef HoldServosRequest Request;
typedef HoldServosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct HoldServos
} // namespace openhand_node


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::openhand_node::HoldServos > {
  static const char* value()
  {
    return "9012ec588f6488638f420162efc2fcb2";
  }

  static const char* value(const ::openhand_node::HoldServos&) { return value(); }
};

template<>
struct DataType< ::openhand_node::HoldServos > {
  static const char* value()
  {
    return "openhand_node/HoldServos";
  }

  static const char* value(const ::openhand_node::HoldServos&) { return value(); }
};


// service_traits::MD5Sum< ::openhand_node::HoldServosRequest> should match
// service_traits::MD5Sum< ::openhand_node::HoldServos >
template<>
struct MD5Sum< ::openhand_node::HoldServosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::openhand_node::HoldServos >::value();
  }
  static const char* value(const ::openhand_node::HoldServosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::openhand_node::HoldServosRequest> should match
// service_traits::DataType< ::openhand_node::HoldServos >
template<>
struct DataType< ::openhand_node::HoldServosRequest>
{
  static const char* value()
  {
    return DataType< ::openhand_node::HoldServos >::value();
  }
  static const char* value(const ::openhand_node::HoldServosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::openhand_node::HoldServosResponse> should match
// service_traits::MD5Sum< ::openhand_node::HoldServos >
template<>
struct MD5Sum< ::openhand_node::HoldServosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::openhand_node::HoldServos >::value();
  }
  static const char* value(const ::openhand_node::HoldServosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::openhand_node::HoldServosResponse> should match
// service_traits::DataType< ::openhand_node::HoldServos >
template<>
struct DataType< ::openhand_node::HoldServosResponse>
{
  static const char* value()
  {
    return DataType< ::openhand_node::HoldServos >::value();
  }
  static const char* value(const ::openhand_node::HoldServosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_HOLDSERVOS_H