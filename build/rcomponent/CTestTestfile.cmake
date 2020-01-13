# CMake generated Testfile for 
# Source directory: /home/miguel/ws/cpswarm_server/src/rcomponent
# Build directory: /home/miguel/ws/cpswarm_server/build/rcomponent
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rcomponent_rostest_test_rosunit_rcomponent_log.test "/home/miguel/ws/cpswarm_server/build/rcomponent/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/miguel/ws/cpswarm_server/build/rcomponent/test_results/rcomponent/rostest-test_rosunit_rcomponent_log.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/miguel/ws/cpswarm_server/src/rcomponent --package=rcomponent --results-filename test_rosunit_rcomponent_log.xml --results-base-dir \"/home/miguel/ws/cpswarm_server/build/rcomponent/test_results\" /home/miguel/ws/cpswarm_server/src/rcomponent/test/rosunit_rcomponent_log.test ")
subdirs(gtest)
