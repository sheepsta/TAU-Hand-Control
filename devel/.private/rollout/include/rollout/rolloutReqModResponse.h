// Generated by gencpp from file rollout/rolloutReqModResponse.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_ROLLOUTREQMODRESPONSE_H
#define ROLLOUT_MESSAGE_ROLLOUTREQMODRESPONSE_H


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
struct rolloutReqModResponse_
{
  typedef rolloutReqModResponse_<ContainerAllocator> Type;

  rolloutReqModResponse_()
    : states()
    , next_states()
    , actions()
    , time()
    , success(false)
    , reason()
    , target_pos()  {
    }
  rolloutReqModResponse_(const ContainerAllocator& _alloc)
    : states(_alloc)
    , next_states(_alloc)
    , actions(_alloc)
    , time(_alloc)
    , success(false)
    , reason(_alloc)
    , target_pos(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _states_type;
  _states_type states;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _next_states_type;
  _next_states_type next_states;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _actions_type;
  _actions_type actions;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _time_type;
  _time_type time;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _reason_type;
  _reason_type reason;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _target_pos_type;
  _target_pos_type target_pos;





  typedef boost::shared_ptr< ::rollout::rolloutReqModResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::rolloutReqModResponse_<ContainerAllocator> const> ConstPtr;

}; // struct rolloutReqModResponse_

typedef ::rollout::rolloutReqModResponse_<std::allocator<void> > rolloutReqModResponse;

typedef boost::shared_ptr< ::rollout::rolloutReqModResponse > rolloutReqModResponsePtr;
typedef boost::shared_ptr< ::rollout::rolloutReqModResponse const> rolloutReqModResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::rolloutReqModResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::rolloutReqModResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::rolloutReqModResponse_<ContainerAllocator1> & lhs, const ::rollout::rolloutReqModResponse_<ContainerAllocator2> & rhs)
{
  return lhs.states == rhs.states &&
    lhs.next_states == rhs.next_states &&
    lhs.actions == rhs.actions &&
    lhs.time == rhs.time &&
    lhs.success == rhs.success &&
    lhs.reason == rhs.reason &&
    lhs.target_pos == rhs.target_pos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::rolloutReqModResponse_<ContainerAllocator1> & lhs, const ::rollout::rolloutReqModResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::rolloutReqModResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::rolloutReqModResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::rolloutReqModResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e604165d44aea2e12649320573032f78";
  }

  static const char* value(const ::rollout::rolloutReqModResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe604165d44aea2e1ULL;
  static const uint64_t static_value2 = 0x2649320573032f78ULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/rolloutReqModResponse";
  }

  static const char* value(const ::rollout::rolloutReqModResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] states\n"
"float32[] next_states\n"
"float32[] actions\n"
"float32[] time\n"
"bool success\n"
"string reason\n"
"float32[] target_pos\n"
;
  }

  static const char* value(const ::rollout::rolloutReqModResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
      stream.next(m.next_states);
      stream.next(m.actions);
      stream.next(m.time);
      stream.next(m.success);
      stream.next(m.reason);
      stream.next(m.target_pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rolloutReqModResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::rolloutReqModResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::rolloutReqModResponse_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.states[i]);
    }
    s << indent << "next_states[]" << std::endl;
    for (size_t i = 0; i < v.next_states.size(); ++i)
    {
      s << indent << "  next_states[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.next_states[i]);
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
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "reason: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.reason);
    s << indent << "target_pos[]" << std::endl;
    for (size_t i = 0; i < v.target_pos.size(); ++i)
    {
      s << indent << "  target_pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.target_pos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_ROLLOUTREQMODRESPONSE_H