execute_process(COMMAND "/home/sytasch/ROS/turtle/catkin_ws/build/intro_to_ros/bv80bot/neato_robot/neato_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sytasch/ROS/turtle/catkin_ws/build/intro_to_ros/bv80bot/neato_robot/neato_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
