// Generated by gencpp from file rollout/plotReqRequest.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_PLOTREQREQUEST_H
#define ROLLOUT_MESSAGE_PLOTREQREQUEST_H


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
struct plotReqRequest_
{
  typedef plotReqRequest_<ContainerAllocator> Type;

  plotReqRequest_()
    : states()
    , filename()  {
    }
  plotReqRequest_(const ContainerAllocator& _alloc)
    : states(_alloc)
    , filename(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _states_type;
  _states_type states;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::rollout::plotReqRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::plotReqRequest_<ContainerAllocator> const> ConstPtr;

}; // struct plotReqRequest_

typedef ::rollout::plotReqRequest_<std::allocator<void> > plotReqRequest;

typedef boost::shared_ptr< ::rollout::plotReqRequest > plotReqRequestPtr;
typedef boost::shared_ptr< ::rollout::plotReqRequest const> plotReqRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::plotReqRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::plotReqRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::plotReqRequest_<ContainerAllocator1> & lhs, const ::rollout::plotReqRequest_<ContainerAllocator2> & rhs)
{
  return lhs.states == rhs.states &&
    lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::plotReqRequest_<ContainerAllocator1> & lhs, const ::rollout::plotReqRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::plotReqRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::plotReqRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::plotReqRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::plotReqRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::plotReqRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::plotReqRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::plotReqRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1148cadfcfa6d659984233cc92414368";
  }

  static const char* value(const ::rollout::plotReqRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1148cadfcfa6d659ULL;
  static const uint64_t static_value2 = 0x984233cc92414368ULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::plotReqRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/plotReqRequest";
  }

  static const char* value(const ::rollout::plotReqRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::plotReqRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] states\n"
"string filename\n"
;
  }

  static const char* value(const ::rollout::plotReqRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::plotReqRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.states);
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct plotReqRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::plotReqRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::plotReqRequest_<ContainerAllocator>& v)
  {
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.states[i]);
    }
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_PLOTREQREQUEST_H
