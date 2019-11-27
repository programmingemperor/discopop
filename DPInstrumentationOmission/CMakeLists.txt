include_directories(
    ../share/include
    )

add_llvm_library(LLVMDPInstrumentationOmission MODULE
  DPInstrumentationOmission.cpp
    )
