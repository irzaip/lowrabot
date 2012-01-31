#!/bin/sh
 source /opt/ros/electric/setup.bash
 export ROS_ROOT=/opt/ros/electric/ros
 export PATH=$ROS_ROOT/bin:$PATH
 export PYTHONPATH=$ROS_ROOT/core/roslib/src:$PYTHONPATH
 export ROS_PACKAGE_PATH=~/ros_workspace:/opt/ros/electric/stacks:$ROS_PACKAGE_PATH
 export EDITOR='gedit'
 export PATH=$PATH:/home/ros/htk/bin.linux:/home/ros/julius-3.5.2-multipath-linuxbin/bin:/home/ros/ros_workspace/audio_common
 export ROS_MASTER_URI=http://ros-robot:11311

git config --global user.name "Irza Pulungan"
git config --global user.email irzaip@gmail.com
