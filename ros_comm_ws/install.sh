#!/bin/bash

SOURCE_INCLUDE_DIR=./src/ros_comm/clients/roscpp/include/ros
SOURCE_LIB_DIR=./devel/lib

# copy include files
sudo cp $SOURCE_INCLUDE_DIR/transport_subscriber_link.h $TARGET_INCLUDE_DIR/ros/

# copy shared lib
sudo cp $SOURCE_LIB_DIR/libroscpp.so $TARGET_LIB_DIR

echo "INSTALL SUCCESS!"
