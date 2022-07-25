; ModuleID = 'instrumented.ll'
source_filename = "reduction.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.arr = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %arr = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %a, align 4, !dbg !13
  store i32 1, i32* %a, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %c, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i32, i32* %a, align 4, !dbg !17
  store i32 %0, i32* %c, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %b, metadata !19, metadata !DIExpression()), !dbg !20
  %1 = load i32, i32* %a, align 4, !dbg !21
  store i32 %1, i32* %b, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata [5 x i32]* %arr, metadata !23, metadata !DIExpression()), !dbg !27
  %2 = bitcast [5 x i32]* %arr to i8*, !dbg !27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([5 x i32]* @__const.main.arr to i8*), i64 20, i1 false), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !32
  %cmp = icmp slt i32 %3, 5, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  call void @add_instr_rec(i32 11, i64 1, i32 0)
  call void @incr_loop_counter(i32 1)
  %4 = load i32, i32* %c, align 4, !dbg !36
  %add = add nsw i32 %4, 1, !dbg !38
  call void @add_instr_rec(i32 11, i64 1, i32 1)
  store i32 %add, i32* %c, align 4, !dbg !39
  br label %for.inc, !dbg !40

  --- rust llvm comparison

  %32 = load i32, i32* %a, align 4, !dbg !595
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1), !dbg !595
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !595
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !595
  %36 = call i1 @llvm.expect.i1(i1 %35, i1 false), !dbg !595
  br i1 %36, label %panic, label %bb8, !dbg !595

bb8:                                              ; preds = %bb7
  store i32 %34, i32* %a, align 4, !dbg !596

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !41
  %inc = add nsw i32 %5, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %a, align 4, !dbg !45
  %6 = load i32, i32* %retval, align 4, !dbg !46
  call void @loop_counter_output(), !dbg !46
  ret i32 %6, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare void @add_instr_rec(i32, i64, i32)

declare void @add_ptr_instr_rec(i32, i64, i32, i64)

declare void @incr_loop_counter(i32)

declare void @loop_counter_output()






------




simonschmalfuss@gpu-server:~/discopop/rust/CU_comp$ ls
a.out               FileMapping.txt   instrumented.ll.ll       OriginalVariables.txt  reduction_meta.txt
a.out_dep.txt       inst.ll           loop_counter_output.txt  out.ll                 reduction.rs
Data.xml            instrumented.ll   loop_meta.txt            reduction.ll           reduction.txt
DP_CUIDCounter.txt  instrumented_.ll  old_dep.txt              reduction_.ll
simonschmalfuss@gpu-server:~/discopop/rust/CU_comp$ cat inst.ll 
; ModuleID = 'instrumented_.ll'
source_filename = "reduction.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock" = type { [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::option::Option<usize>::Some" = type { [1 x i64], i64, [0 x i64] }
%"core::slice::Repr<i32>" = type { [2 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* } { void (i8**)* @_ZN4core3ptr13drop_in_place17hcdf5f187d0cf4982E, i64 8, i64 8, i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hfa3a1cd97b285fe9E", i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hfa3a1cd97b285fe9E", i32 (i8*)* @_ZN4core3ops8function6FnOnce9call_once17h3ac55c54819e6932E }, align 8, !dbg !0
@str.1 = internal constant [12 x i8] c"reduction.rs"
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@panic_loc.3 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.2 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 11, i32 13 }, align 8
@str.4 = internal constant [33 x i8] c"attempt to subtract with overflow"
@panic_loc.5 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.4 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 12, i32 13 }, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; Function Attrs: uwtable
define hidden i64 @_ZN3std2rt10lang_start17h447b166fa1bbfa61E(void ()* nonnull, i64, i8**) unnamed_addr #0 !dbg !24 {
start:
  %_7 = alloca i8*, align 8
  %argv = alloca i8**, align 8
  %argc = alloca i64, align 8
  %main = alloca void ()*, align 8
  store void ()* %0, void ()** %main, align 8
  call void @llvm.dbg.declare(metadata void ()** %main, metadata !37, metadata !DIExpression()), !dbg !39
  store i64 %1, i64* %argc, align 8
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !40, metadata !DIExpression()), !dbg !39
  store i8** %2, i8*** %argv, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv, metadata !41, metadata !DIExpression()), !dbg !39
  %3 = bitcast i8** %_7 to void ()**, !dbg !42
  %4 = load void ()*, void ()** %main, align 8, !dbg !42, !nonnull !4
  store void ()* %4, void ()** %3, align 8, !dbg !42
  %5 = bitcast i8** %_7 to {}*, !dbg !43
  %6 = load i64, i64* %argc, align 8, !dbg !44
  %7 = load i8**, i8*** %argv, align 8, !dbg !45
  %8 = call i64 @_ZN3std2rt19lang_start_internal17hce01021c3c1cf20dE({}* nonnull %5, [3 x i64]* noalias readonly dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* }* @vtable.0 to [3 x i64]*), i64 %6, i8** %7), !dbg !46
  br label %bb1, !dbg !46

bb1:                                              ; preds = %start
  ret i64 %8, !dbg !47
}

; Function Attrs: uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hfa3a1cd97b285fe9E"(i8** noalias readonly dereferenceable(8)) unnamed_addr #0 !dbg !48 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !54, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 0)), !dbg !55
  %1 = load i8**, i8*** %arg0, align 8, !dbg !56, !nonnull !4
  %2 = bitcast i8** %1 to void ()**, !dbg !56
  %3 = load void ()*, void ()** %2, align 8, !dbg !56, !nonnull !4
  call void %3(), !dbg !56
  br label %bb1, !dbg !56

bb1:                                              ; preds = %start
  %4 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6ed6329d53f6babeE"(), !dbg !56
  br label %bb2, !dbg !56

