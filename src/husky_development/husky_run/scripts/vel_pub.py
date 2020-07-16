#!/usr/bin/env python
import rospy 
from geometry_msgs.msg import Twist
from husky_vel.msg import HuskyVelocity

pub = rospy.Publisher('velocity', Twist, queue_size=10)
rospy.init_node('velocity_node', anonymous=True)
rate = rospy.Rate(5) # 5 messages per second

i = 0
while not rospy.is_shutdown():
    velocity = HuskyVelocity()
    velocity.linearVelocityX = 0.5
    velocity.angularVelocityZ = 0.0
    