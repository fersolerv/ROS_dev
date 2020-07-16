#!/usr/bin/env python
import rospy
from ros_essentials.msg import IoTSensor

def iot_sensor_callback(iot_sensor_message):
    rospy.loginfo("New IoT data received: (%d, %s, %.2f, %.2f)",
    iot_sensor_message.id, iot_sensor_message.name, iot_sensor_message.temperature, iot_sensor_message.humidity)

rospy.init_node('iot_sensor_subscriber_node', anonymous=True)

rospy.Subscriber('iot_sensor_topic', IoTSensor, iot_sensor_callback)

rospy.spin()