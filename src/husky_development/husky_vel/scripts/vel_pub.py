#!/usr/bin/env python
import rospy 
from husky_vel.msg import HuskyVelocity

pub = rospy.Publisher('velocity', HuskyVelocity, queue_size=10)
rospy.init_node('velocity_node', anonymous=True)
rate = rospy.Rate(5) # 5 messages per second

i = 0
while not rospy.is_shutdown():
    velocity = HuskyVelocity()
    