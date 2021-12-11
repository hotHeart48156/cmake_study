project(component)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/../builder)
set(DEPENDS  Torch TorchVision )
include(library)