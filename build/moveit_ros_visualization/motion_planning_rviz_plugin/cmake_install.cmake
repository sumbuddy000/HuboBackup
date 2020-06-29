# Install script for directory: /home/jessparr/ws_moveit/src/moveit/moveit_ros/visualization/motion_planning_rviz_plugin

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jessparr/ws_moveit/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jessparr/ws_moveit/src/moveit/moveit_ros/visualization/motion_planning_rviz_plugin/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin.so.1.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_motion_planning_rviz_plugin.so.1.1.0"
    "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_motion_planning_rviz_plugin.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin.so.1.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_perception/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_planning_interface/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_manipulation/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_move_group/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_robot_interaction/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_warehouse/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_planning/lib:/opt/ros/melodic/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/jessparr/ws_moveit/devel/.private/moveit_core/lib:/home/jessparr/ws_moveit/devel/.private/geometric_shapes/lib:/opt/ros/melodic/share/rviz/cmake/../../../lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin_core.so.1.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin_core.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_motion_planning_rviz_plugin_core.so.1.1.0"
    "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_motion_planning_rviz_plugin_core.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin_core.so.1.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_motion_planning_rviz_plugin_core.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/jessparr/ws_moveit/devel/.private/moveit_ros_visualization/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_perception/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_planning_interface/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_manipulation/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_move_group/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_robot_interaction/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_warehouse/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_planning/lib:/opt/ros/melodic/lib:/home/jessparr/ws_moveit/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/jessparr/ws_moveit/devel/.private/moveit_core/lib:/home/jessparr/ws_moveit/devel/.private/geometric_shapes/lib:/opt/ros/melodic/share/rviz/cmake/../../../lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()
