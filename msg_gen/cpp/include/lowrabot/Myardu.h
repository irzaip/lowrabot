/* Auto-generated by genmsg_cpp for file /home/ros/ros_workspace/lowrabot/msg/Myardu.msg */
#ifndef LOWRABOT_MESSAGE_MYARDU_H
#define LOWRABOT_MESSAGE_MYARDU_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace lowrabot
{
template <class ContainerAllocator>
struct Myardu_ {
  typedef Myardu_<ContainerAllocator> Type;

  Myardu_()
  : mkn_dir(0)
  , mkr_dir(0)
  , mkn_val(0)
  , mkr_val(0)
  , joy1(0)
  , joy2(0)
  , joy3(0)
  , joy4(0)
  , joy5(0)
  , joy6(0)
  , joy7(0)
  , joy8(0)
  , joy9(0)
  , joy10(0)
  {
  }

  Myardu_(const ContainerAllocator& _alloc)
  : mkn_dir(0)
  , mkr_dir(0)
  , mkn_val(0)
  , mkr_val(0)
  , joy1(0)
  , joy2(0)
  , joy3(0)
  , joy4(0)
  , joy5(0)
  , joy6(0)
  , joy7(0)
  , joy8(0)
  , joy9(0)
  , joy10(0)
  {
  }

  typedef uint16_t _mkn_dir_type;
  uint16_t mkn_dir;

  typedef uint16_t _mkr_dir_type;
  uint16_t mkr_dir;

  typedef uint16_t _mkn_val_type;
  uint16_t mkn_val;

  typedef uint16_t _mkr_val_type;
  uint16_t mkr_val;

  typedef uint16_t _joy1_type;
  uint16_t joy1;

  typedef uint16_t _joy2_type;
  uint16_t joy2;

  typedef uint16_t _joy3_type;
  uint16_t joy3;

  typedef uint16_t _joy4_type;
  uint16_t joy4;

  typedef uint16_t _joy5_type;
  uint16_t joy5;

  typedef uint16_t _joy6_type;
  uint16_t joy6;

  typedef uint16_t _joy7_type;
  uint16_t joy7;

  typedef uint16_t _joy8_type;
  uint16_t joy8;

  typedef uint16_t _joy9_type;
  uint16_t joy9;

  typedef uint16_t _joy10_type;
  uint16_t joy10;


private:
  static const char* __s_getDataType_() { return "lowrabot/Myardu"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "167ba2f194cc8ae4cb45c5330f04a7c1"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "uint16  mkn_dir\n\
uint16  mkr_dir\n\
uint16  mkn_val\n\
uint16  mkr_val\n\
uint16  joy1\n\
uint16  joy2\n\
uint16  joy3\n\
uint16  joy4\n\
uint16  joy5\n\
uint16  joy6\n\
uint16  joy7\n\
uint16  joy8\n\
uint16  joy9\n\
uint16  joy10\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, mkn_dir);
    ros::serialization::serialize(stream, mkr_dir);
    ros::serialization::serialize(stream, mkn_val);
    ros::serialization::serialize(stream, mkr_val);
    ros::serialization::serialize(stream, joy1);
    ros::serialization::serialize(stream, joy2);
    ros::serialization::serialize(stream, joy3);
    ros::serialization::serialize(stream, joy4);
    ros::serialization::serialize(stream, joy5);
    ros::serialization::serialize(stream, joy6);
    ros::serialization::serialize(stream, joy7);
    ros::serialization::serialize(stream, joy8);
    ros::serialization::serialize(stream, joy9);
    ros::serialization::serialize(stream, joy10);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, mkn_dir);
    ros::serialization::deserialize(stream, mkr_dir);
    ros::serialization::deserialize(stream, mkn_val);
    ros::serialization::deserialize(stream, mkr_val);
    ros::serialization::deserialize(stream, joy1);
    ros::serialization::deserialize(stream, joy2);
    ros::serialization::deserialize(stream, joy3);
    ros::serialization::deserialize(stream, joy4);
    ros::serialization::deserialize(stream, joy5);
    ros::serialization::deserialize(stream, joy6);
    ros::serialization::deserialize(stream, joy7);
    ros::serialization::deserialize(stream, joy8);
    ros::serialization::deserialize(stream, joy9);
    ros::serialization::deserialize(stream, joy10);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(mkn_dir);
    size += ros::serialization::serializationLength(mkr_dir);
    size += ros::serialization::serializationLength(mkn_val);
    size += ros::serialization::serializationLength(mkr_val);
    size += ros::serialization::serializationLength(joy1);
    size += ros::serialization::serializationLength(joy2);
    size += ros::serialization::serializationLength(joy3);
    size += ros::serialization::serializationLength(joy4);
    size += ros::serialization::serializationLength(joy5);
    size += ros::serialization::serializationLength(joy6);
    size += ros::serialization::serializationLength(joy7);
    size += ros::serialization::serializationLength(joy8);
    size += ros::serialization::serializationLength(joy9);
    size += ros::serialization::serializationLength(joy10);
    return size;
  }

  typedef boost::shared_ptr< ::lowrabot::Myardu_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lowrabot::Myardu_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Myardu
typedef  ::lowrabot::Myardu_<std::allocator<void> > Myardu;

typedef boost::shared_ptr< ::lowrabot::Myardu> MyarduPtr;
typedef boost::shared_ptr< ::lowrabot::Myardu const> MyarduConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::lowrabot::Myardu_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::lowrabot::Myardu_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace lowrabot

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::lowrabot::Myardu_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::lowrabot::Myardu_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::lowrabot::Myardu_<ContainerAllocator> > {
  static const char* value() 
  {
    return "167ba2f194cc8ae4cb45c5330f04a7c1";
  }

  static const char* value(const  ::lowrabot::Myardu_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x167ba2f194cc8ae4ULL;
  static const uint64_t static_value2 = 0xcb45c5330f04a7c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::lowrabot::Myardu_<ContainerAllocator> > {
  static const char* value() 
  {
    return "lowrabot/Myardu";
  }

  static const char* value(const  ::lowrabot::Myardu_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::lowrabot::Myardu_<ContainerAllocator> > {
  static const char* value() 
  {
    return "uint16  mkn_dir\n\
uint16  mkr_dir\n\
uint16  mkn_val\n\
uint16  mkr_val\n\
uint16  joy1\n\
uint16  joy2\n\
uint16  joy3\n\
uint16  joy4\n\
uint16  joy5\n\
uint16  joy6\n\
uint16  joy7\n\
uint16  joy8\n\
uint16  joy9\n\
uint16  joy10\n\
\n\
";
  }

  static const char* value(const  ::lowrabot::Myardu_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::lowrabot::Myardu_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::lowrabot::Myardu_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.mkn_dir);
    stream.next(m.mkr_dir);
    stream.next(m.mkn_val);
    stream.next(m.mkr_val);
    stream.next(m.joy1);
    stream.next(m.joy2);
    stream.next(m.joy3);
    stream.next(m.joy4);
    stream.next(m.joy5);
    stream.next(m.joy6);
    stream.next(m.joy7);
    stream.next(m.joy8);
    stream.next(m.joy9);
    stream.next(m.joy10);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Myardu_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lowrabot::Myardu_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::lowrabot::Myardu_<ContainerAllocator> & v) 
  {
    s << indent << "mkn_dir: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.mkn_dir);
    s << indent << "mkr_dir: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.mkr_dir);
    s << indent << "mkn_val: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.mkn_val);
    s << indent << "mkr_val: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.mkr_val);
    s << indent << "joy1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy1);
    s << indent << "joy2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy2);
    s << indent << "joy3: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy3);
    s << indent << "joy4: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy4);
    s << indent << "joy5: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy5);
    s << indent << "joy6: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy6);
    s << indent << "joy7: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy7);
    s << indent << "joy8: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy8);
    s << indent << "joy9: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy9);
    s << indent << "joy10: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.joy10);
  }
};


} // namespace message_operations
} // namespace ros

#endif // LOWRABOT_MESSAGE_MYARDU_H

