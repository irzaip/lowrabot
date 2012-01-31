#!/usr/bin/env python
#ROS imports
import roslib; roslib.load_manifest('rovio')
import rospy
#imports to handle messages
from nav_msgs.msg import Odometry
from std_msgs.msg import Bool
from std_msgs.msg import Int64
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Vector3
from roslib.msg import Header

import sensor_msgs.msg

#other python stuff
import math

#robot's angular orientation
angle=0
#robot's x position
xPos=0
#robot's y position
yPos=0
#is there an obstacle?
obstacle=0

#callback to store 0dometry data
def recordOdom(data):
    global angle
    global xPos
    global yPos
    xPos=data.pose.pose.position.x
    yPos=data.pose.pose.position.y
    #get Quaternion anglular information
    #x=data.pose.pose.orientation.x
    #y=data.pose.pose.orientation.y
    #z=data.pose.pose.orientation.z
    #w=data.pose.pose.orientation.w
    #convert to pitch
    #angle=math.atan2(2.0*(y*x+w*z),w*w+x*x-y*y-z*z)
    angle=data.pose.pose.orientation.z

#callback to store 0dometry data
def recordInfrared(data):
    global obstacle
    obstacle=data.data

#controller method
def controller():
    global angle
    global xPos
    global yPos
    global obstacle
    gotoX=0
    gotoY=0
    rospy.init_node('rovio_ex')
    if rospy.has_param(rospy.get_name()+'/gotoX'):
        gotoX=int(rospy.get_param(rospy.get_name()+'/gotoX'))
    if rospy.has_param(rospy.get_name()+'/gotoY'):
        gotoY=int(rospy.get_param(rospy.get_name()+'/gotoY'))

    #this allows us to publish commands for the robot
    pub=rospy.Publisher('cmd_vel',Twist)
    headPub=rospy.Publisher('cmd_head',Int64)
    #these start the thread that calls recordOdom when the data is ready
    rospy.Subscriber("base_pose_ground_truth", Odometry, recordOdom)
    rospy.Subscriber("infrared", Bool, recordInfrared)
    rospy.sleep(2)
    done =0  


    r= rospy.Rate(1)
    while not rospy.is_shutdown() and not done:

        forward=0
        side=0
        turn=0
        rospy.loginfo('angle=%f',angle)
        if obstacle:            
            rospy.loginfo('I see an obstacle')
        if angle>.5 :
            turn=-1
        elif angle<-.5:
            turn=1
        elif xPos>(gotoX+5):
            side=-1
        elif xPos<gotoX-5:
            side=1
        elif yPos>gotoY+5:
            forward=1
        elif yPos<gotoY-5:
            forward=-1
        else:
            done=1
        
        cmd=Twist(Vector3(forward,side,0),Vector3(0,0,turn))
        pub.publish(cmd)
        headPub.publish(Int64(1))

        r.sleep()

    print "shutting down"
    outcome = 'keyboard interrupt'
    rospy.core.signal_shutdown(outcome)

if __name__ == '__main__':
    try:
        controller()
    except rospy.ROSInterruptException: pass

