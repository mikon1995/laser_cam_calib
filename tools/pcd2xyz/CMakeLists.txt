cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(MY_GRAND_PROJECT)

find_package(PCL 1.8 REQUIRED COMPONENTS common io visualization filters)

include_directories(${PCL_INCLUDE_DIRS})

link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})

add_executable(pcd2xyz pcd2xyz.cpp)

target_link_libraries(pcd2xyz ${PCL_COMMON_LIBRARIES} ${PCL_IO_LIBRARIES} ${PCL_VISUALIZATION_LIBRARIES} ${PCL_FILTERS_LIBRARIES})
