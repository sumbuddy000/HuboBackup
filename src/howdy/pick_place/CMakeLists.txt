add_executable(pick_place_edit src/pick_place_edit.cpp)
target_link_libraries(pick_place_edit ${catkin_LIBRARIES} ${Boost_LIBRARIES})
install(TARGETS pick_place_edit DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
