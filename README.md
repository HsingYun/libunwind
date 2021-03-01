# libunwind

A standalone fork from [llvm#libunwind rev: 06c5119c76e9](https://github.com/llvm/llvm-project/tree/main/libunwind)

---

## Unwind library

The unwind library provides a family of `_Unwind_*` functions implementing the language-neutral stack unwinding portion of the Itanium C++ ABI ([Level I](https://itanium-cxx-abi.github.io/cxx-abi/abi-eh.html#base-abi)). It is a dependency of the C++ ABI library, and sometimes is a dependency of other runtimes.

LLVM’s unwinder library is part of the llvm-project git repository. To build it, pass `-DLLVM_ENABLE_PROJECTS=libunwind` to the cmake invocation.

If using libc++abi, you may need to configure it to use libunwind rather than libgcc_s by passing `-DLIBCXXABI_USE_LLVM_UNWINDER=YES` to cmake. If libc++abi is configured to use some version of libunwind, that library will be implicitly linked into binaries that link to libc++abi.

More: [libunwind LLVM Unwinder](libunwind/docs/index.rst)