// Generated by gencpp from file hand_control/closeRequest.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_CLOSEREQUEST_H
#define HAND_CONTROL_MESSAGE_CLOSEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hand_control
{
template <class ContainerAllocator>
struct closeRequest_
{
  typedef closeRequest_<ContainerAllocator> Type;

  closeRequest_()
    {
    }
  closeRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::hand_control::closeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_control::closeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct closeRequest_

typedef ::hand_control::closeRequest_<std::allocator<void> > closeRequest;

typedef boost::shared_ptr< ::hand_control::closeRequest > closeRequestPtr;
typedef boost::shared_ptr< ::hand_control::closeRequest const> closeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_control::closeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_control::closeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace hand_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::closeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::closeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::closeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::closeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::closeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::closeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_control::closeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::hand_control::closeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_control::closeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_control/closeRequest";
  }

  static const char* value(const ::hand_control::closeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_control::closeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::hand_control::closeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_control::closeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct closeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_control::closeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::hand_control::closeRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_CLOSEREQUEST_H
