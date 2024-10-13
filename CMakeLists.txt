cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Add source files
set(SOURCES main.cpp calculator.cpp)

# Add the library (you can choose either static or shared)
add_library(calculator STATIC calculator.cpp)
# Uncomment for shared library instead of static
# add_library(calculator SHARED calculator.cpp)

# Add the executable
add_executable(main ${SOURCES})

# Link the library to the executable
target_link_libraries(main calculator)

# Clean rule
set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES "libcalculator.a;libcalculator.so")
