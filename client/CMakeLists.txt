cmake_minimum_required(VERSION 3.0)
project(Client)

add_executable(client client.cpp)

target_link_libraries(client wsock32 ws2_32)
