#!/usr/bin/env python
#ROS imports
import roslib; roslib.load_manifest('lowrabot')
import rospy
#imports to handle messages
from std_msgs.msg import Int64
from std_msgs.msg import Bool
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from sensor_msgs.msg import Image
from std_msgs.msg import Header
from std_msgs.msg import String
from lowrabot.msg import Myardu
import cv

import sensor_msgs.msg
from cv_bridge import CvBridge

#other python stuff
import math
import sys

import LowraBot

LBOT=0


def getArduData(data):
	global LBOT
	try:
		#myardudata=data.data
		#myardudata=myardudata[6:-1].split(',')[0:13]
		rospy.loginfo(data.ab_val)
		if data.ab_val > 0: 
			LBOT.setmyvar(data.ab_val)
		#	rospy.loginfo(int(myardudata[1]))
		#	LBOT.setmyvar(String(myardudata[3]))
		#else:
		#	LBOT.setmyvar("0")			
	except:
		pass
		#rospy.loginfo('joystick not good')

def sendHeadCommand(data):
    global LBOT
    rospy.loginfo('%i',data.data)
    try:
        if data.data==2:
            LBOT.head_up()
        elif data.data==1:
            LBOT.head_middle()
        else:
            LBOT.head_down()
    except:
        rospy.loginfo('url timeout')

def sendCommand(data):
    global LBOT
    speed=20
    x=data.linear.x
    y=data.linear.y
    theta=data.angular.z
    try:
        if(theta>0):
            LBOT.rotate_left(5)
        elif(theta<0):
            LBOT.rotate_right(5)
        elif(x>0 and y>0):
            LBOT.forward_left(speed)
        elif(x>0 and y<0):
            LBOT.forward_right(speed)
        elif(x<0 and y>0):
            LBOT.back_left(speed)
        elif(x<0 and y<0):
            LBOT.back_right(speed)
        elif(x>0):
            LBOT.forward(20)
        elif(x<0):
            LBOT.backward(20)
        elif(y>0):
            LBOT.left(10)
        elif(y<0):
            LBOT.right(10)
        else:
            LBOT.stop()
    except:
        rospy.loginfo('url timeout')

def CreateFromYaw(yaw):
    num7 = yaw * 0.5
    num2 = math.sin(num7)
    num = math.cos(num7)
    return Quaternion(0,num2,0,num)

def hex2dec(s):
    """return the integer value of a hexadecimal string s"""
    return int(s, 16)

#controller method
def controller():
	global LBOT
    #the callbacks earlier in the file will asynchronously update
rospy.init_node('LowraBOT')

    ##if not (rospy.has_param(rospy.get_name()+'/rovioIP') and rospy.has_param(rospy.get_name()+'/rovioUser') and rospy.has_param(rospy.get_name()+'/rovioPass')):
    ##    rospy.logerr("Missing Parameters")
    ##    return
rospy.loginfo("Startup Arduino Data Reader Node")    

    ##getImage=int(rospy.get_param(rospy.get_name()+'/getImage')) if rospy.has_param(rospy.get_name()+'/getImage') else 0
getPos=int(rospy.get_param(rospy.get_name()+'/getPos')) if rospy.has_param(rospy.get_name()+'/getPos') else 0
    ##getVel=int(rospy.get_param(rospy.get_name()+'/getVel')) if rospy.has_param(rospy.get_name()+'/getVel') else 0

    #this allows us to publish commands for the robot
    ##if getPos or getVel:
    ##    pubOdom=rospy.Publisher('base_pose_ground_truth',Odometry)
    ##if getVel:
    ##    pubIR=rospy.Publisher('infrared',Bool)
    ##if getImage:
    ##    pubImage = rospy.Publisher("images", sensor_msgs.msg.Image)
    ##    cvb = CvBridge()
    #these start the threads that call the recordLaser and recordOdom when the data is ready
    ##rospy.Subscriber("cmd_vel", Twist, sendCommand)
    ##rospy.Subscriber("cmd_head", Int64, sendHeadCommand)
    ##count=0
#pubOdom=rospy.Publisher('base_pose_ground_truth',Odometry)
pubme=rospy.Publisher('mypubs',String)

LBOT = LowraBot.LowraBot(1,2,3)
#rovioBot=Rovio.Rovio(rospy.get_param(rospy.get_name()+'/rovioIP'),rospy.get_param(rospy.get_name()+'/rovioIP'),rospy.get_param(rospy.get_name()+'/rovioUser'),rospy.get_param(rospy.get_name()+'/rovioPass'));
rospy.Subscriber("cmd_vel", Twist, sendCommand)
rospy.Subscriber("cmd_head", Int64, sendHeadCommand)
rospy.Subscriber("arduino", Myardu, getArduData)

