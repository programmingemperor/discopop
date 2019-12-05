include_directories(
    ../share/include
    )

add_llvm_library(LLVMDPInstrumentationOmission MODULE
  DPInstrumentationOmission.cpp
  InstructionGraph.cpp
  ../share/lib/DPUtils.cpp
    )
