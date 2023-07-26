// Generated by gencpp from file rollout/TargetAnglesRequest.msg
// DO NOT EDIT!


#ifndef ROLLOUT_MESSAGE_TARGETANGLESREQUEST_H
#define ROLLOUT_MESSAGE_TARGETANGLESREQUEST_H


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
struct TargetAnglesRequest_
{
  typedef TargetAnglesRequest_<ContainerAllocator> Type;

  TargetAnglesRequest_()
    : angles()  {
    }
  TargetAnglesRequest_(const ContainerAllocator& _alloc)
    : angles(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _angles_type;
  _angles_type angles;





  typedef boost::shared_ptr< ::rollout::TargetAnglesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rollout::TargetAnglesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TargetAnglesRequest_

typedef ::rollout::TargetAnglesRequest_<std::allocator<void> > TargetAnglesRequest;

typedef boost::shared_ptr< ::rollout::TargetAnglesRequest > TargetAnglesRequestPtr;
typedef boost::shared_ptr< ::rollout::TargetAnglesRequest const> TargetAnglesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rollout::TargetAnglesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rollout::TargetAnglesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rollout::TargetAnglesRequest_<ContainerAllocator1> & lhs, const ::rollout::TargetAnglesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.angles == rhs.angles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rollout::TargetAnglesRequest_<ContainerAllocator1> & lhs, const ::rollout::TargetAnglesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rollout

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rollout::TargetAnglesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rollout::TargetAnglesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rollout::TargetAnglesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "900e68ab26db7b254c95cc40be37fb5c";
  }

  static const char* value(const ::rollout::TargetAnglesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x900e68ab26db7b25ULL;
  static const uint64_t static_value2 = 0x4c95cc40be37fb5cULL;
};

template<class ContainerAllocator>
struct DataType< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rollout/TargetAnglesRequest";
  }

  static const char* value(const ::rollout::TargetAnglesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] angles\n"
;
  }

  static const char* value(const ::rollout::TargetAnglesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetAnglesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rollout::TargetAnglesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rollout::TargetAnglesRequest_<ContainerAllocator>& v)
  {
    s << indent << "angles[]" << std::endl;
    for (size_t i = 0; i < v.angles.size(); ++i)
    {
      s << indent << "  angles[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.angles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLOUT_MESSAGE_TARGETANGLESREQUEST_H