bb2:                                              ; preds = %bb1
  ret i32 %4, !dbg !57
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h45f1cf928f91d05aE(i8* noalias readonly dereferenceable(1)) unnamed_addr #1 !dbg !58 {
start:
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !70, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %self, align 8, !dbg !72, !nonnull !4
  %2 = load i8, i8* %1, align 1, !dbg !72
  %3 = zext i8 %2 to i32, !dbg !72
  ret i32 %3, !dbg !73
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17hf2433d5fe01eed32E"(i64* noalias readonly dereferenceable(8), i64) unnamed_addr #1 !dbg !74 {
start:
  %n_as_t = alloca i64, align 8
  %_6 = alloca i64*, align 8
  %_3 = alloca i64, align 8
  %n = alloca i64, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  call void @llvm.dbg.declare(metadata i64** %self, metadata !94, metadata !DIExpression()), !dbg !95
  store i64 %1, i64* %n, align 8
  call void @llvm.dbg.declare(metadata i64* %n, metadata !96, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i64* %n_as_t, metadata !97, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %n, align 8, !dbg !100
  %3 = call i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h2cc47ee77e12255cE"(i64 %2), !dbg !101
  store i64 %3, i64* %_3, align 8, !dbg !101
  br label %bb1, !dbg !101

bb1:                                              ; preds = %start
  store i64* %_3, i64** %_6, align 8, !dbg !101
  %4 = load i64, i64* %_3, align 8, !dbg !102
  store i64 %4, i64* %n_as_t, align 8, !dbg !102
  %5 = load i64*, i64** %self, align 8, !dbg !103, !nonnull !4
  %6 = load i64, i64* %5, align 8, !dbg !103
  %7 = load i64, i64* %n_as_t, align 8, !dbg !104
  %8 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h594d6300cb62e4bcE"(i64 %6, i64 %7), !dbg !103
  %9 = extractvalue { i64, i64 } %8, 0, !dbg !103
  %10 = extractvalue { i64, i64 } %8, 1, !dbg !103
  br label %bb2, !dbg !103

bb2:                                              ; preds = %bb1
  %11 = insertvalue { i64, i64 } undef, i64 %9, 0, !dbg !105
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1, !dbg !105
  ret { i64, i64 } %12, !dbg !105
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb4203fcb62247c1dE"(i64* noalias readonly dereferenceable(8), i64* noalias readonly dereferenceable(8)) unnamed_addr #1 !dbg !106 {
start:
  %other = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  call void @llvm.dbg.declare(metadata i64** %self, metadata !114, metadata !DIExpression()), !dbg !115
  store i64* %1, i64** %other, align 8
  call void @llvm.dbg.declare(metadata i64** %other, metadata !116, metadata !DIExpression()), !dbg !115
  %2 = load i64*, i64** %self, align 8, !dbg !117, !nonnull !4
  %3 = load i64, i64* %2, align 8, !dbg !117
  %4 = load i64*, i64** %other, align 8, !dbg !118, !nonnull !4
  %5 = load i64, i64* %4, align 8, !dbg !118
  %6 = icmp ult i64 %3, %5, !dbg !117
  ret i1 %6, !dbg !119
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h312375f473e659e1E(<4 x i64>* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !120 {
start:
  br label %bb1, !dbg !135

bb1:                                              ; preds = %start
  ret void, !dbg !136
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h5353db0349229fa3E(%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !137 {
start:
  br label %bb1, !dbg !148

bb1:                                              ; preds = %start
  ret void, !dbg !149
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem13uninitialized17hdef4b5549e469003E() unnamed_addr #1 !dbg !150 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !155
  br label %bb1, !dbg !155

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !156
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem4swap17h6ba622a47cf96402E(i64* dereferenceable(8), i64* dereferenceable(8)) unnamed_addr #1 !dbg !157 {
start:
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !161, metadata !DIExpression()), !dbg !162
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !163, metadata !DIExpression()), !dbg !162
  %2 = load i64*, i64** %x, align 8, !dbg !164, !nonnull !4
  %3 = load i64*, i64** %y, align 8, !dbg !166, !nonnull !4
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h5b2d88b0fc8c9977E(i64* %2, i64* %3), !dbg !167
  br label %bb1, !dbg !167

bb1:                                              ; preds = %start
  ret void, !dbg !168
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem7size_of17h4e659190e8eeca7cE() unnamed_addr #1 !dbg !169 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 32, i64* %tmp_ret, align 8, !dbg !170
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !170
  br label %bb1, !dbg !170

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !171
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem7size_of17hfe3c5079ee2fc825E() unnamed_addr #1 !dbg !172 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 8, i64* %tmp_ret, align 8, !dbg !173
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !173
  br label %bb1, !dbg !173

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !174
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h594d6300cb62e4bcE"(i64, i64) unnamed_addr #1 !dbg !175 {
start:
  %b = alloca i8, align 1
  %a = alloca i64, align 8
  %_0 = alloca { i64, i64 }, align 8
  %rhs = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  call void @llvm.dbg.declare(metadata i64* %self, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %1, i64* %rhs, align 8
  call void @llvm.dbg.declare(metadata i64* %rhs, metadata !183, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i64* %a, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8* %b, metadata !187, metadata !DIExpression()), !dbg !188
  %2 = load i64, i64* %self, align 8, !dbg !189
  %3 = load i64, i64* %rhs, align 8, !dbg !190
  %4 = call { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h7ab30bfe5b2e7d93E"(i64 %2, i64 %3), !dbg !189
  %5 = extractvalue { i64, i8 } %4, 0, !dbg !189
  %6 = extractvalue { i64, i8 } %4, 1, !dbg !189
  %7 = trunc i8 %6 to i1, !dbg !189
  br label %bb1, !dbg !189

bb1:                                              ; preds = %start
  store i64 %5, i64* %a, align 8, !dbg !191
  %8 = zext i1 %7 to i8, !dbg !192
  store i8 %8, i8* %b, align 1, !dbg !192
  %9 = load i8, i8* %b, align 1, !dbg !193, !range !194
  %10 = trunc i8 %9 to i1, !dbg !193
  br i1 %10, label %bb2, label %bb3, !dbg !195

bb2:                                              ; preds = %bb1
  %11 = bitcast { i64, i64 }* %_0 to i64*, !dbg !196
  store i64 0, i64* %11, align 8, !dbg !196
  br label %bb4, !dbg !195

bb3:                                              ; preds = %bb1
  %12 = load i64, i64* %a, align 8, !dbg !197
  %13 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*, !dbg !198
  %14 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %13, i32 0, i32 1, !dbg !198
  store i64 %12, i64* %14, align 8, !dbg !198
  %15 = bitcast { i64, i64 }* %_0 to i64*, !dbg !198
  store i64 1, i64* %15, align 8, !dbg !198
  br label %bb4, !dbg !195

bb4:                                              ; preds = %bb3, %bb2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0, !dbg !199
  %17 = load i64, i64* %16, align 8, !dbg !199, !range !200
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1, !dbg !199
  %19 = load i64, i64* %18, align 8, !dbg !199
  %20 = insertvalue { i64, i64 } undef, i64 %17, 0, !dbg !199
  %21 = insertvalue { i64, i64 } %20, i64 %19, 1, !dbg !199
  ret { i64, i64 } %21, !dbg !199
}

; Function Attrs: inlinehint uwtable
define internal { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h7ab30bfe5b2e7d93E"(i64, i64) unnamed_addr #1 !dbg !201 {
start:
  %tmp_ret = alloca { i64, i8 }, align 8
  %b = alloca i8, align 1
  %a = alloca i64, align 8
  %_0 = alloca { i64, i8 }, align 8
  %rhs = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  call void @llvm.dbg.declare(metadata i64* %self, metadata !208, metadata !DIExpression()), !dbg !209
  store i64 %1, i64* %rhs, align 8
  call void @llvm.dbg.declare(metadata i64* %rhs, metadata !210, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i64* %a, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8* %b, metadata !214, metadata !DIExpression()), !dbg !215
  %2 = load i64, i64* %self, align 8, !dbg !216
  %3 = load i64, i64* %rhs, align 8, !dbg !218
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 %3), !dbg !219
  %5 = extractvalue { i64, i1 } %4, 0, !dbg !219
  %6 = extractvalue { i64, i1 } %4, 1, !dbg !219
  %7 = zext i1 %6 to i8, !dbg !219
  %8 = bitcast { i64, i8 }* %tmp_ret to i64*, !dbg !219
  store i64 %5, i64* %8, align 8, !dbg !219
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1, !dbg !219
  store i8 %7, i8* %9, align 1, !dbg !219
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 0, !dbg !219
  %11 = load i64, i64* %10, align 8, !dbg !219
  %12 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1, !dbg !219
  %13 = load i8, i8* %12, align 8, !dbg !219, !range !194
  %14 = trunc i8 %13 to i1, !dbg !219
  br label %bb1, !dbg !219

bb1:                                              ; preds = %start
  store i64 %11, i64* %a, align 8, !dbg !220
  %15 = zext i1 %14 to i8, !dbg !221
  store i8 %15, i8* %b, align 1, !dbg !221
  %16 = load i64, i64* %a, align 8, !dbg !222
  %17 = load i8, i8* %b, align 1, !dbg !223, !range !194
  %18 = trunc i8 %17 to i1, !dbg !223
  %19 = bitcast { i64, i8 }* %_0 to i64*, !dbg !224
  store i64 %16, i64* %19, align 8, !dbg !224
  %20 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1, !dbg !224
  %21 = zext i1 %18 to i8, !dbg !224
  store i8 %21, i8* %20, align 1, !dbg !224
  %22 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 0, !dbg !225
  %23 = load i64, i64* %22, align 8, !dbg !225
  %24 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1, !dbg !225
  %25 = load i8, i8* %24, align 8, !dbg !225, !range !194
  %26 = trunc i8 %25 to i1, !dbg !225
  %27 = insertvalue { i64, i8 } undef, i64 %23, 0, !dbg !225
  %28 = zext i1 %26 to i8, !dbg !225
  %29 = insertvalue { i64, i8 } %27, i8 %28, 1, !dbg !225
  ret { i64, i8 } %29, !dbg !225
}

; Function Attrs: uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h3ac55c54819e6932E(i8* nonnull) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !226 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %arg1 = alloca {}, align 1
  %arg0 = alloca i8*, align 8
  store i8* %0, i8** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8** %arg0, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata {}* %arg1, metadata !238, metadata !DIExpression()), !dbg !237
  %1 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hfa3a1cd97b285fe9E"(i8** dereferenceable(8) %arg0)
          to label %bb1 unwind label %cleanup, !dbg !239

bb1:                                              ; preds = %start
  br label %bb2, !dbg !239

bb2:                                              ; preds = %bb1
  ret i32 %1, !dbg !239

bb3:                                              ; preds = %cleanup
  br label %bb4, !dbg !239

bb4:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !239
  %3 = load i8*, i8** %2, align 8, !dbg !239
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !239
  %5 = load i32, i32* %4, align 4, !dbg !239
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !239
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !239
  resume { i8*, i32 } %7, !dbg !239

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; Function Attrs: uwtable
define internal void @_ZN4core3ptr13drop_in_place17hcdf5f187d0cf4982E(i8**) unnamed_addr #0 !dbg !240 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !247, metadata !DIExpression()), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17h8e8f08e906c887d6E(i64*, i64*, i64) unnamed_addr #1 !dbg !250 {
start:
  %len = alloca i64, align 8
  %y2 = alloca i8*, align 8
  %x1 = alloca i8*, align 8
  %count = alloca i64, align 8
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !254, metadata !DIExpression()), !dbg !255
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !256, metadata !DIExpression()), !dbg !255
  store i64 %2, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !257, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %x1, metadata !258, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i8** %y2, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i64* %len, metadata !265, metadata !DIExpression()), !dbg !267
  %3 = load i64*, i64** %x, align 8, !dbg !268
  %4 = bitcast i64* %3 to i8*, !dbg !268
  store i8* %4, i8** %x1, align 8, !dbg !268
  %5 = load i64*, i64** %y, align 8, !dbg !269
  %6 = bitcast i64* %5 to i8*, !dbg !269
  store i8* %6, i8** %y2, align 8, !dbg !269
  %7 = call i64 @_ZN4core3mem7size_of17hfe3c5079ee2fc825E(), !dbg !270
  br label %bb1, !dbg !270

