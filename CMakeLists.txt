cmake_minimum_required(VERSION 3.10)
project(codewars_c C)

# Set compiler flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Werror")

# Include source directory for header files
include_directories(${CMAKE_SOURCE_DIR}/src)

# Find Criterion package
find_library(CRITERION criterion REQUIRED)

# Source directories
set(SRC_DIR ${CMAKE_SOURCE_DIR}/src/challenges)
set(TEST_DIR ${CMAKE_SOURCE_DIR}/tests)

# Collect all source files
file(GLOB CHALLENGE_SOURCES "${SRC_DIR}/*.c")
file(GLOB TEST_SOURCES "${TEST_DIR}/*.test.c")

# Exclude files with main() from test builds
list(FILTER CHALLENGE_SOURCES EXCLUDE REGEX ".*test\\.c$")

# Create main executable
add_executable(main ${SRC_DIR}/test.c)

# Create test executable
add_executable(run_tests ${TEST_SOURCES} ${CHALLENGE_SOURCES})
target_link_libraries(run_tests ${CRITERION})

# Add testing capabilities
enable_testing()
add_test(NAME unit_tests COMMAND run_tests)

# Custom target for running tests
add_custom_target(test_verbose
    COMMAND ${CMAKE_BINARY_DIR}/run_tests --verbose
    DEPENDS run_tests
)
