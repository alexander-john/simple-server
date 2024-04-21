cmake_minimum_required(VERSION 3.0)
project(Server)

add_executable(server server.cpp)

target_link_libraries(server wsock32 ws2_32)