bb1:                                              ; preds = %start
  %8 = load i64, i64* %count, align 8, !dbg !271
  %9 = mul i64 %7, %8, !dbg !270
  store i64 %9, i64* %len, align 8, !dbg !270
  %10 = load i8*, i8** %x1, align 8, !dbg !272
  %11 = load i8*, i8** %y2, align 8, !dbg !273
  %12 = load i64, i64* %len, align 8, !dbg !274
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hb4f23dd709ecb651E(i8* %10, i8* %11, i64 %12), !dbg !275
  br label %bb2, !dbg !275

bb2:                                              ; preds = %bb1
  ret void, !dbg !276
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr23swap_nonoverlapping_one17h5b2d88b0fc8c9977E(i64*, i64*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !277 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %z = alloca i64, align 8
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !280, metadata !DIExpression()), !dbg !281
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !282, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i64* %z, metadata !283, metadata !DIExpression()), !dbg !285
  store i8 0, i8* %_18, align 1, !dbg !286
  %2 = call i64 @_ZN4core3mem7size_of17hfe3c5079ee2fc825E(), !dbg !286
  br label %bb2, !dbg !286

bb1:                                              ; preds = %bb11, %bb10
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !287
  %4 = load i8*, i8** %3, align 8, !dbg !287
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !287
  %6 = load i32, i32* %5, align 4, !dbg !287
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0, !dbg !287
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1, !dbg !287
  resume { i8*, i32 } %8, !dbg !287

