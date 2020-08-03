// Generated by gencpp from file battery_simulator/TimerResult.msg
// DO NOT EDIT!


#ifndef BATTERY_SIMULATOR_MESSAGE_TIMERRESULT_H
#define BATTERY_SIMULATOR_MESSAGE_TIMERRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace battery_simulator
{
template <class ContainerAllocator>
struct TimerResult_
{
  typedef TimerResult_<ContainerAllocator> Type;

  TimerResult_()
    : time_elapsed()
    , updates_sent(0)  {
    }
  TimerResult_(const ContainerAllocator& _alloc)
    : time_elapsed()
    , updates_sent(0)  {
  (void)_alloc;
    }



   typedef ros::Duration _time_elapsed_type;
  _time_elapsed_type time_elapsed;

   typedef uint32_t _updates_sent_type;
  _updates_sent_type updates_sent;





  typedef boost::shared_ptr< ::battery_simulator::TimerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::battery_simulator::TimerResult_<ContainerAllocator> const> ConstPtr;

}; // struct TimerResult_

typedef ::battery_simulator::TimerResult_<std::allocator<void> > TimerResult;

typedef boost::shared_ptr< ::battery_simulator::TimerResult > TimerResultPtr;
typedef boost::shared_ptr< ::battery_simulator::TimerResult const> TimerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::battery_simulator::TimerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::battery_simulator::TimerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::battery_simulator::TimerResult_<ContainerAllocator1> & lhs, const ::battery_simulator::TimerResult_<ContainerAllocator2> & rhs)
{
  return lhs.time_elapsed == rhs.time_elapsed &&
    lhs.updates_sent == rhs.updates_sent;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::battery_simulator::TimerResult_<ContainerAllocator1> & lhs, const ::battery_simulator::TimerResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace battery_simulator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::battery_simulator::TimerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::battery_simulator::TimerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::battery_simulator::TimerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::battery_simulator::TimerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::battery_simulator::TimerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::battery_simulator::TimerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::battery_simulator::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8227810e22df8077dd49231152c9e200";
  }

  static const char* value(const ::battery_simulator::TimerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8227810e22df8077ULL;
  static const uint64_t static_value2 = 0xdd49231152c9e200ULL;
};

template<class ContainerAllocator>
struct DataType< ::battery_simulator::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "battery_simulator/TimerResult";
  }

  static const char* value(const ::battery_simulator::TimerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::battery_simulator::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Part 2: the result, to be sent by the server upon completion\n"
"#\n"
"# How much time we waited\n"
"duration time_elapsed\n"
"# How many updates we provided along the way\n"
"uint32 updates_sent\n"
;
  }

  static const char* value(const ::battery_simulator::TimerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::battery_simulator::TimerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_elapsed);
      stream.next(m.updates_sent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::battery_simulator::TimerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::battery_simulator::TimerResult_<ContainerAllocator>& v)
  {
    s << indent << "time_elapsed: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_elapsed);
    s << indent << "updates_sent: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.updates_sent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BATTERY_SIMULATOR_MESSAGE_TIMERRESULT_H