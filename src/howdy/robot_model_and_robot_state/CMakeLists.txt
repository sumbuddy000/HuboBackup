add_executable(robot_model_and_robot_state_edit src/robot_model_and_robot_state_edit.cpp)
target_link_libraries(robot_model_and_robot_state_edit ${catkin_LIBRARIES} ${Boost_LIBRARIES})

install(TARGETS robot_model_and_robot_state_edit DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
