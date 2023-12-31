// Generated by gencpp from file openhand_node/OperatingModeResponse.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_OPERATINGMODERESPONSE_H
#define OPENHAND_NODE_MESSAGE_OPERATINGMODERESPONSE_H


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
struct OperatingModeResponse_
{
  typedef OperatingModeResponse_<ContainerAllocator> Type;

  OperatingModeResponse_()
    : err(0)  {
    }
  OperatingModeResponse_(const ContainerAllocator& _alloc)
    : err(0)  {
  (void)_alloc;
    }



   typedef int32_t _err_type;
  _err_type err;





  typedef boost::shared_ptr< ::openhand_node::OperatingModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::openhand_node::OperatingModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct OperatingModeResponse_

typedef ::openhand_node::OperatingModeResponse_<std::allocator<void> > OperatingModeResponse;

typedef boost::shared_ptr< ::openhand_node::OperatingModeResponse > OperatingModeResponsePtr;
typedef boost::shared_ptr< ::openhand_node::OperatingModeResponse const> OperatingModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::openhand_node::OperatingModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::openhand_node::OperatingModeResponse_<ContainerAllocator1> & lhs, const ::openhand_node::OperatingModeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.err == rhs.err;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::openhand_node::OperatingModeResponse_<ContainerAllocator1> & lhs, const ::openhand_node::OperatingModeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace openhand_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::OperatingModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::OperatingModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::OperatingModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6e094011a4dfaee5eddf447220446cf";
  }

  static const char* value(const ::openhand_node::OperatingModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6e094011a4dfaeeULL;
  static const uint64_t static_value2 = 0x5eddf447220446cfULL;
};

template<class ContainerAllocator>
struct DataType< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "openhand_node/OperatingModeResponse";
  }

  static const char* value(const ::openhand_node::OperatingModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 err\n"
"\n"
;
  }

  static const char* value(const ::openhand_node::OperatingModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.err);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OperatingModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::openhand_node::OperatingModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::openhand_node::OperatingModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "err: ";
    Printer<int32_t>::stream(s, indent + "  ", v.err);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_OPERATINGMODERESPONSE_H
