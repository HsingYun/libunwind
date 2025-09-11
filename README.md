# libunwind

A standalone fork of libunwind from the [llvm-project](https://github.com/llvm/llvm-project/tree/40270e8). Except for the root directory's CMakeLists.txt (and its auxiliary cmake module `./cmake/custom.cmake`), all other files are 100% sourced from the upstream repository without any modifications. The root directory's CMakeLists.txt provides customized modifications to the upstream libunwind, enabling users to seamlessly integrate this libunwind from llvm-project into any CMake project without requiring code alterations.

---

## Unwind library

The unwind library provides a family of `_Unwind_*` functions implementing the language-neutral stack unwinding portion of the Itanium C++ ABI ([Level I](https://itanium-cxx-abi.github.io/cxx-abi/abi-eh.html#base-abi)). It is a dependency of the C++ ABI library, and sometimes is a dependency of other runtimes.

LLVM’s unwinder library is part of the llvm-project git repository. 

More: [libunwind LLVM Unwinder](libunwind/docs/index.rst)