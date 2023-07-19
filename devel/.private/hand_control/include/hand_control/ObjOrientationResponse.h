// Generated by gencpp from file hand_control/ObjOrientationResponse.msg
// DO NOT EDIT!


#ifndef HAND_CONTROL_MESSAGE_OBJORIENTATIONRESPONSE_H
#define HAND_CONTROL_MESSAGE_OBJORIENTATIONRESPONSE_H


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
struct ObjOrientationResponse_
{
  typedef ObjOrientationResponse_<ContainerAllocator> Type;

  ObjOrientationResponse_()
    : ori(0.0)  {
    }
  ObjOrientationResponse_(const ContainerAllocator& _alloc)
    : ori(0.0)  {
  (void)_alloc;
    }



   typedef float _ori_type;
  _ori_type ori;





  typedef boost::shared_ptr< ::hand_control::ObjOrientationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_control::ObjOrientationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ObjOrientationResponse_

typedef ::hand_control::ObjOrientationResponse_<std::allocator<void> > ObjOrientationResponse;

typedef boost::shared_ptr< ::hand_control::ObjOrientationResponse > ObjOrientationResponsePtr;
typedef boost::shared_ptr< ::hand_control::ObjOrientationResponse const> ObjOrientationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_control::ObjOrientationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hand_control::ObjOrientationResponse_<ContainerAllocator1> & lhs, const ::hand_control::ObjOrientationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ori == rhs.ori;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hand_control::ObjOrientationResponse_<ContainerAllocator1> & lhs, const ::hand_control::ObjOrientationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hand_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_control::ObjOrientationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_control::ObjOrientationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_control::ObjOrientationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d0c22b39a7964032a79fdf4de10eb10";
  }

  static const char* value(const ::hand_control::ObjOrientationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d0c22b39a796403ULL;
  static const uint64_t static_value2 = 0x2a79fdf4de10eb10ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_control/ObjOrientationResponse";
  }

  static const char* value(const ::hand_control::ObjOrientationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 ori\n"
;
  }

  static const char* value(const ::hand_control::ObjOrientationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ori);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjOrientationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_control::ObjOrientationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_control::ObjOrientationResponse_<ContainerAllocator>& v)
  {
    s << indent << "ori: ";
    Printer<float>::stream(s, indent + "  ", v.ori);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_CONTROL_MESSAGE_OBJORIENTATIONRESPONSE_H
