// Generated by gencpp from file ca_msgs/ChargingState.msg
// DO NOT EDIT!


#ifndef CA_MSGS_MESSAGE_CHARGINGSTATE_H
#define CA_MSGS_MESSAGE_CHARGINGSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ca_msgs
{
template <class ContainerAllocator>
struct ChargingState_
{
  typedef ChargingState_<ContainerAllocator> Type;

  ChargingState_()
    : header()
    , state(0)  {
    }
  ChargingState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _state_type;
  _state_type state;



  enum {
    CHARGE_NONE = 0u,
    CHARGE_RECONDITION = 1u,
    CHARGE_FULL = 2u,
    CHARGE_TRICKLE = 3u,
    CHARGE_WAITING = 4u,
    CHARGE_FAULT = 5u,
  };


  typedef boost::shared_ptr< ::ca_msgs::ChargingState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ca_msgs::ChargingState_<ContainerAllocator> const> ConstPtr;

}; // struct ChargingState_

typedef ::ca_msgs::ChargingState_<std::allocator<void> > ChargingState;

typedef boost::shared_ptr< ::ca_msgs::ChargingState > ChargingStatePtr;
typedef boost::shared_ptr< ::ca_msgs::ChargingState const> ChargingStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ca_msgs::ChargingState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ca_msgs::ChargingState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ca_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ca_msgs': ['/home/nvidia/create_ws/src/create_autonomy/ca_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ca_msgs::ChargingState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ca_msgs::ChargingState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ca_msgs::ChargingState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ca_msgs::ChargingState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ca_msgs::ChargingState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ca_msgs::ChargingState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ca_msgs::ChargingState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4da1ef814a2def80691224a5e5883ea";
  }

  static const char* value(const ::ca_msgs::ChargingState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4da1ef814a2def8ULL;
  static const uint64_t static_value2 = 0x0691224a5e5883eaULL;
};

template<class ContainerAllocator>
struct DataType< ::ca_msgs::ChargingState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca_msgs/ChargingState";
  }

  static const char* value(const ::ca_msgs::ChargingState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ca_msgs::ChargingState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 CHARGE_NONE=0\n\
uint8 CHARGE_RECONDITION=1\n\
uint8 CHARGE_FULL=2\n\
uint8 CHARGE_TRICKLE=3\n\
uint8 CHARGE_WAITING=4\n\
uint8 CHARGE_FAULT=5\n\
\n\
Header header\n\
uint8 state\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::ca_msgs::ChargingState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ca_msgs::ChargingState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChargingState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ca_msgs::ChargingState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ca_msgs::ChargingState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CA_MSGS_MESSAGE_CHARGINGSTATE_H
