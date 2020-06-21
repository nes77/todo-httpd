cmake_minimum_required(VERSION 3.16)
project(todo_http C)

set(CMAKE_C_STANDARD 11)

find_library(MHTD NAMES microhttpd REQUIRED)
find_library(SQLite3 NAMES sqlite3 REQUIRED)

add_executable(todo_http main.c)