set(SUB_PROJECTS)
message("PROJECT_SOURCE_DIR ${PROJECT_SOURCE_DIR}")
file(GLOB_RECURSE CHILD_DIRS RELATIVE ${PROJECT_SOURCE_DIR}/ ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)
#返回所有文件夹的CMakeLists.txt的相对路径
foreach(SUB_DIR IN ITEMS ${CHILD_DIRS})
	if(
	${SUB_DIR} MATCHES "^build"
	OR
	${SUB_DIR} MATCHES "^install"
	)
		message(STATUS  "skip directory ${SUB_DIR}")
	else()
		get_filename_component(SUB_PROJECT ${SUB_DIR} DIRECTORY)
		message(STATUS  "CONTAINER CHILD PROJECT ${SUB_PROJECT}")
		list(APPEND SUB_PROJECTS ${SUB_PROJECT})
endif()
endforeach()
list(LENGTH SUB_PROJECTS SUB_PROJECTS_LEN)
if(${SUB_PROJECTS_LEN} GREATER 0)
	add_subdirectory(${SUB_PROJECTS})
endif()






