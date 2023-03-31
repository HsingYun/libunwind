# libunwind

A standalone fork from [llvm#libunwind rev: c98372725b5a](https://github.com/llvm/llvm-project/tree/main/libunwind)

---

## Unwind library

The unwind library provides a family of `_Unwind_*` functions implementing the language-neutral stack unwinding portion of the Itanium C++ ABI ([Level I](https://itanium-cxx-abi.github.io/cxx-abi/abi-eh.html#base-abi)). It is a dependency of the C++ ABI library, and sometimes is a dependency of other runtimes.

LLVM’s unwinder library is part of the llvm-project git repository. 

More: [libunwind LLVM Unwinder](libunwind/docs/index.rst)