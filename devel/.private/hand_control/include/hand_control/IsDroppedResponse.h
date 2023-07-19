// Generated by gencpp from file hand_control/IsDroppedResponse.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_ISDROPPEDRESPONSE_H
#define HAND_CONTROL_MESSAGE_ISDROPPEDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hand_control
{
template <class ContainerAllocator>
struct IsDroppedResponse_
{
  typedef IsDroppedResponse_<ContainerAllocator> Type;

  IsDroppedResponse_()
    : dropped(false)  {
    }
  IsDroppedResponse_(const ContainerAllocator& _alloc)
    : dropped(false)  {
  (void)_alloc;
    }



   typedef uint8_t _dropped_type;
  _dropped_type dropped;





  typedef boost::shared_ptr< ::hand_control::IsDroppedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_control::IsDroppedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IsDroppedResponse_

typedef ::hand_control::IsDroppedResponse_<std::allocator<void> > IsDroppedResponse;

typedef boost::shared_ptr< ::hand_control::IsDroppedResponse > IsDroppedResponsePtr;
typedef boost::shared_ptr< ::hand_control::IsDroppedResponse const> IsDroppedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_control::IsDroppedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_control::IsDroppedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hand_control::IsDroppedResponse_<ContainerAllocator1> & lhs, const ::hand_control::IsDroppedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.dropped == rhs.dropped;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hand_control::IsDroppedResponse_<ContainerAllocator1> & lhs, const ::hand_control::IsDroppedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hand_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::IsDroppedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::IsDroppedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::IsDroppedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89b1ea20d43c8bbdf4c72f92a40ab2ad";
  }

  static const char* value(const ::hand_control::IsDroppedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89b1ea20d43c8bbdULL;
  static const uint64_t static_value2 = 0xf4c72f92a40ab2adULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_control/IsDroppedResponse";
  }

  static const char* value(const ::hand_control::IsDroppedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool dropped\n"
;
  }

  static const char* value(const ::hand_control::IsDroppedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dropped);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IsDroppedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_control::IsDroppedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_control::IsDroppedResponse_<ContainerAllocator>& v)
  {
    s << indent << "dropped: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dropped);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_ISDROPPEDRESPONSE_H