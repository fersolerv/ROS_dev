#include "ros/ros.h"
#include "ros_tutorial_service/SrvTutorial.h"

bool calculation(ros_tutorial_service::SrvTutorial::Request &req,
                 ros_tutorial_service::SrvTutorial::Response &res)
{
    res.result = req.a + req.b;
    ROS_INFO("request: x = %ld, y = %ld", (long int)req.a, (long int)req.b);
    ROS_INFO("sending back response: %ld", (long int)res.result);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "service_server");
    ros::NodeHandle nh;
    ros::ServiceServer ros_tutorial_service = nh.advertiseService("ros_tutorial_srv", calculation);
    ROS_INFO("ready srv service!");
    ros::spin();
    return 0;
}