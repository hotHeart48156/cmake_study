cmake_minimum_required(VERSION 3.16)
project(Test)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/builder)
set(DEPENDS  expat OpenCV  TorchVision )
# include(have_child_project)
include(executable)
