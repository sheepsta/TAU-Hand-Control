// Generated by gencpp from file rollout/MoveServosResponse.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_MOVESERVOSRESPONSE_H
#define ROLLOUT_MESSAGE_MOVESERVOSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rollout
{
template <class ContainerAllocator>
struct MoveServosResponse_
{
  typedef MoveServosResponse_<ContainerAllocator> Type;

  MoveServosResponse_()
    : err(0)  {
    }
  MoveServosResponse_(const ContainerAllocator& _alloc)
    : err(0)  {
  (void)_alloc;
    }



   typedef int32_t _err_type;
  _err_type err;





  typedef boost::shared_ptr< ::rollout::MoveServosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::MoveServosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MoveServosResponse_

typedef ::rollout::MoveServosResponse_<std::allocator<void> > MoveServosResponse;

typedef boost::shared_ptr< ::rollout::MoveServosResponse > MoveServosResponsePtr;
typedef boost::shared_ptr< ::rollout::MoveServosResponse const> MoveServosResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::MoveServosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::MoveServosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::MoveServosResponse_<ContainerAllocator1> & lhs, const ::rollout::MoveServosResponse_<ContainerAllocator2> & rhs)
{
  return lhs.err == rhs.err;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::MoveServosResponse_<ContainerAllocator1> & lhs, const ::rollout::MoveServosResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::MoveServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::MoveServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::MoveServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::MoveServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::MoveServosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::MoveServosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::MoveServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6e094011a4dfaee5eddf447220446cf";
  }

  static const char* value(const ::rollout::MoveServosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6e094011a4dfaeeULL;
  static const uint64_t static_value2 = 0x5eddf447220446cfULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::MoveServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/MoveServosResponse";
  }

  static const char* value(const ::rollout::MoveServosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::MoveServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 err\n"
"\n"
;
  }

  static const char* value(const ::rollout::MoveServosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::MoveServosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.err);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveServosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::MoveServosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::MoveServosResponse_<ContainerAllocator>& v)
  {
    s << indent << "err: ";
    Printer<int32_t>::stream(s, indent + "  ", v.err);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_MOVESERVOSRESPONSE_H
