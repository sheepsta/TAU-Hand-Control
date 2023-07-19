// Generated by gencpp from file openhand_node/OperatingMode.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_OPERATINGMODE_H
#define OPENHAND_NODE_MESSAGE_OPERATINGMODE_H

#include <ros/service_traits.h>


#include <openhand_node/OperatingModeRequest.h>
#include <openhand_node/OperatingModeResponse.h>


namespace openhand_node
{

struct OperatingMode
{

typedef OperatingModeRequest Request;
typedef OperatingModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OperatingMode
} // namespace openhand_node


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::openhand_node::OperatingMode > {
  static const char* value()
  {
    return "de2e40c8f82c8a51269f155066572b24";
  }

  static const char* value(const ::openhand_node::OperatingMode&) { return value(); }
};

template<>
struct DataType< ::openhand_node::OperatingMode > {
  static const char* value()
  {
    return "openhand_node/OperatingMode";
  }

  static const char* value(const ::openhand_node::OperatingMode&) { return value(); }
};


// service_traits::MD5Sum< ::openhand_node::OperatingModeRequest> should match
// service_traits::MD5Sum< ::openhand_node::OperatingMode >
template<>
struct MD5Sum< ::openhand_node::OperatingModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::openhand_node::OperatingMode >::value();
  }
  static const char* value(const ::openhand_node::OperatingModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::openhand_node::OperatingModeRequest> should match
// service_traits::DataType< ::openhand_node::OperatingMode >
template<>
struct DataType< ::openhand_node::OperatingModeRequest>
{
  static const char* value()
  {
    return DataType< ::openhand_node::OperatingMode >::value();
  }
  static const char* value(const ::openhand_node::OperatingModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::openhand_node::OperatingModeResponse> should match
// service_traits::MD5Sum< ::openhand_node::OperatingMode >
template<>
struct MD5Sum< ::openhand_node::OperatingModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::openhand_node::OperatingMode >::value();
  }
  static const char* value(const ::openhand_node::OperatingModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::openhand_node::OperatingModeResponse> should match
// service_traits::DataType< ::openhand_node::OperatingMode >
template<>
struct DataType< ::openhand_node::OperatingModeResponse>
{
  static const char* value()
  {
    return DataType< ::openhand_node::OperatingMode >::value();
  }
  static const char* value(const ::openhand_node::OperatingModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_OPERATINGMODE_H