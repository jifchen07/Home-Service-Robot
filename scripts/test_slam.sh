#!/bin/sh
xterm  -e  "source $(pwd)/devel/setup.bash;
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/src/map/FakeHome" &
sleep 4
xterm  -e  "source $(pwd)/devel/setup.bash;
roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 4
xterm  -e  "source $(pwd)/devel/setup.bash;
roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 4
#xterm  -e  "source $(pwd)/devel/setup.bash;
#rosrun teleop_twist_keyboard teleop_twist_keyboard.py" &
#sleep 4
xterm  -e  "source $(pwd)/devel/setup.bash;
roslaunch turtlebot_teleop keyboard_teleop.launch" &
sleep 4
