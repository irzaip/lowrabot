/* Auto-generated by genmsg_cpp for file /home/ros/ros_workspace/lowrabot/msg/Velocity.msg */
#ifndef LOWRABOT_MESSAGE_VELOCITY_H
#define LOWRABOT_MESSAGE_VELOCITY_H
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
struct Velocity_ {
  typedef Velocity_<ContainerAllocator> Type;

  Velocity_()
  : linear(0.0)
  , angular(0.0)
  {
  }

  Velocity_(const ContainerAllocator& _alloc)
  : linear(0.0)
  , angular(0.0)
  {
  }

  typedef float _linear_type;
  float linear;

  typedef float _angular_type;
  float angular;


private:
  static const char* __s_getDataType_() { return "lowrabot/Velocity"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "9d5c2dcd348ac8f76ce2a4307bd63a13"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "float32 linear\n\
float32 angular\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, linear);
    ros::serialization::serialize(stream, angular);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, linear);
    ros::serialization::deserialize(stream, angular);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(linear);
    size += ros::serialization::serializationLength(angular);
    return size;
  }

  typedef boost::shared_ptr< ::lowrabot::Velocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lowrabot::Velocity_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Velocity
typedef  ::lowrabot::Velocity_<std::allocator<void> > Velocity;

typedef boost::shared_ptr< ::lowrabot::Velocity> VelocityPtr;
typedef boost::shared_ptr< ::lowrabot::Velocity const> VelocityConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::lowrabot::Velocity_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::lowrabot::Velocity_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace lowrabot

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::lowrabot::Velocity_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::lowrabot::Velocity_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::lowrabot::Velocity_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9d5c2dcd348ac8f76ce2a4307bd63a13";
  }

  static const char* value(const  ::lowrabot::Velocity_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x9d5c2dcd348ac8f7ULL;
  static const uint64_t static_value2 = 0x6ce2a4307bd63a13ULL;
};

template<class ContainerAllocator>
struct DataType< ::lowrabot::Velocity_<ContainerAllocator> > {
  static const char* value() 
  {
    return "lowrabot/Velocity";
  }

  static const char* value(const  ::lowrabot::Velocity_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::lowrabot::Velocity_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 linear\n\
float32 angular\n\
\n\
";
  }

  static const char* value(const  ::lowrabot::Velocity_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::lowrabot::Velocity_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::lowrabot::Velocity_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.linear);
    stream.next(m.angular);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Velocity_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lowrabot::Velocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::lowrabot::Velocity_<ContainerAllocator> & v) 
  {
    s << indent << "linear: ";
    Printer<float>::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    Printer<float>::stream(s, indent + "  ", v.angular);
  }
};


} // namespace message_operations
} // namespace ros

#endif // LOWRABOT_MESSAGE_VELOCITY_H

