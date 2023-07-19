// Generated by gencpp from file rollout/observationRequest.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_OBSERVATIONREQUEST_H
#define ROLLOUT_MESSAGE_OBSERVATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rollout
{
template <class ContainerAllocator>
struct observationRequest_
{
  typedef observationRequest_<ContainerAllocator> Type;

  observationRequest_()
    {
    }
  observationRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::rollout::observationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::observationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct observationRequest_

typedef ::rollout::observationRequest_<std::allocator<void> > observationRequest;

typedef boost::shared_ptr< ::rollout::observationRequest > observationRequestPtr;
typedef boost::shared_ptr< ::rollout::observationRequest const> observationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::observationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::observationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::observationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::observationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::observationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::observationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::observationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::observationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::observationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::rollout::observationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::observationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/observationRequest";
  }

  static const char* value(const ::rollout::observationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::observationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::rollout::observationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::observationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct observationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::observationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::rollout::observationRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_OBSERVATIONREQUEST_H