bb2:                                              ; preds = %start
  %9 = icmp ult i64 %2, 32, !dbg !286
  br i1 %9, label %bb3, label %bb4, !dbg !288

bb3:                                              ; preds = %bb2
  %10 = load i64*, i64** %x, align 8, !dbg !289
  store i8 1, i8* %_18, align 1, !dbg !290
  %11 = call i64 @_ZN4core3ptr4read17h3e115e2ff3af3ee9E(i64* %10), !dbg !290
  store i64 %11, i64* %z, align 8, !dbg !290
  br label %bb5, !dbg !290

bb4:                                              ; preds = %bb2
  %12 = load i64*, i64** %x, align 8, !dbg !291
  %13 = load i64*, i64** %y, align 8, !dbg !292
  call void @_ZN4core3ptr19swap_nonoverlapping17h8e8f08e906c887d6E(i64* %12, i64* %13, i64 1), !dbg !293
  br label %bb8, !dbg !293

bb5:                                              ; preds = %bb3
  %14 = load i64*, i64** %y, align 8, !dbg !294
  %15 = load i64*, i64** %x, align 8, !dbg !295
  %16 = bitcast i64* %15 to i8*, !dbg !296
  %17 = bitcast i64* %14 to i8*, !dbg !296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false), !dbg !296
  br label %bb6, !dbg !296

bb6:                                              ; preds = %bb5
  %18 = load i64*, i64** %y, align 8, !dbg !297
  store i8 0, i8* %_18, align 1, !dbg !298
  %19 = load i64, i64* %z, align 8, !dbg !298
  invoke void @_ZN4core3ptr5write17h5d47e28fbefe910aE(i64* %18, i64 %19)
          to label %bb7 unwind label %cleanup, !dbg !299

bb7:                                              ; preds = %bb6
  store i8 0, i8* %_18, align 1, !dbg !300
  br label %bb9, !dbg !288

bb8:                                              ; preds = %bb4
  br label %bb9, !dbg !288

bb9:                                              ; preds = %bb8, %bb7
  ret void, !dbg !301

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1, !dbg !300
  br label %bb1, !dbg !300

bb11:                                             ; preds = %cleanup
  %20 = load i8, i8* %_18, align 1, !dbg !300, !range !194
  %21 = trunc i8 %20 to i1, !dbg !300
  br i1 %21, label %bb10, label %bb1, !dbg !300

cleanup:                                          ; preds = %bb6
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %bb11
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17hb4f23dd709ecb651E(i8*, i8*, i64) unnamed_addr #1 !dbg !302 {
start:
  %y7 = alloca i8*, align 8
  %x6 = alloca i8*, align 8
  %t5 = alloca i8*, align 8
  %rem = alloca i64, align 8
  %t4 = alloca %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock", align 8
  %y3 = alloca i8*, align 8
  %x2 = alloca i8*, align 8
  %t1 = alloca i8*, align 8
  %t = alloca <4 x i64>, align 32
  %i = alloca i64, align 8
  %block_size = alloca i64, align 8
  %len = alloca i64, align 8
  %y = alloca i8*, align 8
  %x = alloca i8*, align 8
  store i8* %0, i8** %x, align 8
  call void @llvm.dbg.declare(metadata i8** %x, metadata !305, metadata !DIExpression()), !dbg !306
  store i8* %1, i8** %y, align 8
  call void @llvm.dbg.declare(metadata i8** %y, metadata !307, metadata !DIExpression()), !dbg !306
  store i64 %2, i64* %len, align 8
  call void @llvm.dbg.declare(metadata i64* %len, metadata !308, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i64* %block_size, metadata !309, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i64* %i, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata <4 x i64>* %t, metadata !315, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %t1, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i8** %x2, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i8** %y3, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %t4, metadata !327, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata i64* %rem, metadata !330, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i8** %t5, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i8** %x6, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i8** %y7, metadata !339, metadata !DIExpression()), !dbg !341
  %3 = call i64 @_ZN4core3mem7size_of17h4e659190e8eeca7cE(), !dbg !342
  store i64 %3, i64* %block_size, align 8, !dbg !342
  br label %bb1, !dbg !342

bb1:                                              ; preds = %start
  store i64 0, i64* %i, align 8, !dbg !343
  br label %bb2, !dbg !344

bb2:                                              ; preds = %bb10, %bb1
  %4 = load i64, i64* %i, align 8, !dbg !345
  %5 = load i64, i64* %block_size, align 8, !dbg !346
  %6 = add i64 %4, %5, !dbg !345
  %7 = load i64, i64* %len, align 8, !dbg !347
  %8 = icmp ule i64 %6, %7, !dbg !345
  br i1 %8, label %bb4, label %bb3, !dbg !344

