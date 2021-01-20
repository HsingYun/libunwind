# Copyright 2020, HsingYun <iakext@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# libunwind require cmake version >= 3.13.4
cmake_minimum_required(VERSION 3.13.4)

# project name
project(libunwind)

# standalone build without llvm
set(LIBUNWIND_STANDALONE_BUILD 1)

# add dummy cmake module path
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/libcxx/cmake/Modules")

# add llvm libunwind
add_subdirectory(libunwind)

# special compile flag for libunwind
target_compile_options(unwind_shared PUBLIC -Wno-strict-aliasing -Wno-pedantic -Wno-sign-conversion)
target_compile_options(unwind_static PUBLIC -Wno-strict-aliasing -Wno-pedantic -Wno-sign-conversion)

# add missing include path
target_include_directories(unwind_shared PUBLIC libunwind/include)
target_include_directories(unwind_static PUBLIC libunwind/include)