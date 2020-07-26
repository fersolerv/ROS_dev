# Install script for directory: /home/parallels/catkin_ws/src/battery_simulator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/parallels/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/action" TYPE FILE FILES
    "/home/parallels/catkin_ws/src/battery_simulator/action/battery_sim.action"
    "/home/parallels/catkin_ws/src/battery_simulator/action/Timer.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/msg" TYPE FILE FILES
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simAction.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simActionGoal.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simActionResult.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simActionFeedback.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simGoal.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simResult.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/battery_simFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/msg" TYPE FILE FILES
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerAction.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerActionGoal.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerActionResult.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerActionFeedback.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerGoal.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerResult.msg"
    "/home/parallels/catkin_ws/devel/share/battery_simulator/msg/TimerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/cmake" TYPE FILE FILES "/home/parallels/catkin_ws/build/battery_simulator/catkin_generated/installspace/battery_simulator-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/parallels/catkin_ws/devel/include/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/parallels/catkin_ws/devel/share/roseus/ros/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/parallels/catkin_ws/devel/share/common-lisp/ros/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/parallels/catkin_ws/devel/share/gennodejs/ros/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/parallels/catkin_ws/devel/lib/python2.7/dist-packages/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/parallels/catkin_ws/devel/lib/python2.7/dist-packages/battery_simulator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/parallels/catkin_ws/build/battery_simulator/catkin_generated/installspace/battery_simulator.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/cmake" TYPE FILE FILES "/home/parallels/catkin_ws/build/battery_simulator/catkin_generated/installspace/battery_simulator-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator/cmake" TYPE FILE FILES
    "/home/parallels/catkin_ws/build/battery_simulator/catkin_generated/installspace/battery_simulatorConfig.cmake"
    "/home/parallels/catkin_ws/build/battery_simulator/catkin_generated/installspace/battery_simulatorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/battery_simulator" TYPE FILE FILES "/home/parallels/catkin_ws/src/battery_simulator/package.xml")
endif()

