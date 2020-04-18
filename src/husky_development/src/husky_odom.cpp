#include "../include/husky_controller.hpp"

using namespace std;

auto husky_controller = new HuskyController();

ros::Publisher vel_pub;
ros::Subscriber vel_sub;
ros::Publisher odom_pub;
ros::Subscriber odom_sub;

void velocityCallback(const geometry_msgs::Twist& vel);
void odomCallback(const nav_msgs::Odometry& pose);

int main(int argc, char **argv)
{
  double x = 0.15;
  double y = 0.0;
  double th = 0.0;
  double vx = 0.1; // m/sec
  double vy = 0.0;
  double vth = 0.0; // rad/sec

  ros::init(argc, argv, "husky_vel");
  ros::NodeHandle husky_vel;

  vel_pub = husky_vel.advertise<geometry_msgs::Twist>("husky_velocity_controller/cmd_vel", 10);
  vel_sub = husky_vel.subscribe("husky_velocity_controller/cmd_vel", 100, velocityCallback);

  odom_pub = husky_vel.advertise<nav_msgs::Odometry>("/husky_velocity_controller/odom", 10);
  odom_sub = husky_vel.subscribe("/husky_velocity_controller/odom", 100, velocityCallback);

  ros::Rate rate(100.0);
  while(husky_vel.ok())
  {
    geometry_msgs::Twist vel;
    vel.linear.x = vx;
    vel.angular.z = vth;
    vel_pub.publish(vel);
    velocityCallback(vel);

    nav_msgs::Odometry odom;
    odom_pub.publish(odom);
    odomCallback(odom);

    rate.sleep();
  }
  return 0;
}

//////////////////////////////// FUNCTIONS ////////////////////////////////////////////
void velocityCallback(const geometry_msgs::Twist& vel_msg)
{
  ROS_INFO_STREAM("Velocities:" << " linear = " << vel_msg.linear.x<<" angular = " << vel_msg.angular.z);
}

void odomCallback(const nav_msgs::Odometry& pose)
{
  ROS_INFO_STREAM("Pose:" << " X = " << pose.pose.pose.position.x <<" Y = " << pose.pose.pose.position.y);
}
