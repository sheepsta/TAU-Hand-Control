// Generated by gencpp from file openhand_node/ReadServosResponse.msg
// DO NOT EDIT!


#ifndef OPENHAND_NODE_MESSAGE_READSERVOSRESPONSE_H
#define OPENHAND_NODE_MESSAGE_READSERVOSRESPONSE_H


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
struct ReadServosResponse_
{
  typedef ReadServosResponse_<ContainerAllocator> Type;

  ReadServosResponse_()
    : pos()
    , enc()
    , ref()  {
    }
  ReadServosResponse_(const ContainerAllocator& _alloc)
    : pos(_alloc)
    , enc(_alloc)
    , ref(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _pos_type;
  _pos_type pos;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _enc_type;
  _enc_type enc;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _ref_type;
  _ref_type ref;





  typedef boost::shared_ptr< ::openhand_node::ReadServosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::openhand_node::ReadServosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReadServosResponse_

typedef ::openhand_node::ReadServosResponse_<std::allocator<void> > ReadServosResponse;

typedef boost::shared_ptr< ::openhand_node::ReadServosResponse > ReadServosResponsePtr;
typedef boost::shared_ptr< ::openhand_node::ReadServosResponse const> ReadServosResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::openhand_node::ReadServosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::openhand_node::ReadServosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::openhand_node::ReadServosResponse_<ContainerAllocator1> & lhs, const ::openhand_node::ReadServosResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pos == rhs.pos &&
    lhs.enc == rhs.enc &&
    lhs.ref == rhs.ref;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::openhand_node::ReadServosResponse_<ContainerAllocator1> & lhs, const ::openhand_node::ReadServosResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace openhand_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::openhand_node::ReadServosResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::openhand_node::ReadServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::openhand_node::ReadServosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "662e32bfc46f37715bb1455cf7d299a9";
  }

  static const char* value(const ::openhand_node::ReadServosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x662e32bfc46f3771ULL;
  static const uint64_t static_value2 = 0x5bb1455cf7d299a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "openhand_node/ReadServosResponse";
  }

  static const char* value(const ::openhand_node::ReadServosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] pos\n"
"int32[] enc\n"
"float32[] ref\n"
"\n"
;
  }

  static const char* value(const ::openhand_node::ReadServosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
      stream.next(m.enc);
      stream.next(m.ref);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadServosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::openhand_node::ReadServosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::openhand_node::ReadServosResponse_<ContainerAllocator>& v)
  {
    s << indent << "pos[]" << std::endl;
    for (size_t i = 0; i < v.pos.size(); ++i)
    {
      s << indent << "  pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pos[i]);
    }
    s << indent << "enc[]" << std::endl;
    for (size_t i = 0; i < v.enc.size(); ++i)
    {
      s << indent << "  enc[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.enc[i]);
    }
    s << indent << "ref[]" << std::endl;
    for (size_t i = 0; i < v.ref.size(); ++i)
    {
      s << indent << "  ref[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ref[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENHAND_NODE_MESSAGE_READSERVOSRESPONSE_H
