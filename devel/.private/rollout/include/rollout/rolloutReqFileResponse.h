// Generated by gencpp from file rollout/rolloutReqFileResponse.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_ROLLOUTREQFILERESPONSE_H
#define ROLLOUT_MESSAGE_ROLLOUTREQFILERESPONSE_H


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
struct rolloutReqFileResponse_
{
  typedef rolloutReqFileResponse_<ContainerAllocator> Type;

  rolloutReqFileResponse_()
    : states()
    , success(false)  {
    }
  rolloutReqFileResponse_(const ContainerAllocator& _alloc)
    : states(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _states_type;
  _states_type states;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::rollout::rolloutReqFileResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::rolloutReqFileResponse_<ContainerAllocator> const> ConstPtr;

}; // struct rolloutReqFileResponse_

typedef ::rollout::rolloutReqFileResponse_<std::allocator<void> > rolloutReqFileResponse;

typedef boost::shared_ptr< ::rollout::rolloutReqFileResponse > rolloutReqFileResponsePtr;
typedef boost::shared_ptr< ::rollout::rolloutReqFileResponse const> rolloutReqFileResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::rolloutReqFileResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::rolloutReqFileResponse_<ContainerAllocator1> & lhs, const ::rollout::rolloutReqFileResponse_<ContainerAllocator2> & rhs)
{
  return lhs.states == rhs.states &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::rolloutReqFileResponse_<ContainerAllocator1> & lhs, const ::rollout::rolloutReqFileResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::rolloutReqFileResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::rolloutReqFileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::rolloutReqFileResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8524beb0d4037c915dee8e093811cf7";
  }

  static const char* value(const ::rollout::rolloutReqFileResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8524beb0d4037c9ULL;
  static const uint64_t static_value2 = 0x15dee8e093811cf7ULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/rolloutReqFileResponse";
  }

  static const char* value(const ::rollout::rolloutReqFileResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] states\n"
"bool success\n"
;
  }

  static const char* value(const ::rollout::rolloutReqFileResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rolloutReqFileResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::rolloutReqFileResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::rolloutReqFileResponse_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.states[i]);
    }
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_ROLLOUTREQFILERESPONSE_H
