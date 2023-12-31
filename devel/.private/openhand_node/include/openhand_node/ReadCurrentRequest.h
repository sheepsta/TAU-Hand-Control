// Generated by gencpp from file openhand_node/ReadCurrentRequest.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_READCURRENTREQUEST_H
#define OPENHAND_NODE_MESSAGE_READCURRENTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace openhand_node
{
template <class ContainerAllocator>
struct ReadCurrentRequest_
{
  typedef ReadCurrentRequest_<ContainerAllocator> Type;

  ReadCurrentRequest_()
    {
    }
  ReadCurrentRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReadCurrentRequest_

typedef ::openhand_node::ReadCurrentRequest_<std::allocator<void> > ReadCurrentRequest;

typedef boost::shared_ptr< ::openhand_node::ReadCurrentRequest > ReadCurrentRequestPtr;
typedef boost::shared_ptr< ::openhand_node::ReadCurrentRequest const> ReadCurrentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::openhand_node::ReadCurrentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace openhand_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::openhand_node::ReadCurrentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "openhand_node/ReadCurrentRequest";
  }

  static const char* value(const ::openhand_node::ReadCurrentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::openhand_node::ReadCurrentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadCurrentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::openhand_node::ReadCurrentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::openhand_node::ReadCurrentRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_READCURRENTREQUEST_H
