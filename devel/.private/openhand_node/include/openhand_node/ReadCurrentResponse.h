// Generated by gencpp from file openhand_node/ReadCurrentResponse.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_READCURRENTRESPONSE_H
#define OPENHAND_NODE_MESSAGE_READCURRENTRESPONSE_H


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
struct ReadCurrentResponse_
{
  typedef ReadCurrentResponse_<ContainerAllocator> Type;

  ReadCurrentResponse_()
    : curr()  {
    }
  ReadCurrentResponse_(const ContainerAllocator& _alloc)
    : curr(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _curr_type;
  _curr_type curr;





  typedef boost::shared_ptr< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReadCurrentResponse_

typedef ::openhand_node::ReadCurrentResponse_<std::allocator<void> > ReadCurrentResponse;

typedef boost::shared_ptr< ::openhand_node::ReadCurrentResponse > ReadCurrentResponsePtr;
typedef boost::shared_ptr< ::openhand_node::ReadCurrentResponse const> ReadCurrentResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::openhand_node::ReadCurrentResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::openhand_node::ReadCurrentResponse_<ContainerAllocator1> & lhs, const ::openhand_node::ReadCurrentResponse_<ContainerAllocator2> & rhs)
{
  return lhs.curr == rhs.curr;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::openhand_node::ReadCurrentResponse_<ContainerAllocator1> & lhs, const ::openhand_node::ReadCurrentResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace openhand_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "640c8d4d28b8ccb823cd749d0957df5a";
  }

  static const char* value(const ::openhand_node::ReadCurrentResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x640c8d4d28b8ccb8ULL;
  static const uint64_t static_value2 = 0x23cd749d0957df5aULL;
};

template<class ContainerAllocator>
struct DataType< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "openhand_node/ReadCurrentResponse";
  }

  static const char* value(const ::openhand_node::ReadCurrentResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] curr\n"
"\n"
;
  }

  static const char* value(const ::openhand_node::ReadCurrentResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.curr);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadCurrentResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::openhand_node::ReadCurrentResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::openhand_node::ReadCurrentResponse_<ContainerAllocator>& v)
  {
    s << indent << "curr[]" << std::endl;
    for (size_t i = 0; i < v.curr.size(); ++i)
    {
      s << indent << "  curr[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.curr[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_READCURRENTRESPONSE_H
