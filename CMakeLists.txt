
cmake_minimum_required(VERSION 3.10)
project(proj2)

        # Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)


include_directories(${CMAKE_SOURCE_DIR}/include)  # Add if you have custom headers

# Source files

file(GLOB SOURCES
${CMAKE_SOURCE_DIR}/src/*.c
${CMAKE_SOURCE_DIR}/src/*.cpp
    ${CMAKE_SOURCE_DIR}/src/tt.cpp
)
add_executable(proj2 ${SOURCES})

# Find packages
find_package(OpenGL REQUIRED)

find_package(glfw3 REQUIRED)  # Uncomment if you use GLFW

# Include directories



# Add the executable


# Link libraries
# target_link_libraries(proj2 ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES})
target_link_libraries(proj2 ${OPENGL_LIBRARIES} glfw)  # Uncomment if you use GLFW



#####\#pp
# cmake_minimum_required(VERSION 3.10)
# project(proj2)

# # Set the C++ standard
# set(CMAKE_CXX_STANDARD 11)

# # Include directories
# include_directories(${CMAKE_SOURCE_DIR}/include)
# ###

# # find_package(OpenGL REQUIRED)

# include_directories(${GLUT_INCLUDE_DIRS} ${OPENGL_INCLUDE_DIRS})

# ##

# # Source files
# file(GLOB SOURCES
#     # ${CMAKE_SOURCE_DIR}/src/*.c
#     # ${CMAKE_SOURCE_DIR}/src/*.cpp
#     ${CMAKE_SOURCE_DIR}/tt.cpp
# )

# # Add the executable
# # add_executable(MyOpenGLProject ${SOURCES})
# add_executable(proj2 tt.cpp)


# # Link libraries
# find_package(OpenGL REQUIRED)
# find_package(glfw3 REQUIRED)
# find_package(GLUT REQUIRED)

# target_link_libraries(proj2 ${OPENGL_LIBRARIES} glfw)
# target_link_libraries(proj2 ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES})
####%%5333




