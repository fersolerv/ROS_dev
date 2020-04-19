#ifndef HUSKY_CONTROLLER_H
#define HUSKY_CONTROLLER_H

#include <ros/ros.h>
#include <stdlib.h>
#include <eigen3/Eigen/Dense>
#include <geometry_msgs/Twist.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/String.h>

using namespace std;
using namespace Eigen;
const double PI = 3.14159265359;

ros::Publisher vel_pub;
ros::Publisher odom_pub;
ros::Subscriber odom_sub;

class HuskyController
{

  public:
    HuskyController(){}

    void move(double speed, double distance, bool isFoward)
    {
      geometry_msgs::Twist vel_msg;
      if(isFoward)
        vel_msg.linear.x = abs(speed);
      else
        vel_msg.linear.x = -abs(speed);
      vel_msg.linear.y = 0.0;
      vel_msg.linear.z = 0.0;
      vel_msg.angular.x = 0.0;
      vel_msg.angular.y = 0.0;
      vel_msg.angular.z = 0.0;

      double t0 = ros::Time::now().toSec();
      double current_distance = 0.0;
      ros::Rate loop_rate(10);
      do
      {
        vel_pub.publish(vel_msg);
        double t1 = ros::Time::now().toSec();
        current_distance = speed * (t1 - t0);
        cout << "Current Distance " << current_distance << endl;
        ros::spinOnce();
        loop_rate.sleep();
      } while (current_distance < distance);
      vel_msg.linear.x = 0.0;
      vel_pub.publish(vel_msg);
    }

    void rotate(double angular_speed, double relative_angle, bool clockwise)
    {
      geometry_msgs::Twist vel_msg;
      vel_msg.linear.x = 0.0;
      vel_msg.linear.y = 0.0;
      vel_msg.linear.z = 0.0;
      vel_msg.angular.x = 0.0;
      vel_msg.angular.y = 0.0;

      if (clockwise)
        vel_msg.angular.z = -abs(angular_speed);
      else
        vel_msg.angular.z = abs(angular_speed);

      double current_angle = 0.0;
      double t0 = ros::Time::now().toSec();
      ros::Rate loop_rate(10);
      do
      {
        vel_pub.publish(vel_msg);
        double t1 = ros::Time::now().toSec();
        current_angle = angular_speed * (t1 - t0);
        ros::spinOnce();
        loop_rate.sleep();
      } while (current_angle < relative_angle);
      vel_msg.angular.z = 0.0;
      vel_pub.publish(vel_msg);
    }

    double degrees2radians(double angle_in_degrees)
    {
      double radians;
      radians = angle_in_degrees * PI / 180.0;
      return radians;
    }

    double getDistance(double x1, double y1, double x2, double y2)
    {
      double distance = sqrt( ((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));
      return distance;
    }

    double computeOdometry(double current_time, double last_time, double vx, double vy, double th_z, double vth_z)
    {
      double dt = (current_time - last_time);
      double dx = (vx * cos(th_z) - vy * sin(th_z)) * dt;
      double dy = (vx * sin(th_z) + vy * cos(th_z)) * dt;
      double dth_z = vth_z * dt;
      return dx, dy, dth_z;
    }

};

#endif // HUSKY_CONTROLLER_H
