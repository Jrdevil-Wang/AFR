#!/bin/bash

# change this path to your ros path
export TARGET_ROS_ROOT=/opt/ros/lunar

export TARGET_INCLUDE_DIR=$TARGET_ROS_ROOT/include
export TARGET_LIB_DIR=$TARGET_ROS_ROOT/lib
export TARGET_SHARE_DIR=$TARGET_ROS_ROOT/share

# compile ros_comm
cd ros_comm_ws
catkin_make
. ./install.sh

echo "Build Finish. Please re-compile your ros application, and enjoy AFR!"

