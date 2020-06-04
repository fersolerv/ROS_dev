#include "../include/husky_controller.hpp"

using namespace std;
auto husky_cmd = new HuskyController();

void odomPoseCallback(const nav_msgs::Odometry &odom);

int main(int argc, char **argv)
{
  ros::init(argc, argv, "husky_robot");
  ros::NodeHandle husky;

  vel_pub = husky.advertise<geometry_msgs::Twist>("/husky_velocity_controller/cmd_vel", 10);
  odom_pub = husky.advertise<nav_msgs::Odometry>("/husky_velocity_controller/odom", 10);
  odom_sub = husky.subscribe("/husky_velocity_controller/odom", 10, odomPoseCallback);

  // Linear velocities
  auto speed = 0.5;
  auto distance = 8;
  auto isFoward = true;

  // Angular velocities
  auto angular_speed = 30.0;
  auto angle = 90.0;
  auto clockwise = 0;

  husky_cmd->move(speed, distance, isFoward);
  husky_cmd->rotate(husky_cmd->degrees2radians(angular_speed), husky_cmd->degrees2radians(angle), clockwise);
  husky_cmd->move(speed, distance, isFoward);
  husky_cmd->rotate(husky_cmd->degrees2radians(angular_speed), husky_cmd->degrees2radians(angle), clockwise);
  husky_cmd->move(speed, distance, isFoward);
  husky_cmd->rotate(husky_cmd->degrees2radians(angular_speed), husky_cmd->degrees2radians(angle), clockwise);
  husky_cmd->move(speed, distance, isFoward);

  return 0;
}


void odomPoseCallback(const nav_msgs::Odometry& odom)
{
  ROS_INFO_STREAM("Position x: " << odom.pose.pose.position.x);
  ROS_INFO_STREAM("Position y: " << odom.pose.pose.position.y);
  cout << " " << endl;
}