bb3:                                              ; preds = %bb2
  %9 = load i64, i64* %i, align 8, !dbg !348
  %10 = load i64, i64* %len, align 8, !dbg !349
  %11 = icmp ult i64 %9, %10, !dbg !348
  br i1 %11, label %bb11, label %bb18, !dbg !350

bb4:                                              ; preds = %bb2
  call void @_ZN4core3mem13uninitialized17h312375f473e659e1E(<4 x i64>* noalias nocapture sret dereferenceable(32) %t), !dbg !351
  br label %bb5, !dbg !351

bb5:                                              ; preds = %bb4
  %12 = bitcast <4 x i64>* %t to i8*, !dbg !352
  store i8* %12, i8** %t1, align 8, !dbg !352
  %13 = load i8*, i8** %x, align 8, !dbg !353
  %14 = load i64, i64* %i, align 8, !dbg !354
  %15 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %13, i64 %14), !dbg !353
  store i8* %15, i8** %x2, align 8, !dbg !353
  br label %bb6, !dbg !353

bb6:                                              ; preds = %bb5
  %16 = load i8*, i8** %y, align 8, !dbg !355
  %17 = load i64, i64* %i, align 8, !dbg !356
  %18 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %16, i64 %17), !dbg !355
  store i8* %18, i8** %y3, align 8, !dbg !355
  br label %bb7, !dbg !355

bb7:                                              ; preds = %bb6
  %19 = load i8*, i8** %x2, align 8, !dbg !357
  %20 = load i8*, i8** %t1, align 8, !dbg !358
  %21 = load i64, i64* %block_size, align 8, !dbg !359
  %22 = mul i64 1, %21, !dbg !360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %19, i64 %22, i1 false), !dbg !360
  br label %bb8, !dbg !360

bb8:                                              ; preds = %bb7
  %23 = load i8*, i8** %y3, align 8, !dbg !361
  %24 = load i8*, i8** %x2, align 8, !dbg !362
  %25 = load i64, i64* %block_size, align 8, !dbg !363
  %26 = mul i64 1, %25, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %23, i64 %26, i1 false), !dbg !364
  br label %bb9, !dbg !364

bb9:                                              ; preds = %bb8
  %27 = load i8*, i8** %t1, align 8, !dbg !365
  %28 = load i8*, i8** %y3, align 8, !dbg !366
  %29 = load i64, i64* %block_size, align 8, !dbg !367
  %30 = mul i64 1, %29, !dbg !368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %27, i64 %30, i1 false), !dbg !368
  br label %bb10, !dbg !368

bb10:                                             ; preds = %bb9
  %31 = load i64, i64* %block_size, align 8, !dbg !369
  %32 = load i64, i64* %i, align 8, !dbg !370
  %33 = add i64 %32, %31, !dbg !370
  store i64 %33, i64* %i, align 8, !dbg !370
  br label %bb2, !dbg !344

bb11:                                             ; preds = %bb3
  call void @_ZN4core3mem13uninitialized17h5353db0349229fa3E(%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* noalias nocapture sret dereferenceable(32) %t4), !dbg !371
  br label %bb12, !dbg !371

bb12:                                             ; preds = %bb11
  %34 = load i64, i64* %len, align 8, !dbg !372
  %35 = load i64, i64* %i, align 8, !dbg !373
  %36 = sub i64 %34, %35, !dbg !372
  store i64 %36, i64* %rem, align 8, !dbg !372
  %37 = bitcast %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %t4 to i8*, !dbg !374
  store i8* %37, i8** %t5, align 8, !dbg !374
  %38 = load i8*, i8** %x, align 8, !dbg !375
  %39 = load i64, i64* %i, align 8, !dbg !376
  %40 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %38, i64 %39), !dbg !375
  store i8* %40, i8** %x6, align 8, !dbg !375
  br label %bb13, !dbg !375

bb13:                                             ; preds = %bb12
  %41 = load i8*, i8** %y, align 8, !dbg !377
  %42 = load i64, i64* %i, align 8, !dbg !378
  %43 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %41, i64 %42), !dbg !377
  store i8* %43, i8** %y7, align 8, !dbg !377
  br label %bb14, !dbg !377

bb14:                                             ; preds = %bb13
  %44 = load i8*, i8** %x6, align 8, !dbg !379
  %45 = load i8*, i8** %t5, align 8, !dbg !380
  %46 = load i64, i64* %rem, align 8, !dbg !381
  %47 = mul i64 1, %46, !dbg !382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %44, i64 %47, i1 false), !dbg !382
  br label %bb15, !dbg !382

bb15:                                             ; preds = %bb14
  %48 = load i8*, i8** %y7, align 8, !dbg !383
  %49 = load i8*, i8** %x6, align 8, !dbg !384
  %50 = load i64, i64* %rem, align 8, !dbg !385
  %51 = mul i64 1, %50, !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %48, i64 %51, i1 false), !dbg !386
  br label %bb16, !dbg !386

bb16:                                             ; preds = %bb15
  %52 = load i8*, i8** %t5, align 8, !dbg !387
  %53 = load i8*, i8** %y7, align 8, !dbg !388
  %54 = load i64, i64* %rem, align 8, !dbg !389
  %55 = mul i64 1, %54, !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %52, i64 %55, i1 false), !dbg !390
  br label %bb17, !dbg !390

bb17:                                             ; preds = %bb16
  br label %bb18, !dbg !350

bb18:                                             ; preds = %bb17, %bb3
  ret void, !dbg !391
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8*, i64) unnamed_addr #1 !dbg !392 {
start:
  %count = alloca i64, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !398, metadata !DIExpression()), !dbg !399
  store i64 %1, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !400, metadata !DIExpression()), !dbg !399
  %2 = load i8*, i8** %self, align 8, !dbg !401
  %3 = load i64, i64* %count, align 8, !dbg !402
  %4 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h81c7627fe4120de0E"(i8* %2, i64 %3), !dbg !401
  br label %bb1, !dbg !401

