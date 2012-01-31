#ifndef _ROS_rosserial_arduino_Myardu_h
#define _ROS_rosserial_arduino_Myardu_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rosserial_arduino
{

  class Myardu : public ros::Msg
  {
    public:
      uint16_t ab_dir;
      uint16_t kk_dir;
      uint16_t ab_val;
      uint16_t kk_val;
      uint16_t joy1;
      uint16_t joy2;
      uint16_t joy3;
      uint16_t joy4;
      uint16_t joy5;
      uint16_t joy6;
      uint16_t joy7;
      uint16_t joy8;
      uint16_t joy9;
      uint16_t joy10;

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      *(outbuffer + offset + 0) = (this->ab_dir >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->ab_dir >> (8 * 1)) & 0xFF;
      offset += sizeof(this->ab_dir);
      *(outbuffer + offset + 0) = (this->kk_dir >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->kk_dir >> (8 * 1)) & 0xFF;
      offset += sizeof(this->kk_dir);
      *(outbuffer + offset + 0) = (this->ab_val >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->ab_val >> (8 * 1)) & 0xFF;
      offset += sizeof(this->ab_val);
      *(outbuffer + offset + 0) = (this->kk_val >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->kk_val >> (8 * 1)) & 0xFF;
      offset += sizeof(this->kk_val);
      *(outbuffer + offset + 0) = (this->joy1 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy1 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy1);
      *(outbuffer + offset + 0) = (this->joy2 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy2 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy2);
      *(outbuffer + offset + 0) = (this->joy3 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy3 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy3);
      *(outbuffer + offset + 0) = (this->joy4 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy4 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy4);
      *(outbuffer + offset + 0) = (this->joy5 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy5 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy5);
      *(outbuffer + offset + 0) = (this->joy6 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy6 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy6);
      *(outbuffer + offset + 0) = (this->joy7 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy7 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy7);
      *(outbuffer + offset + 0) = (this->joy8 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy8 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy8);
      *(outbuffer + offset + 0) = (this->joy9 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy9 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy9);
      *(outbuffer + offset + 0) = (this->joy10 >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->joy10 >> (8 * 1)) & 0xFF;
      offset += sizeof(this->joy10);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      this->ab_dir =  ((uint16_t) (*(inbuffer + offset)));
      this->ab_dir |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->ab_dir);
      this->kk_dir =  ((uint16_t) (*(inbuffer + offset)));
      this->kk_dir |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->kk_dir);
      this->ab_val =  ((uint16_t) (*(inbuffer + offset)));
      this->ab_val |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->ab_val);
      this->kk_val =  ((uint16_t) (*(inbuffer + offset)));
      this->kk_val |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->kk_val);
      this->joy1 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy1 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy1);
      this->joy2 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy2 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy2);
      this->joy3 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy3 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy3);
      this->joy4 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy4 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy4);
      this->joy5 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy5 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy5);
      this->joy6 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy6 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy6);
      this->joy7 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy7 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy7);
      this->joy8 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy8 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy8);
      this->joy9 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy9 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy9);
      this->joy10 =  ((uint16_t) (*(inbuffer + offset)));
      this->joy10 |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->joy10);
     return offset;
    }

    const char * getType(){ return "rosserial_arduino/Myardu"; };
    const char * getMD5(){ return "d80b48bb7b9460c12e4ef99c393aa5cb"; };

  };

}
#endif