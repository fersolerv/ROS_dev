// Generated by gencpp from file husky_run/HuskyVelocity.msg
// DO NOT EDIT!


#ifndef HUSKY_RUN_MESSAGE_HUSKYVELOCITY_H
#define HUSKY_RUN_MESSAGE_HUSKYVELOCITY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace husky_run
{
template <class ContainerAllocator>
struct HuskyVelocity_
{
  typedef HuskyVelocity_<ContainerAllocator> Type;

  HuskyVelocity_()
    : linearVelocityX(0.0)
    , angularVelocityZ(0.0)  {
    }
  HuskyVelocity_(const ContainerAllocator& _alloc)
    : linearVelocityX(0.0)
    , angularVelocityZ(0.0)  {
  (void)_alloc;
    }



   typedef float _linearVelocityX_type;
  _linearVelocityX_type linearVelocityX;

   typedef float _angularVelocityZ_type;
  _angularVelocityZ_type angularVelocityZ;





  typedef boost::shared_ptr< ::husky_run::HuskyVelocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::husky_run::HuskyVelocity_<ContainerAllocator> const> ConstPtr;

}; // struct HuskyVelocity_

typedef ::husky_run::HuskyVelocity_<std::allocator<void> > HuskyVelocity;

typedef boost::shared_ptr< ::husky_run::HuskyVelocity > HuskyVelocityPtr;
typedef boost::shared_ptr< ::husky_run::HuskyVelocity const> HuskyVelocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::husky_run::HuskyVelocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::husky_run::HuskyVelocity_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::husky_run::HuskyVelocity_<ContainerAllocator1> & lhs, const ::husky_run::HuskyVelocity_<ContainerAllocator2> & rhs)
{
  return lhs.linearVelocityX == rhs.linearVelocityX &&
    lhs.angularVelocityZ == rhs.angularVelocityZ;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::husky_run::HuskyVelocity_<ContainerAllocator1> & lhs, const ::husky_run::HuskyVelocity_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace husky_run

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::husky_run::HuskyVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::husky_run::HuskyVelocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::husky_run::HuskyVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::husky_run::HuskyVelocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::husky_run::HuskyVelocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::husky_run::HuskyVelocity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::husky_run::HuskyVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3810a70d8bd9757d7145a2f9707db9e0";
  }

  static const char* value(const ::husky_run::HuskyVelocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3810a70d8bd9757dULL;
  static const uint64_t static_value2 = 0x7145a2f9707db9e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::husky_run::HuskyVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "husky_run/HuskyVelocity";
  }

  static const char* value(const ::husky_run::HuskyVelocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::husky_run::HuskyVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 linearVelocityX\n"
"float32 angularVelocityZ\n"
;
  }

  static const char* value(const ::husky_run::HuskyVelocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::husky_run::HuskyVelocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linearVelocityX);
      stream.next(m.angularVelocityZ);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HuskyVelocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::husky_run::HuskyVelocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::husky_run::HuskyVelocity_<ContainerAllocator>& v)
  {
    s << indent << "linearVelocityX: ";
    Printer<float>::stream(s, indent + "  ", v.linearVelocityX);
    s << indent << "angularVelocityZ: ";
    Printer<float>::stream(s, indent + "  ", v.angularVelocityZ);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUSKY_RUN_MESSAGE_HUSKYVELOCITY_H