bb1:                                              ; preds = %start
  ret i8* %4, !dbg !403
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h81c7627fe4120de0E"(i8*, i64) unnamed_addr #1 !dbg !404 {
start:
  %tmp_ret = alloca i8*, align 8
  %count = alloca i64, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %1, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !409, metadata !DIExpression()), !dbg !408
  %2 = load i8*, i8** %self, align 8, !dbg !410
  %3 = load i64, i64* %count, align 8, !dbg !411
  %4 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !412
  store i8* %4, i8** %tmp_ret, align 8, !dbg !412
  %5 = load i8*, i8** %tmp_ret, align 8, !dbg !412
  br label %bb1, !dbg !412

bb1:                                              ; preds = %start
  ret i8* %5, !dbg !413
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3ptr4read17h3e115e2ff3af3ee9E(i64*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !414 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %tmp = alloca i64, align 8
  %src = alloca i64*, align 8
  store i64* %0, i64** %src, align 8
  call void @llvm.dbg.declare(metadata i64** %src, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !420, metadata !DIExpression()), !dbg !422
  %1 = call i64 @_ZN4core3mem13uninitialized17hdef4b5549e469003E(), !dbg !423
  store i64 %1, i64* %tmp, align 8, !dbg !423
  br label %bb2, !dbg !423

bb1:                                              ; preds = %bb4
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !424
  %3 = load i8*, i8** %2, align 8, !dbg !424
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !424
  %5 = load i32, i32* %4, align 4, !dbg !424
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !424
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !424
  resume { i8*, i32 } %7, !dbg !424

bb2:                                              ; preds = %start
  %8 = load i64*, i64** %src, align 8, !dbg !425
  %9 = bitcast i64* %tmp to i8*, !dbg !426
  %10 = bitcast i64* %8 to i8*, !dbg !426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false), !dbg !426
  br label %bb3, !dbg !426

bb3:                                              ; preds = %bb2
  %11 = load i64, i64* %tmp, align 8, !dbg !427
  ret i64 %11, !dbg !428

bb4:                                              ; No predecessors!
  br label %bb1, !dbg !429
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr5write17h5d47e28fbefe910aE(i64*, i64) unnamed_addr #1 !dbg !430 {
start:
  %src = alloca i64, align 8
  %dst = alloca i64*, align 8
  store i64* %0, i64** %dst, align 8
  call void @llvm.dbg.declare(metadata i64** %dst, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 %1, i64* %src, align 8
  call void @llvm.dbg.declare(metadata i64* %src, metadata !435, metadata !DIExpression()), !dbg !434
  %2 = load i64*, i64** %dst, align 8, !dbg !436
  %3 = load i64, i64* %src, align 8, !dbg !437
  store i64 %3, i64* %2, align 8, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h08af673f70db9933E"({ i64, i64 }* dereferenceable(16)) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !439 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %n = alloca i64, align 8
  %_8 = alloca { i64, i64 }*, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_0 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %self, align 8
  call void @llvm.dbg.declare(metadata { i64, i64 }** %self, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i64* %n, metadata !452, metadata !DIExpression()), !dbg !454
  store i8 0, i8* %_17, align 1, !dbg !455
  %1 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !455, !nonnull !4
  %2 = bitcast { i64, i64 }* %1 to i64*, !dbg !455
  %3 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !456, !nonnull !4
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1, !dbg !456
  %5 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb4203fcb62247c1dE"(i64* noalias readonly dereferenceable(8) %2, i64* noalias readonly dereferenceable(8) %4), !dbg !455
  br label %bb2, !dbg !455

bb1:                                              ; preds = %bb13, %bb9
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !457
  %7 = load i8*, i8** %6, align 8, !dbg !457
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !457
  %9 = load i32, i32* %8, align 4, !dbg !457
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0, !dbg !457
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1, !dbg !457
  resume { i8*, i32 } %11, !dbg !457

bb2:                                              ; preds = %start
  br i1 %5, label %bb3, label %bb4, !dbg !458

bb3:                                              ; preds = %bb2
  %12 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !459, !nonnull !4
  %13 = bitcast { i64, i64 }* %12 to i64*, !dbg !459
  store i8 1, i8* %_17, align 1, !dbg !459
  %14 = call { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17hf2433d5fe01eed32E"(i64* noalias readonly dereferenceable(8) %13, i64 1), !dbg !459
  store { i64, i64 } %14, { i64, i64 }* %_5, align 8, !dbg !459
  br label %bb5, !dbg !459

bb4:                                              ; preds = %bb2
  %15 = bitcast { i64, i64 }* %_0 to i64*, !dbg !460
  store i64 0, i64* %15, align 8, !dbg !460
  br label %bb12, !dbg !458

bb5:                                              ; preds = %bb3
  %16 = bitcast { i64, i64 }* %_5 to i64*, !dbg !459
  %17 = load i64, i64* %16, align 8, !dbg !459, !range !200
  store { i64, i64 }* %_5, { i64, i64 }** %_8, align 8, !dbg !459
  %18 = bitcast { i64, i64 }* %_5 to i64*, !dbg !461
  %19 = load i64, i64* %18, align 8, !dbg !461, !range !200
  %20 = icmp eq i64 %19, 1, !dbg !461
  br i1 %20, label %bb6, label %bb7, !dbg !461

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_17, align 1, !dbg !462
  %21 = bitcast { i64, i64 }* %_5 to %"core::option::Option<usize>::Some"*, !dbg !462
  %22 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %21, i32 0, i32 1, !dbg !462
  %23 = load i64, i64* %22, align 8, !dbg !462
  store i64 %23, i64* %n, align 8, !dbg !462
  %24 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !463, !nonnull !4
  %25 = bitcast { i64, i64 }* %24 to i64*, !dbg !463
  invoke void @_ZN4core3mem4swap17h6ba622a47cf96402E(i64* dereferenceable(8) %n, i64* dereferenceable(8) %25)
          to label %bb8 unwind label %cleanup, !dbg !464

bb7:                                              ; preds = %bb5
  %26 = bitcast { i64, i64 }* %_0 to i64*, !dbg !465
  store i64 0, i64* %26, align 8, !dbg !465
  br label %bb11, !dbg !466

bb8:                                              ; preds = %bb6
  %27 = load i64, i64* %n, align 8, !dbg !467
  %28 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*, !dbg !468
  %29 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %28, i32 0, i32 1, !dbg !468
  store i64 %27, i64* %29, align 8, !dbg !468
  %30 = bitcast { i64, i64 }* %_0 to i64*, !dbg !468
  store i64 1, i64* %30, align 8, !dbg !468
  br label %bb11, !dbg !469

bb9:                                              ; preds = %bb10
  %31 = bitcast { i64, i64 }* %_5 to i64*, !dbg !470
  %32 = load i64, i64* %31, align 8, !dbg !470, !range !200
  %33 = icmp eq i64 %32, 1, !dbg !470
  br i1 %33, label %bb1, label %bb13, !dbg !470

bb10:                                             ; preds = %cleanup
  br label %bb9, !dbg !469

bb11:                                             ; preds = %bb8, %bb7
  %34 = bitcast { i64, i64 }* %_5 to i64*, !dbg !470
  %35 = load i64, i64* %34, align 8, !dbg !470, !range !200
  %36 = icmp eq i64 %35, 1, !dbg !470
  br i1 %36, label %bb15, label %bb17, !dbg !470

bb12:                                             ; preds = %bb14, %bb4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0, !dbg !471
  %38 = load i64, i64* %37, align 8, !dbg !471, !range !200
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1, !dbg !471
  %40 = load i64, i64* %39, align 8, !dbg !471
  %41 = insertvalue { i64, i64 } undef, i64 %38, 0, !dbg !471
  %42 = insertvalue { i64, i64 } %41, i64 %40, 1, !dbg !471
  ret { i64, i64 } %42, !dbg !471

bb13:                                             ; preds = %bb9
  br label %bb1, !dbg !470

bb14:                                             ; preds = %bb17, %bb16, %bb15
  store i8 0, i8* %_17, align 1, !dbg !470
  br label %bb12, !dbg !458

bb15:                                             ; preds = %bb11
  %43 = load i8, i8* %_17, align 1, !dbg !470, !range !194
  %44 = trunc i8 %43 to i1, !dbg !470
  br i1 %44, label %bb16, label %bb14, !dbg !470

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_17, align 1, !dbg !470
  br label %bb14, !dbg !470

bb17:                                             ; preds = %bb11
  br label %bb14, !dbg !470

cleanup:                                          ; preds = %bb6
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf9886a316153c6d6E"([0 x i32]* noalias nonnull readonly, i64) unnamed_addr #1 !dbg !472 {
start:
  %_2 = alloca %"core::slice::Repr<i32>", align 8
  %self = alloca { [0 x i32]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 0
  store [0 x i32]* %0, [0 x i32]** %2, align 8
  %3 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata { [0 x i32]*, i64 }* %self, metadata !485, metadata !DIExpression()), !dbg !486
  %4 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 0, !dbg !487
  %5 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !487, !nonnull !4
  %6 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 1, !dbg !487
  %7 = load i64, i64* %6, align 8, !dbg !487
  %8 = bitcast %"core::slice::Repr<i32>"* %_2 to { [0 x i32]*, i64 }*, !dbg !489
  %9 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %8, i32 0, i32 0, !dbg !489
  store [0 x i32]* %5, [0 x i32]** %9, align 8, !dbg !489
  %10 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %8, i32 0, i32 1, !dbg !489
  store i64 %7, i64* %10, align 8, !dbg !489
  %11 = bitcast %"core::slice::Repr<i32>"* %_2 to { i32*, i64 }*, !dbg !489
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 1, !dbg !489
  %13 = load i64, i64* %12, align 8, !dbg !489
  ret i64 %13, !dbg !490
}

; Function Attrs: uwtable
define internal i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2980c1cda476e7c8E"(i64) unnamed_addr #0 !dbg !491 {
start:
  %t = alloca i64, align 8
  store i64 %0, i64* %t, align 8
  call void @llvm.dbg.declare(metadata i64* %t, metadata !497, metadata !DIExpression()), !dbg !498
  %1 = load i64, i64* %t, align 8, !dbg !499
  ret i64 %1, !dbg !500
}