count=0
    ##isEnabled=False
    ##while not isEnabled:
    ##    try:
    ##        rovioBot.enable_IR()
    ##        isEnabled=True
    ##    except:
    ##        rospy.loginfo('url timeout')
    ##        rospy.sleep(.2)

    ##r= rospy.Rate(10) # 10hz
    ##while not rospy.is_shutdown():
    ##    odom=Odometry()
    ##    header=Header(seq=count,stamp=rospy.get_rostime(),frame_id=rospy.get_caller_id())
    ##    count=count+1
    ##    try:
    ##        if getPos:
    ##            report=rovioBot.get_report()
    ##            x=float(report['x'])/100.
    ##            y=float(report['y'])/100.
    ##            yaw=float(report['theta'])
                #odom.pose.pose=Pose(position=Point(x,y,0),orientation=CreateFromYaw(yaw))
    ##            odom.pose.pose=Pose(position=Point(x,y,0),orientation=Quaternion(0,0,yaw,0))
r= rospy.Rate(10)
while not rospy.is_shutdown():
	header=Header(seq=count,stamp=rospy.get_rostime(),frame_id=rospy.get_caller_id())
	count=count+1
	f = LBOT.myvar()
	pubme.publish(str(f))
	try:
		f = LBOT.myvar()
		if f > 0:
			rospy.Publish("Joystick value" + String(f))


	except:
		pass
		#rospy.loginfo("URL Timeout") 
                #if getYaw:
                #    pubYaw.publish(Vector3(0,0,yaw))

    ##        if getVel:
    ##            report=rovioBot.get_MCU_report()
    ##            ind = 0
    ##            packetLen = hex2dec(report[0:2])
                #left wheel:
    ##            lw_dir = hex2dec(report[4:6])
    ##            lw_count = hex2dec(report[6:10])
                #right wheel:
    ##            rw_dir = hex2dec(report[10:12])
    ##            rw_count = hex2dec(report[12:16])
                #centre wheel
    ##            cw_dir = hex2dec(report[16:18])
    ##            cw_count = hex2dec(report[18:22])
    ##            V_l = -1.0*lw_count if (lw_dir & 4) else lw_count
    ##            V_r = -1.0*rw_count if (rw_dir & 4) else rw_count
    ##            V_c = -1.0*cw_count if (cw_dir & 4) else cw_count
    ##            front_factor_avg = 0.0
    ##            front_factor_count = 0.0
                # 20 degrees
    ##            phi = 0.34907
    ##            Lf = 0.74
    ##            Lb = 1.0 - Lf;
                #375 encoder ticks per meter forwards
    ##            Wx = 375
                #encoder ticks per meter sideways?
    ##            Wy = 140
                #205 encoder ticks per radian of rotation?
    ##            Wt = 205
    ##            Vx = (-V_l + -V_r)/2*math.cos(phi)/Wx;
    ##            front_vel = (V_l - V_r)/2.0 * math.sin(phi)*Lf;
    ##            rear_vel = (V_c * Lb);
    ##            Vy = (front_vel - rear_vel)/Wy;
    ##            omega = (-V_r + V_l + V_c) / Wt;
    ##            odom.twist.twist=Twist(linear=Vector3(x=Vx,y=Vx,z=0),angular=Vector3(x=0,y=0,z=omega))
    ##            pubIR.publish(Bool((hex2dec(report[28:30])&4)==4))
                
            #rospy.loginfo('x=%f y=%f theta=%f Vx=%f Vy=%f omega=%f',x,y,yaw,Vx,Vy,omega)
    ##        if getPos or getVel:
    ##            odom.header=header
    ##            pubOdom.publish(odom)
    ##    except:
    ##        rospy.loginfo('url timeout')
            

    ##    if getImage:
    ##        header.stamp=rospy.get_rostime()
    ##        try:
    ##            jpeg_data = rovioBot.get_image()
    ##            f = file('tmp.jpg', 'wb')
    ##            f.write(jpeg_data)
    ##            f.close()
    ##            im = cv.LoadImage("tmp.jpg", 1)
    ##            rosImg=cvb.cv_to_imgmsg(im)
    ##            rosImg.header=header
    ##            pubImage.publish(rosImg)
    ##        except:
    ##            rospy.loginfo('url timeout')

    ##    r.sleep()
	r.sleep()
    ##print "shutting down"
    ##outcome = 'keyboard interrupt'
    ##rospy.core.signal_shutdown(outcome)
print "shutting down"
outcome = "keyboard interrupt"
rospy.core.signal_shutdown(outcome)

if __name__ == '__main__':
    try:
        controller()
    except rospy.ROSInterruptException: pass

