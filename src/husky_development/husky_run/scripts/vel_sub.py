#!/usr/bin/env python
import rospy 
from husky_vel.msg import HuskyVelocity

vel_pub = rospy.Publisher('vel_publisher', HuskyVelocity, queue_size=10)

rospy.init_node('velocity', anonymous=True)

rate = rospy.Rate(1)

while not rospy.is_shutdown():
    velocity = HuskyVelocity()
    velocity.linearVelocity = 0.2
    velocity.angularVelocity = 0.0 
    rospy.loginfo("Linear velocity is: %.2f", velocity)
    vel_pub.publish(velocity)
    rate.sleep()