; Function Attrs: uwtable
define internal i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h2cc47ee77e12255cE"(i64) unnamed_addr #0 !dbg !501 {
start:
  %_0 = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %0, i64* %value, align 8
  call void @llvm.dbg.declare(metadata i64* %value, metadata !513, metadata !DIExpression()), !dbg !514
  %1 = load i64, i64* %value, align 8, !dbg !515
  %2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2980c1cda476e7c8E"(i64 %1), !dbg !516
  br label %bb1, !dbg !516

bb1:                                              ; preds = %start
  store i64 %2, i64* %_0, align 8, !dbg !517
  %3 = load i64, i64* %_0, align 8, !dbg !518
  ret i64 %3, !dbg !518
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6ed6329d53f6babeE"() unnamed_addr #1 !dbg !519 {
start:
  %self = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %self, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h2c6dfc893d38975eE"(i8 0), !dbg !527
  br label %bb1, !dbg !527

bb1:                                              ; preds = %start
  ret i32 %0, !dbg !528
}

; Function Attrs: uwtable
define internal { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h4c4314c22fcf64f6E"(i64, i64) unnamed_addr #0 !dbg !529 {
start:
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata { i64, i64 }* %self, metadata !537, metadata !DIExpression()), !dbg !538
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0, !dbg !539
  %5 = load i64, i64* %4, align 8, !dbg !539
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1, !dbg !539
  %7 = load i64, i64* %6, align 8, !dbg !539
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0, !dbg !540
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1, !dbg !540
  ret { i64, i64 } %9, !dbg !540
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h2c6dfc893d38975eE"(i8) unnamed_addr #1 !dbg !541 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  call void @llvm.dbg.declare(metadata i8* %self, metadata !547, metadata !DIExpression()), !dbg !548
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h45f1cf928f91d05aE(i8* noalias readonly dereferenceable(1) %self), !dbg !549
  br label %bb1, !dbg !549

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !550
}

