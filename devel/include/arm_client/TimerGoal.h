// Generated by gencpp from file arm_client/TimerGoal.msg
// DO NOT EDIT!


#ifndef ARM_CLIENT_MESSAGE_TIMERGOAL_H
#define ARM_CLIENT_MESSAGE_TIMERGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_client
{
template <class ContainerAllocator>
struct TimerGoal_
{
  typedef TimerGoal_<ContainerAllocator> Type;

  TimerGoal_()
    : time_to_wait()  {
    }
  TimerGoal_(const ContainerAllocator& _alloc)
    : time_to_wait()  {
  (void)_alloc;
    }



   typedef ros::Duration _time_to_wait_type;
  _time_to_wait_type time_to_wait;





  typedef boost::shared_ptr< ::arm_client::TimerGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_client::TimerGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TimerGoal_

typedef ::arm_client::TimerGoal_<std::allocator<void> > TimerGoal;

typedef boost::shared_ptr< ::arm_client::TimerGoal > TimerGoalPtr;
typedef boost::shared_ptr< ::arm_client::TimerGoal const> TimerGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_client::TimerGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_client::TimerGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_client::TimerGoal_<ContainerAllocator1> & lhs, const ::arm_client::TimerGoal_<ContainerAllocator2> & rhs)
{
  return lhs.time_to_wait == rhs.time_to_wait;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_client::TimerGoal_<ContainerAllocator1> & lhs, const ::arm_client::TimerGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::arm_client::TimerGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_client::TimerGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_client::TimerGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_client::TimerGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_client::TimerGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_client::TimerGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_client::TimerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "861563d4afc38bffed1a53c61a474261";
  }

  static const char* value(const ::arm_client::TimerGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x861563d4afc38bffULL;
  static const uint64_t static_value2 = 0xed1a53c61a474261ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_client::TimerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_client/TimerGoal";
  }

  static const char* value(const ::arm_client::TimerGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_client::TimerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# This is an action definition file, which has three parts: the goal, the\n"
"# result, and the feedback.\n"
"#\n"
"# Part 1: the goal, to be sent by the client\n"
"#\n"
"# The amount of time we want to wait\n"
"duration time_to_wait\n"
;
  }

  static const char* value(const ::arm_client::TimerGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_client::TimerGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_to_wait);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimerGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_client::TimerGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_client::TimerGoal_<ContainerAllocator>& v)
  {
    s << indent << "time_to_wait: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_to_wait);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_CLIENT_MESSAGE_TIMERGOAL_H