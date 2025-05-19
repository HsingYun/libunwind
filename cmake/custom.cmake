# Copyright 2025, HsingYun <iakext@gmail.com>
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

# libunwind cmake helper tool
function(unwind_target_adjust)
    set(multiValueArgs TARGETS ADD_SOURCES REMOVE_SOURCES ADD_COMPILE_OPTIONS REMOVE_COMPILE_OPTIONS)
    cmake_parse_arguments(
            ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN}
    )
    foreach (ARG_TARGET ${ARG_TARGETS})
        get_target_property(TARGET_SOURCES ${ARG_TARGET} SOURCES)
        get_target_property(TARGET_COMPILE_OPTIONS ${ARG_TARGET} COMPILE_OPTIONS)
        foreach (ARG_ADD_SOURCE ${ARG_ADD_SOURCES})
            list(APPEND TARGET_SOURCES ${ARG_ADD_SOURCE})
        endforeach ()
        foreach (ARG_REMOVE_SOURCE ${ARG_REMOVE_SOURCES})
            list(REMOVE_ITEM TARGET_SOURCES ${ARG_REMOVE_SOURCE})
        endforeach ()
        foreach (ARG_ADD_COMPILE_OPTION ${ARG_ADD_COMPILE_OPTIONS})
            list(APPEND TARGET_COMPILE_OPTIONS ${ARG_ADD_COMPILE_OPTION})
        endforeach ()
        foreach (ARG_REMOVE_COMPILE_OPTION ${ARG_REMOVE_COMPILE_OPTIONS})
            list(REMOVE_ITEM TARGET_COMPILE_OPTIONS ${ARG_REMOVE_COMPILE_OPTION})
        endforeach ()
        set_target_properties(${ARG_TARGET}
                PROPERTIES
                COMPILE_OPTIONS "${TARGET_COMPILE_OPTIONS}"
                SOURCES "${TARGET_SOURCES}"
        )
    endforeach ()
endfunction()