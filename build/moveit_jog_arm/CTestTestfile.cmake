# CMake generated Testfile for 
# Source directory: /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm
# Build directory: /home/jessparr/ws_moveit/build/moveit_jog_arm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_moveit_jog_arm_rostest_test_launch_jog_arm_halt_msg_test.test "/home/jessparr/ws_moveit/build/moveit_jog_arm/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results/moveit_jog_arm/rostest-test_launch_jog_arm_halt_msg_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm --package=moveit_jog_arm --results-filename test_launch_jog_arm_halt_msg_test.xml --results-base-dir \"/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results\" /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm/test/launch/jog_arm_halt_msg_test.test ")
add_test(_ctest_moveit_jog_arm_rostest_test_launch_jog_arm_msg_reception_test.test "/home/jessparr/ws_moveit/build/moveit_jog_arm/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results/moveit_jog_arm/rostest-test_launch_jog_arm_msg_reception_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm --package=moveit_jog_arm --results-filename test_launch_jog_arm_msg_reception_test.xml --results-base-dir \"/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results\" /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm/test/launch/jog_arm_msg_reception_test.test ")
add_test(_ctest_moveit_jog_arm_rostest_test_launch_jog_arm_vel_accel_limits_test.test "/home/jessparr/ws_moveit/build/moveit_jog_arm/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results/moveit_jog_arm/rostest-test_launch_jog_arm_vel_accel_limits_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm --package=moveit_jog_arm --results-filename test_launch_jog_arm_vel_accel_limits_test.xml --results-base-dir \"/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results\" /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm/test/launch/jog_arm_vel_accel_limits_test.test ")
add_test(_ctest_moveit_jog_arm_rostest_test_launch_jog_arm_drift_dimensions_service_test.test "/home/jessparr/ws_moveit/build/moveit_jog_arm/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results/moveit_jog_arm/rostest-test_launch_jog_arm_drift_dimensions_service_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm --package=moveit_jog_arm --results-filename test_launch_jog_arm_drift_dimensions_service_test.xml --results-base-dir \"/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results\" /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm/test/launch/jog_arm_drift_dimensions_service_test.test ")
add_test(_ctest_moveit_jog_arm_rostest_test_jog_cpp_interface_test.test "/home/jessparr/ws_moveit/build/moveit_jog_arm/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results/moveit_jog_arm/rostest-test_jog_cpp_interface_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm --package=moveit_jog_arm --results-filename test_jog_cpp_interface_test.xml --results-base-dir \"/home/jessparr/ws_moveit/build/moveit_jog_arm/test_results\" /home/jessparr/ws_moveit/src/moveit/moveit_experimental/moveit_jog_arm/test/jog_cpp_interface_test.test ")
subdirs("gtest")
