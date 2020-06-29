add_executable(motion_planning_api_edit src/motion_planning_api_edit.cpp)
target_link_libraries(motion_planning_api_edit ${catkin_LIBRARIES} ${Boost_LIBRARIES})
install(TARGETS motion_planning_api_edit DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
