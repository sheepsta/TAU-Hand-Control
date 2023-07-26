// Generated by gencpp from file rollout/getsResponse.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_GETSRESPONSE_H
#define ROLLOUT_MESSAGE_GETSRESPONSE_H


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
struct getsResponse_
{
  typedef getsResponse_<ContainerAllocator> Type;

  getsResponse_()
    : states()
    , actions()
    , time()  {
    }
  getsResponse_(const ContainerAllocator& _alloc)
    : states(_alloc)
    , actions(_alloc)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _states_type;
  _states_type states;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _actions_type;
  _actions_type actions;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::rollout::getsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::getsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct getsResponse_

typedef ::rollout::getsResponse_<std::allocator<void> > getsResponse;

typedef boost::shared_ptr< ::rollout::getsResponse > getsResponsePtr;
typedef boost::shared_ptr< ::rollout::getsResponse const> getsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::getsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::getsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::getsResponse_<ContainerAllocator1> & lhs, const ::rollout::getsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.states == rhs.states &&
    lhs.actions == rhs.actions &&
    lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::getsResponse_<ContainerAllocator1> & lhs, const ::rollout::getsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::getsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::getsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::getsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::getsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::getsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::getsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::getsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ad8157a5872cd29232e606a0c998cb1";
  }

  static const char* value(const ::rollout::getsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ad8157a5872cd29ULL;
  static const uint64_t static_value2 = 0x232e606a0c998cb1ULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::getsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/getsResponse";
  }

  static const char* value(const ::rollout::getsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::getsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] states\n"
"float32[] actions\n"
"float32[] time\n"
;
  }

  static const char* value(const ::rollout::getsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::getsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
      stream.next(m.actions);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct getsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::getsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::getsResponse_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.states[i]);
    }
    s << indent << "actions[]" << std::endl;
    for (size_t i = 0; i < v.actions.size(); ++i)
    {
      s << indent << "  actions[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.actions[i]);
    }
    s << indent << "time[]" << std::endl;
    for (size_t i = 0; i < v.time.size(); ++i)
    {
      s << indent << "  time[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.time[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_GETSRESPONSE_H
