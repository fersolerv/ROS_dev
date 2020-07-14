cmake_minimum_required(VERSION 2.8.3)
project(husky_vel)

add_definitions( -std=c++11 -Wall -Wextra -Wpedantic )

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  roscpp
  rospy
  std_msgs
  tf
  nav_msgs
)

add_message_files(
  FILES
  HuskyVelocity.msg
)

add_service_files(
  FILES
  StopHusky.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include_directories(${EIGEN_INCLUDE_DIRS})

catkin_package(
  LIBRARIES husky_development
  CATKIN_DEPENDS
    geometry_msgs
    roscpp
    rospy
    std_msgs
    message_runtime
    nav_msgs
    tf
  DEPENDS system_lib
)


include_directories(
  ${catkin_INCLUDE_DIRS}/include
  ${catkin_SOURCE_DIRS}/src
)

add_executable(husky_move src/husky_robot.cpp)
target_link_libraries (husky_move ${catkin_LIBRARIES})
add_dependencies(husky_move husky_vel)