
#!/bin/bash

roslaunch gohi_hw gohi_hw.launch  &
echo "higo base starting success!"
sleep 1


roslaunch rplidar_ros rplidar.launch  &
echo "rplidar starting success!"
sleep 1

roslaunch openni_launch openni.launch &
echo "kinect starting success!"
sleep 1

roslaunch simple_voice nav_speaker.launch &
echo "voice recognition starting success!"
sleep 1

roslaunch rbx1_vision usb_cam_left.launch  &
sleep 1
echo "left camera starting success!"

roslaunch rbx1_vision usb_cam_right.launch  &
sleep 1  
echo "right camera starting success!"

roslaunch rbx1_dynamixels dynamixels.launch  &
sleep 1.0   
echo "dynamixels starting success!"


roslaunch gohi_bringup pxp_vision.launch  &
sleep 1.0   
echo "right camera starting success!"




wait
exit 0
