#!/bin/sh
xterm -e roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=worlds/willowgarage.world  &
sleep 5
xterm -e roslaunch turtlebot_teleop keyboard_teleop.launch  &
sleep 2
xterm -e rosrun gmapping slam_gmapping  &
sleep 3
xterm -e rosrun rviz rviz -d $(pwd)/map.rviz &

