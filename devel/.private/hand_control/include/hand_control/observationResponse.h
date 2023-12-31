// Generated by gencpp from file hand_control/observationResponse.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_OBSERVATIONRESPONSE_H
#define HAND_CONTROL_MESSAGE_OBSERVATIONRESPONSE_H


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
struct observationResponse_
{
  typedef observationResponse_<ContainerAllocator> Type;

  observationResponse_()
    : state()  {
    }
  observationResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::hand_control::observationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_control::observationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct observationResponse_

typedef ::hand_control::observationResponse_<std::allocator<void> > observationResponse;

typedef boost::shared_ptr< ::hand_control::observationResponse > observationResponsePtr;
typedef boost::shared_ptr< ::hand_control::observationResponse const> observationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_control::observationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_control::observationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hand_control::observationResponse_<ContainerAllocator1> & lhs, const ::hand_control::observationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hand_control::observationResponse_<ContainerAllocator1> & lhs, const ::hand_control::observationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hand_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::observationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::observationResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::observationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::observationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::observationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::observationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_control::observationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3faa55f8813856aab6c4371b84f9b124";
  }

  static const char* value(const ::hand_control::observationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3faa55f8813856aaULL;
  static const uint64_t static_value2 = 0xb6c4371b84f9b124ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_control::observationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_control/observationResponse";
  }

  static const char* value(const ::hand_control::observationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_control::observationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] state\n"
;
  }

  static const char* value(const ::hand_control::observationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_control::observationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct observationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_control::observationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_control::observationResponse_<ContainerAllocator>& v)
  {
    s << indent << "state[]" << std::endl;
    for (size_t i = 0; i < v.state.size(); ++i)
    {
      s << indent << "  state[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.state[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_OBSERVATIONRESPONSE_H
