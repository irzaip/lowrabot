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
from sensor_msgs.msg import Joy
from lowrabot.msg import Velocity
import cv

import sensor_msgs.msg
from cv_bridge import CvBridge

#other python stuff
import math
import sys

import LowraBot

LBOT=0


def getJoyData(data):
  global LBOT
  try:
		#myardudata=data.data
		#myardudata=myardudata[6:-1].split(',')[0:13]
    #rospy.loginfo(data.buttons[8])
    if data.buttons[8] > 0:
      LBOT.linear_mov = 1

    if data.buttons[9] > 0:
      LBOT.linear_mov = -1

    if data.buttons[7] > 0:
      LBOT.angular_mov = -1

    if data.buttons[6] > 0:
      LBOT.angular_mov = 1

    
		#	rospy.loginfo(int(myardudata[1]))
		#	LBOT.setmyvar(String(myardudata[3]))
		#else:
		#	LBOT.setmyvar("0")			
  except:
    pass
		#rospy.loginfo('joystick not good')

def sendCommand(data):
  global LBOT
  pass

#controller method
def controller():
	global LBOT
    #the callbacks earlier in the file will asynchronously update
rospy.init_node('Teleop')

    ##if not (rospy.has_param(rospy.get_name()+'/rovioIP') and rospy.has_param(rospy.get_name()+'/rovioUser') and rospy.has_param(rospy.get_name()+'/rovioPass')):
    ##    rospy.logerr("Missing Parameters")
    ##    return
rospy.loginfo("Startup Teleoperator Node")    

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
pubme=rospy.Publisher('turtle1/command_velocity',Velocity)

LBOT = LowraBot.LowraBot(1,2,3)
#rovioBot=Rovio.Rovio(rospy.get_param(rospy.get_name()+'/rovioIP'),rospy.get_param(rospy.get_name()+'/rovioIP'),rospy.get_param(rospy.get_name()+'/rovioUser'),rospy.get_param(rospy.get_name()+'/rovioPass'));
rospy.Subscriber("cmd_vel", Twist, sendCommand)
rospy.Subscriber("joy", Joy, getJoyData)

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
	f = LBOT.linear_mov
        a = LBOT.angular_mov
        #rospy.loginfo(f,a)
	pubme.publish(f,a)
        LBOT.linear_mov = 0
        LBOT.angular_mov = 0


	r.sleep()

print "shutting down"
outcome = "keyboard interrupt"
rospy.core.signal_shutdown(outcome)

if __name__ == '__main__':
    try:
        controller()
    except rospy.ROSInterruptException: pass