; Function Attrs: uwtable
define internal void @_ZN9reduction4main17h7e25980b9ee16ef8E() unnamed_addr #0 !dbg !551 {
start:
  %i = alloca i64, align 8
  %val = alloca i64, align 8
  %_17 = alloca { i64, i64 }, align 8
  %__next = alloca i64, align 8
  %iter = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %_9 = alloca { i64, i64 }, align 8
  %_result = alloca {}, align 1
  %arr = alloca [5 x i32], align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !553, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata i32* %c, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i32* %b, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata [5 x i32]* %arr, metadata !562, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata {}* %_result, metadata !568, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata { i64, i64 }* %iter, metadata !571, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i64* %__next, metadata !574, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata i64* %val, metadata !577, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i64* %i, metadata !580, metadata !DIExpression()), !dbg !582
  store i32 0, i32* %a, align 4, !dbg !583
  store i32 1, i32* %a, align 4, !dbg !584
  %0 = load i32, i32* %a, align 4, !dbg !585
  store i32 %0, i32* %c, align 4, !dbg !586
  %1 = load i32, i32* %a, align 4, !dbg !587
  store i32 %1, i32* %b, align 4, !dbg !588
  %2 = bitcast [5 x i32]* %arr to i32*, !dbg !589
  store i32 1, i32* %2, align 4, !dbg !589
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i32 0, i32 1, !dbg !589
  store i32 2, i32* %3, align 4, !dbg !589
  %4 = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i32 0, i32 2, !dbg !589
  store i32 3, i32* %4, align 4, !dbg !589
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i32 0, i32 3, !dbg !589
  store i32 4, i32* %5, align 4, !dbg !589
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i32 0, i32 4, !dbg !589
  store i32 5, i32* %6, align 4, !dbg !589
  %7 = bitcast [5 x i32]* %arr to [0 x i32]*, !dbg !590
  %8 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf9886a316153c6d6E"([0 x i32]* noalias nonnull readonly %7, i64 5), !dbg !590
  br label %bb1, !dbg !590

bb1:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %_10 to i64*, !dbg !591
  store i64 0, i64* %9, align 8, !dbg !591
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1, !dbg !591
  store i64 %8, i64* %10, align 8, !dbg !591
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 0, !dbg !591
  %12 = load i64, i64* %11, align 8, !dbg !591
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1, !dbg !591
  %14 = load i64, i64* %13, align 8, !dbg !591
  %15 = call { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h4c4314c22fcf64f6E"(i64 %12, i64 %14), !dbg !591
  store { i64, i64 } %15, { i64, i64 }* %_9, align 8, !dbg !591
  br label %bb2, !dbg !591

bb2:                                              ; preds = %bb1
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0, !dbg !591
  %17 = load i64, i64* %16, align 8, !dbg !591
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1, !dbg !591
  %19 = load i64, i64* %18, align 8, !dbg !591
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0, !dbg !591
  store i64 %17, i64* %20, align 8, !dbg !591
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1, !dbg !591
  store i64 %19, i64* %21, align 8, !dbg !591
  br label %bb3, !dbg !591

bb3:                                              ; preds = %bb9, %bb2
  %22 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h08af673f70db9933E"({ i64, i64 }* dereferenceable(16) %iter), !dbg !576
  store { i64, i64 } %22, { i64, i64 }* %_17, align 8, !dbg !576
  br label %bb4, !dbg !576

bb4:                                              ; preds = %bb3
  call void @incr_loop_counter(i32 1)
  %23 = bitcast { i64, i64 }* %_17 to i64*, !dbg !576
  %24 = load i64, i64* %23, align 8, !dbg !576, !range !200
  %25 = bitcast { i64, i64 }* %_17 to i64*, !dbg !592
  %26 = load i64, i64* %25, align 8, !dbg !592, !range !200
  switch i64 %26, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ], !dbg !592

bb5:                                              ; preds = %bb4
  store i32 1, i32* %a, align 4, !dbg !593
  ret void, !dbg !594

bb6:                                              ; preds = %bb4
  unreachable, !dbg !594

bb7:                                              ; preds = %bb4
  %27 = bitcast { i64, i64 }* %_17 to %"core::option::Option<usize>::Some"*, !dbg !592
  %28 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %27, i32 0, i32 1, !dbg !592
  %29 = load i64, i64* %28, align 8, !dbg !592
  store i64 %29, i64* %val, align 8, !dbg !592
  %30 = load i64, i64* %val, align 8, !dbg !579
  store i64 %30, i64* %__next, align 8, !dbg !579
  %31 = load i64, i64* %__next, align 8, !dbg !576
  store i64 %31, i64* %i, align 8, !dbg !576
  %32 = load i32, i32* %a, align 4, !dbg !595
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1), !dbg !595
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !595
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !595
  %36 = call i1 @llvm.expect.i1(i1 %35, i1 false), !dbg !595
  br i1 %36, label %panic, label %bb8, !dbg !595

bb8:                                              ; preds = %bb7
  store i32 %34, i32* %a, align 4, !dbg !596
  %37 = load i32, i32* %b, align 4, !dbg !597
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %37, i32 5), !dbg !597
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !597
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !597
  %41 = call i1 @llvm.expect.i1(i1 %40, i1 false), !dbg !597
  br i1 %41, label %panic1, label %bb9, !dbg !597

bb9:                                              ; preds = %bb8
  store i32 %39, i32* %b, align 4, !dbg !598
  br label %bb3, !dbg !599

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.3 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !595
  unreachable, !dbg !595

panic1:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.5 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !597
  unreachable, !dbg !597
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hce01021c3c1cf20dE({}* nonnull, [3 x i64]* noalias readonly dereferenceable(24), i64, i8**) unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40)) unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

define i32 @main(i32, i8**) unnamed_addr #6 {
top:
  %2 = load volatile i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__rustc_debug_gdb_scripts_section__, i32 0, i32 0), align 1
  %3 = sext i32 %0 to i64
  %4 = call i64 @_ZN3std2rt10lang_start17h447b166fa1bbfa61E(void ()* @_ZN9reduction4main17h7e25980b9ee16ef8E, i64 %3, i8** %1)
  %5 = trunc i64 %4 to i32
  call void @loop_counter_output()
  ret i32 %5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

declare void @add_instr_rec(i32, i64, i32)

declare void @add_ptr_instr_rec(i32, i64, i32, i64)

declare void @incr_loop_counter(i32)

declare void @loop_counter_output()

