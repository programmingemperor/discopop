; ModuleID = 'reduction.7rcbfp3g-cgu.0'
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
@panic_bounds_check_loc.2 = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 11, i32 9 }, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::rt::lang_start
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
; call std::rt::lang_start_internal
  %8 = call i64 @_ZN3std2rt19lang_start_internal17hce01021c3c1cf20dE({}* nonnull %5, [3 x i64]* noalias readonly dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* }* @vtable.0 to [3 x i64]*), i64 %6, i8** %7), !dbg !46
  br label %bb1, !dbg !46

bb1:                                              ; preds = %start
  ret i64 %8, !dbg !47
}

; std::rt::lang_start::{{closure}}
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
; call <() as std::process::Termination>::report
  %4 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6ed6329d53f6babeE"(), !dbg !56
  br label %bb2, !dbg !56

bb2:                                              ; preds = %bb1
  ret i32 %4, !dbg !57
}

; std::sys::unix::process::process_common::ExitCode::as_i32
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

; <usize as core::iter::range::Step>::add_usize
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
; call <T as core::convert::TryFrom<U>>::try_from
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
; call core::num::<impl usize>::checked_add
  %8 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h594d6300cb62e4bcE"(i64 %6, i64 %7), !dbg !103
  %9 = extractvalue { i64, i64 } %8, 0, !dbg !103
  %10 = extractvalue { i64, i64 } %8, 1, !dbg !103
  br label %bb2, !dbg !103

bb2:                                              ; preds = %bb1
  %11 = insertvalue { i64, i64 } undef, i64 %9, 0, !dbg !105
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1, !dbg !105
  ret { i64, i64 } %12, !dbg !105
}

; core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt
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

; core::mem::uninitialized
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h312375f473e659e1E(<4 x i64>* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !120 {
start:
  br label %bb1, !dbg !135

bb1:                                              ; preds = %start
  ret void, !dbg !136
}

; core::mem::uninitialized
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h5353db0349229fa3E(%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !137 {
start:
  br label %bb1, !dbg !148

bb1:                                              ; preds = %start
  ret void, !dbg !149
}

; core::mem::uninitialized
; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem13uninitialized17hdef4b5549e469003E() unnamed_addr #1 !dbg !150 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !155
  br label %bb1, !dbg !155

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !156
}

; core::mem::swap
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
; call core::ptr::swap_nonoverlapping_one
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h5b2d88b0fc8c9977E(i64* %2, i64* %3), !dbg !167
  br label %bb1, !dbg !167

bb1:                                              ; preds = %start
  ret void, !dbg !168
}

; core::mem::size_of
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

; core::mem::size_of
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

; core::num::<impl usize>::checked_add
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
; call core::num::<impl usize>::overflowing_add
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

; core::num::<impl usize>::overflowing_add
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

; core::ops::function::FnOnce::call_once
; Function Attrs: uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h3ac55c54819e6932E(i8* nonnull) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !226 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %arg1 = alloca {}, align 1
  %arg0 = alloca i8*, align 8
  store i8* %0, i8** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8** %arg0, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata {}* %arg1, metadata !238, metadata !DIExpression()), !dbg !237
; invoke std::rt::lang_start::{{closure}}
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

; core::ptr::drop_in_place
; Function Attrs: uwtable
define internal void @_ZN4core3ptr13drop_in_place17hcdf5f187d0cf4982E(i8**) unnamed_addr #0 !dbg !240 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !247, metadata !DIExpression()), !dbg !248
  ret void, !dbg !249
}

; core::ptr::swap_nonoverlapping
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
; call core::mem::size_of
  %7 = call i64 @_ZN4core3mem7size_of17hfe3c5079ee2fc825E(), !dbg !270
  br label %bb1, !dbg !270

bb1:                                              ; preds = %start
  %8 = load i64, i64* %count, align 8, !dbg !271
  %9 = mul i64 %7, %8, !dbg !270
  store i64 %9, i64* %len, align 8, !dbg !270
  %10 = load i8*, i8** %x1, align 8, !dbg !272
  %11 = load i8*, i8** %y2, align 8, !dbg !273
  %12 = load i64, i64* %len, align 8, !dbg !274
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hb4f23dd709ecb651E(i8* %10, i8* %11, i64 %12), !dbg !275
  br label %bb2, !dbg !275

bb2:                                              ; preds = %bb1
  ret void, !dbg !276
}

; core::ptr::swap_nonoverlapping_one
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
; call core::mem::size_of
  %2 = call i64 @_ZN4core3mem7size_of17hfe3c5079ee2fc825E(), !dbg !286
  br label %bb2, !dbg !286

bb1:                                              ; preds = %bb10, %bb11
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
; call core::ptr::read
  %11 = call i64 @_ZN4core3ptr4read17h3e115e2ff3af3ee9E(i64* %10), !dbg !290
  store i64 %11, i64* %z, align 8, !dbg !290
  br label %bb5, !dbg !290

bb4:                                              ; preds = %bb2
  %12 = load i64*, i64** %x, align 8, !dbg !291
  %13 = load i64*, i64** %y, align 8, !dbg !292
; call core::ptr::swap_nonoverlapping
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
; invoke core::ptr::write
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

; core::ptr::swap_nonoverlapping_bytes
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
; call core::mem::size_of
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
; call core::mem::uninitialized
  call void @_ZN4core3mem13uninitialized17h312375f473e659e1E(<4 x i64>* noalias nocapture sret dereferenceable(32) %t), !dbg !351
  br label %bb5, !dbg !351

bb5:                                              ; preds = %bb4
  %12 = bitcast <4 x i64>* %t to i8*, !dbg !352
  store i8* %12, i8** %t1, align 8, !dbg !352
  %13 = load i8*, i8** %x, align 8, !dbg !353
  %14 = load i64, i64* %i, align 8, !dbg !354
; call core::ptr::<impl *mut T>::add
  %15 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %13, i64 %14), !dbg !353
  store i8* %15, i8** %x2, align 8, !dbg !353
  br label %bb6, !dbg !353

bb6:                                              ; preds = %bb5
  %16 = load i8*, i8** %y, align 8, !dbg !355
  %17 = load i64, i64* %i, align 8, !dbg !356
; call core::ptr::<impl *mut T>::add
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
; call core::mem::uninitialized
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
; call core::ptr::<impl *mut T>::add
  %40 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE"(i8* %38, i64 %39), !dbg !375
  store i8* %40, i8** %x6, align 8, !dbg !375
  br label %bb13, !dbg !375

bb13:                                             ; preds = %bb12
  %41 = load i8*, i8** %y, align 8, !dbg !377
  %42 = load i64, i64* %i, align 8, !dbg !378
; call core::ptr::<impl *mut T>::add
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

; core::ptr::<impl *mut T>::add
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
; call core::ptr::<impl *mut T>::offset
  %4 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h81c7627fe4120de0E"(i8* %2, i64 %3), !dbg !401
  br label %bb1, !dbg !401

bb1:                                              ; preds = %start
  ret i8* %4, !dbg !403
}

; core::ptr::<impl *mut T>::offset
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

; core::ptr::read
; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3ptr4read17h3e115e2ff3af3ee9E(i64*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !414 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %tmp = alloca i64, align 8
  %src = alloca i64*, align 8
  store i64* %0, i64** %src, align 8
  call void @llvm.dbg.declare(metadata i64** %src, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !420, metadata !DIExpression()), !dbg !422
; call core::mem::uninitialized
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

; core::ptr::write
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

; core::iter::range::<impl core::iter::iterator::Iterator for core::ops::range::Range<A>>::next
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
; call core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt
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
; call <usize as core::iter::range::Step>::add_usize
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
; invoke core::mem::swap
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

bb12:                                             ; preds = %bb4, %bb14
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0, !dbg !471
  %38 = load i64, i64* %37, align 8, !dbg !471, !range !200
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1, !dbg !471
  %40 = load i64, i64* %39, align 8, !dbg !471
  %41 = insertvalue { i64, i64 } undef, i64 %38, 0, !dbg !471
  %42 = insertvalue { i64, i64 } %41, i64 %40, 1, !dbg !471
  ret { i64, i64 } %42, !dbg !471

bb13:                                             ; preds = %bb9
  br label %bb1, !dbg !470

bb14:                                             ; preds = %bb16, %bb15, %bb17
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

; core::slice::<impl [T]>::len
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

; <T as core::convert::From<T>>::from
; Function Attrs: uwtable
define internal i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2980c1cda476e7c8E"(i64) unnamed_addr #0 !dbg !491 {
start:
  %t = alloca i64, align 8
  store i64 %0, i64* %t, align 8
  call void @llvm.dbg.declare(metadata i64* %t, metadata !497, metadata !DIExpression()), !dbg !498
  %1 = load i64, i64* %t, align 8, !dbg !499
  ret i64 %1, !dbg !500
}

; <T as core::convert::TryFrom<U>>::try_from
; Function Attrs: uwtable
define internal i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h2cc47ee77e12255cE"(i64) unnamed_addr #0 !dbg !501 {
start:
  %_0 = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %0, i64* %value, align 8
  call void @llvm.dbg.declare(metadata i64* %value, metadata !513, metadata !DIExpression()), !dbg !514
  %1 = load i64, i64* %value, align 8, !dbg !515
; call <T as core::convert::From<T>>::from
  %2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2980c1cda476e7c8E"(i64 %1), !dbg !516
  br label %bb1, !dbg !516

bb1:                                              ; preds = %start
  store i64 %2, i64* %_0, align 8, !dbg !517
  %3 = load i64, i64* %_0, align 8, !dbg !518
  ret i64 %3, !dbg !518
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6ed6329d53f6babeE"() unnamed_addr #1 !dbg !519 {
start:
  %self = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %self, metadata !525, metadata !DIExpression()), !dbg !526
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h2c6dfc893d38975eE"(i8 0), !dbg !527
  br label %bb1, !dbg !527

bb1:                                              ; preds = %start
  ret i32 %0, !dbg !528
}

; <I as core::iter::traits::IntoIterator>::into_iter
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

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h2c6dfc893d38975eE"(i8) unnamed_addr #1 !dbg !541 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  call void @llvm.dbg.declare(metadata i8* %self, metadata !547, metadata !DIExpression()), !dbg !548
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h45f1cf928f91d05aE(i8* noalias readonly dereferenceable(1) %self), !dbg !549
  br label %bb1, !dbg !549

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !550
}

; reduction::main
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
; call core::slice::<impl [T]>::len
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
; call <I as core::iter::traits::IntoIterator>::into_iter
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

bb3:                                              ; preds = %bb8, %bb2
; call core::iter::range::<impl core::iter::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h08af673f70db9933E"({ i64, i64 }* dereferenceable(16) %iter), !dbg !576
  store { i64, i64 } %22, { i64, i64 }* %_17, align 8, !dbg !576
  br label %bb4, !dbg !576

bb4:                                              ; preds = %bb3
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
  %32 = load i64, i64* %i, align 8, !dbg !595
  %33 = icmp ult i64 %32, 5, !dbg !596
  %34 = call i1 @llvm.expect.i1(i1 %33, i1 true), !dbg !596
  br i1 %34, label %bb8, label %panic, !dbg !596

bb8:                                              ; preds = %bb7
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i64 0, i64 %32, !dbg !596
  store i32 0, i32* %35, align 4, !dbg !596
  br label %bb3, !dbg !597

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.2 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %32, i64 5), !dbg !596
  unreachable, !dbg !596
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare i64 @_ZN3std2rt19lang_start_internal17hce01021c3c1cf20dE({}* nonnull, [3 x i64]* noalias readonly dereferenceable(24), i64, i8**) unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #4

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24), i64, i64) unnamed_addr #5

define i32 @main(i32, i8**) unnamed_addr #6 {
top:
  %2 = load volatile i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__rustc_debug_gdb_scripts_section__, i32 0, i32 0), align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start
  %4 = call i64 @_ZN3std2rt10lang_start17h447b166fa1bbfa61E(void ()* @_ZN9reduction4main17h7e25980b9ee16ef8E, i64 %3, i8** %1)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

attributes #0 = { uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { inlinehint uwtable "probe-stack"="__rust_probestack" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nounwind readnone }
attributes #5 = { cold noinline noreturn uwtable "probe-stack"="__rust_probestack" }
attributes #6 = { "target-cpu"="x86-64" }
attributes #7 = { argmemonly nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.dbg.cu = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vtable", linkageName: "vtable", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !2, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !5, identifier: "vtable")
!4 = !{}
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "closure", file: !2, size: 64, align: 64, elements: !6, identifier: "5637902bcdb6419cc777a7b8d9e676ca")
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5, file: !2, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !9, size: 64, align: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !14, producer: "clang LLVM (rustc version 1.30.0 (da5f414c2 2018-10-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !23)
!14 = !DIFile(filename: "reduction.rs", directory: "/home/simonschmalfuss/discopop/rust/CU_comp")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !17, file: !2, baseType: !19, size: 64, align: 64, elements: !20)
!17 = !DINamespace(name: "option", scope: !18)
!18 = !DINamespace(name: "core", scope: null)
!19 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "None", value: 0)
!22 = !DIEnumerator(name: "Some", value: 1)
!23 = !{!0}
!24 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h447b166fa1bbfa61E", scope: !26, file: !25, line: 71, type: !28, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !34, retainedNodes: !4)
!25 = !DIFile(filename: "libstd/rt.rs", directory: "")
!26 = !DINamespace(name: "rt", scope: !27)
!27 = !DINamespace(name: "std", scope: null)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !8, !30, !31}
!30 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !33, size: 64, align: 64)
!33 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!34 = !{!35}
!35 = !DITemplateTypeParameter(name: "T", type: !36)
!36 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!37 = !DILocalVariable(name: "main", arg: 1, scope: !24, file: !38, line: 1, type: !8)
!38 = !DIFile(filename: "reduction.rs", directory: "")
!39 = !DILocation(line: 1, scope: !24)
!40 = !DILocalVariable(name: "argc", arg: 2, scope: !24, file: !38, line: 1, type: !30)
!41 = !DILocalVariable(name: "argv", arg: 3, scope: !24, file: !38, line: 1, type: !31)
!42 = !DILocation(line: 74, column: 25, scope: !24)
!43 = !DILocation(line: 74, column: 24, scope: !24)
!44 = !DILocation(line: 74, column: 50, scope: !24)
!45 = !DILocation(line: 74, column: 56, scope: !24)
!46 = !DILocation(line: 74, column: 4, scope: !24)
!47 = !DILocation(line: 75, column: 1, scope: !24)
!48 = distinct !DISubprogram(name: "{{closure}}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hfa3a1cd97b285fe9E", scope: !49, file: !25, line: 74, type: !50, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !34, retainedNodes: !4)
!49 = !DINamespace(name: "lang_start", scope: !26)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53}
!52 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&closure", baseType: !5, size: 64, align: 64)
!54 = !DILocalVariable(name: "main", scope: !48, file: !38, line: 1, type: !8, align: 8)
!55 = !DILocation(line: 1, scope: !48)
!56 = !DILocation(line: 74, column: 33, scope: !48)
!57 = !DILocation(line: 74, column: 48, scope: !48)
!58 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h45f1cf928f91d05aE", scope: !60, file: !59, line: 408, type: !67, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!59 = !DIFile(filename: "libstd/sys/unix/process/process_common.rs", directory: "")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !61, file: !2, size: 8, align: 8, elements: !65, identifier: "46c317801c8a92f48c3a9e1cbd850561")
!61 = !DINamespace(name: "process_common", scope: !62)
!62 = !DINamespace(name: "process", scope: !63)
!63 = !DINamespace(name: "unix", scope: !64)
!64 = !DINamespace(name: "sys", scope: !27)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !60, file: !2, baseType: !33, size: 8, align: 8)
!67 = !DISubroutineType(types: !68)
!68 = !{!52, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::unix::process::process_common::ExitCode", baseType: !60, size: 64, align: 64)
!70 = !DILocalVariable(name: "self", arg: 1, scope: !58, file: !38, line: 1, type: !69)
!71 = !DILocation(line: 1, scope: !58)
!72 = !DILocation(line: 409, column: 8, scope: !58)
!73 = !DILocation(line: 410, column: 5, scope: !58)
!74 = distinct !DISubprogram(name: "add_usize", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17hf2433d5fe01eed32E", scope: !76, file: !75, line: 93, type: !79, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!75 = !DIFile(filename: "libcore/iter/range.rs", directory: "")
!76 = !DINamespace(name: "{{impl}}", scope: !77)
!77 = !DINamespace(name: "range", scope: !78)
!78 = !DINamespace(name: "iter", scope: !18)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !93, !92}
!81 = !DICompositeType(tag: DW_TAG_union_type, name: "Option<usize>", scope: !17, file: !2, size: 128, align: 64, elements: !82, identifier: "9969130d64ea2f122b688ebb19e9a30c")
!82 = !{!83, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !2, baseType: !84, size: 64, align: 8)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !17, file: !2, size: 128, align: 64, elements: !85, identifier: "9969130d64ea2f122b688ebb19e9a30c::None")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !84, file: !2, baseType: !16, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !2, baseType: !88, size: 128, align: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !17, file: !2, size: 128, align: 64, elements: !89, identifier: "9969130d64ea2f122b688ebb19e9a30c::Some")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !88, file: !2, baseType: !16, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !88, file: !2, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !92, size: 64, align: 64)
!94 = !DILocalVariable(name: "self", arg: 1, scope: !74, file: !38, line: 1, type: !93)
!95 = !DILocation(line: 1, scope: !74)
!96 = !DILocalVariable(name: "n", arg: 2, scope: !74, file: !38, line: 1, type: !92)
!97 = !DILocalVariable(name: "n_as_t", scope: !98, file: !75, line: 95, type: !92, align: 8)
!98 = distinct !DILexicalBlock(scope: !74, file: !75, line: 95, column: 34)
!99 = !DILocation(line: 95, column: 23, scope: !98)
!100 = !DILocation(line: 94, column: 37, scope: !74)
!101 = !DILocation(line: 94, column: 22, scope: !74)
!102 = !DILocation(line: 95, column: 23, scope: !74)
!103 = !DILocation(line: 95, column: 34, scope: !98)
!104 = !DILocation(line: 95, column: 51, scope: !98)
!105 = !DILocation(line: 98, column: 13, scope: !74)
!106 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hb4203fcb62247c1dE", scope: !108, file: !107, line: 950, type: !111, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!107 = !DIFile(filename: "libcore/cmp.rs", directory: "")
!108 = !DINamespace(name: "{{impl}}", scope: !109)
!109 = !DINamespace(name: "impls", scope: !110)
!110 = !DINamespace(name: "cmp", scope: !18)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !93, !93}
!113 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!114 = !DILocalVariable(name: "self", arg: 1, scope: !106, file: !38, line: 1, type: !93)
!115 = !DILocation(line: 1, scope: !106)
!116 = !DILocalVariable(name: "other", arg: 2, scope: !106, file: !38, line: 1, type: !93)
!117 = !DILocation(line: 950, column: 51, scope: !106)
!118 = !DILocation(line: 950, column: 61, scope: !106)
!119 = !DILocation(line: 950, column: 71, scope: !106)
!120 = distinct !DISubprogram(name: "uninitialized<core::ptr::swap_nonoverlapping_bytes::Block>", linkageName: "_ZN4core3mem13uninitialized17h312375f473e659e1E", scope: !122, file: !121, line: 612, type: !123, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !133, retainedNodes: !4)
!121 = !DIFile(filename: "libcore/mem.rs", directory: "")
!122 = !DINamespace(name: "mem", scope: !18)
!123 = !DISubroutineType(types: !124)
!124 = !{!125}
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "Block", scope: !126, file: !2, size: 256, align: 256, elements: !128, identifier: "e3d5e740df975f43a0ee075c08ac57df")
!126 = !DINamespace(name: "swap_nonoverlapping_bytes", scope: !127)
!127 = !DINamespace(name: "ptr", scope: !18)
!128 = !{!129, !130, !131, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !125, file: !2, baseType: !19, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !125, file: !2, baseType: !19, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !125, file: !2, baseType: !19, size: 64, align: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__3", scope: !125, file: !2, baseType: !19, size: 64, align: 64, offset: 192)
!133 = !{!134}
!134 = !DITemplateTypeParameter(name: "T", type: !125)
!135 = !DILocation(line: 613, column: 4, scope: !120)
!136 = !DILocation(line: 614, column: 1, scope: !120)
!137 = distinct !DISubprogram(name: "uninitialized<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>", linkageName: "_ZN4core3mem13uninitialized17h5353db0349229fa3E", scope: !122, file: !121, line: 612, type: !138, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !146, retainedNodes: !4)
!138 = !DISubroutineType(types: !139)
!139 = !{!140}
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnalignedBlock", scope: !126, file: !2, size: 256, align: 64, elements: !141, identifier: "277b64bad252f8fc3aff8fe4e35e1be9")
!141 = !{!142, !143, !144, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !140, file: !2, baseType: !19, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !140, file: !2, baseType: !19, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !140, file: !2, baseType: !19, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__3", scope: !140, file: !2, baseType: !19, size: 64, align: 64, offset: 192)
!146 = !{!147}
!147 = !DITemplateTypeParameter(name: "T", type: !140)
!148 = !DILocation(line: 613, column: 4, scope: !137)
!149 = !DILocation(line: 614, column: 1, scope: !137)
!150 = distinct !DISubprogram(name: "uninitialized<usize>", linkageName: "_ZN4core3mem13uninitialized17hdef4b5549e469003E", scope: !122, file: !121, line: 612, type: !151, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!151 = !DISubroutineType(types: !152)
!152 = !{!92}
!153 = !{!154}
!154 = !DITemplateTypeParameter(name: "T", type: !92)
!155 = !DILocation(line: 613, column: 4, scope: !150)
!156 = !DILocation(line: 614, column: 1, scope: !150)
!157 = distinct !DISubprogram(name: "swap<usize>", linkageName: "_ZN4core3mem4swap17h6ba622a47cf96402E", scope: !122, file: !121, line: 633, type: !158, isLocal: true, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !92, size: 64, align: 64)
!161 = !DILocalVariable(name: "x", arg: 1, scope: !157, file: !38, line: 1, type: !160)
!162 = !DILocation(line: 1, scope: !157)
!163 = !DILocalVariable(name: "y", arg: 2, scope: !157, file: !38, line: 1, type: !160)
!164 = !DILocation(line: 635, column: 37, scope: !165)
!165 = distinct !DILexicalBlock(scope: !157, file: !121, line: 634, column: 4)
!166 = !DILocation(line: 635, column: 40, scope: !165)
!167 = !DILocation(line: 635, column: 8, scope: !165)
!168 = !DILocation(line: 637, column: 1, scope: !157)
!169 = distinct !DISubprogram(name: "size_of<core::ptr::swap_nonoverlapping_bytes::Block>", linkageName: "_ZN4core3mem7size_of17h4e659190e8eeca7cE", scope: !122, file: !121, line: 289, type: !151, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !133, retainedNodes: !4)
!170 = !DILocation(line: 290, column: 4, scope: !169)
!171 = !DILocation(line: 291, column: 1, scope: !169)
!172 = distinct !DISubprogram(name: "size_of<usize>", linkageName: "_ZN4core3mem7size_of17hfe3c5079ee2fc825E", scope: !122, file: !121, line: 289, type: !151, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!173 = !DILocation(line: 290, column: 4, scope: !172)
!174 = !DILocation(line: 291, column: 1, scope: !172)
!175 = distinct !DISubprogram(name: "checked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h594d6300cb62e4bcE", scope: !177, file: !176, line: 2758, type: !179, isLocal: true, isDefinition: true, scopeLine: 2758, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!176 = !DIFile(filename: "libcore/num/mod.rs", directory: "")
!177 = !DINamespace(name: "{{impl}}", scope: !178)
!178 = !DINamespace(name: "num", scope: !18)
!179 = !DISubroutineType(types: !180)
!180 = !{!81, !92, !92}
!181 = !DILocalVariable(name: "self", arg: 1, scope: !175, file: !38, line: 1, type: !92)
!182 = !DILocation(line: 1, scope: !175)
!183 = !DILocalVariable(name: "rhs", arg: 2, scope: !175, file: !38, line: 1, type: !92)
!184 = !DILocalVariable(name: "a", scope: !185, file: !176, line: 2759, type: !92, align: 8)
!185 = distinct !DILexicalBlock(scope: !175, file: !176, line: 2759, column: 16)
!186 = !DILocation(line: 2759, column: 21, scope: !185)
!187 = !DILocalVariable(name: "b", scope: !185, file: !176, line: 2759, type: !113, align: 1)
!188 = !DILocation(line: 2759, column: 24, scope: !185)
!189 = !DILocation(line: 2759, column: 29, scope: !175)
!190 = !DILocation(line: 2759, column: 50, scope: !175)
!191 = !DILocation(line: 2759, column: 21, scope: !175)
!192 = !DILocation(line: 2759, column: 24, scope: !175)
!193 = !DILocation(line: 2760, column: 19, scope: !185)
!194 = !{i8 0, i8 2}
!195 = !DILocation(line: 2760, column: 16, scope: !185)
!196 = !DILocation(line: 2760, column: 22, scope: !185)
!197 = !DILocation(line: 2760, column: 39, scope: !185)
!198 = !DILocation(line: 2760, column: 34, scope: !185)
!199 = !DILocation(line: 2761, column: 13, scope: !175)
!200 = !{i64 0, i64 2}
!201 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h7ab30bfe5b2e7d93E", scope: !177, file: !176, line: 3460, type: !202, isLocal: true, isDefinition: true, scopeLine: 3460, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !92, !92}
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !205, identifier: "624d5628266bf295a611964b94b1dd2c")
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !204, file: !2, baseType: !92, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !204, file: !2, baseType: !113, size: 8, align: 8, offset: 64)
!208 = !DILocalVariable(name: "self", arg: 1, scope: !201, file: !38, line: 1, type: !92)
!209 = !DILocation(line: 1, scope: !201)
!210 = !DILocalVariable(name: "rhs", arg: 2, scope: !201, file: !38, line: 1, type: !92)
!211 = !DILocalVariable(name: "a", scope: !212, file: !176, line: 3461, type: !19, align: 8)
!212 = distinct !DILexicalBlock(scope: !201, file: !176, line: 3461, column: 16)
!213 = !DILocation(line: 3461, column: 21, scope: !212)
!214 = !DILocalVariable(name: "b", scope: !212, file: !176, line: 3461, type: !113, align: 1)
!215 = !DILocation(line: 3461, column: 24, scope: !212)
!216 = !DILocation(line: 3462, column: 50, scope: !217)
!217 = distinct !DILexicalBlock(scope: !201, file: !176, line: 3461, column: 29)
!218 = !DILocation(line: 3463, column: 50, scope: !217)
!219 = !DILocation(line: 3462, column: 20, scope: !217)
!220 = !DILocation(line: 3461, column: 21, scope: !201)
!221 = !DILocation(line: 3461, column: 24, scope: !201)
!222 = !DILocation(line: 3465, column: 17, scope: !212)
!223 = !DILocation(line: 3465, column: 28, scope: !212)
!224 = !DILocation(line: 3465, column: 16, scope: !212)
!225 = !DILocation(line: 3466, column: 13, scope: !201)
!226 = distinct !DISubprogram(name: "call_once<closure,()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h3ac55c54819e6932E", scope: !228, file: !227, line: 238, type: !231, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !233, retainedNodes: !4)
!227 = !DIFile(filename: "libcore/ops/function.rs", directory: "")
!228 = !DINamespace(name: "FnOnce", scope: !229)
!229 = !DINamespace(name: "function", scope: !230)
!230 = !DINamespace(name: "ops", scope: !18)
!231 = !DISubroutineType(types: !232)
!232 = !{!52, !5}
!233 = !{!234, !235}
!234 = !DITemplateTypeParameter(name: "Self", type: !5)
!235 = !DITemplateTypeParameter(name: "Args", type: !36)
!236 = !DILocalVariable(arg: 1, scope: !226, file: !38, line: 1, type: !5)
!237 = !DILocation(line: 1, scope: !226)
!238 = !DILocalVariable(arg: 2, scope: !226, file: !38, line: 1, type: !36)
!239 = !DILocation(line: 238, column: 4, scope: !226)
!240 = distinct !DISubprogram(name: "drop_in_place<closure>", linkageName: "_ZN4core3ptr13drop_in_place17hcdf5f187d0cf4982E", scope: !127, file: !241, line: 59, type: !242, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !245, retainedNodes: !4)
!241 = !DIFile(filename: "libcore/ptr.rs", directory: "")
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut closure", baseType: !5, size: 64, align: 64)
!245 = !{!246}
!246 = !DITemplateTypeParameter(name: "T", type: !5)
!247 = !DILocalVariable(arg: 1, scope: !240, file: !38, line: 1, type: !244)
!248 = !DILocation(line: 1, scope: !240)
!249 = !DILocation(line: 59, scope: !240)
!250 = distinct !DISubprogram(name: "swap_nonoverlapping<usize>", linkageName: "_ZN4core3ptr19swap_nonoverlapping17h8e8f08e906c887d6E", scope: !127, file: !241, line: 183, type: !251, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !253, !253, !92}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !92, size: 64, align: 64)
!254 = !DILocalVariable(name: "x", arg: 1, scope: !250, file: !38, line: 1, type: !253)
!255 = !DILocation(line: 1, scope: !250)
!256 = !DILocalVariable(name: "y", arg: 2, scope: !250, file: !38, line: 1, type: !253)
!257 = !DILocalVariable(name: "count", arg: 3, scope: !250, file: !38, line: 1, type: !92)
!258 = !DILocalVariable(name: "x", scope: !259, file: !241, line: 184, type: !260, align: 8)
!259 = distinct !DILexicalBlock(scope: !250, file: !241, line: 184, column: 4)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !33, size: 64, align: 64)
!261 = !DILocation(line: 184, column: 8, scope: !259)
!262 = !DILocalVariable(name: "y", scope: !263, file: !241, line: 185, type: !260, align: 8)
!263 = distinct !DILexicalBlock(scope: !259, file: !241, line: 185, column: 4)
!264 = !DILocation(line: 185, column: 8, scope: !263)
!265 = !DILocalVariable(name: "len", scope: !266, file: !241, line: 186, type: !92, align: 8)
!266 = distinct !DILexicalBlock(scope: !263, file: !241, line: 186, column: 4)
!267 = !DILocation(line: 186, column: 8, scope: !266)
!268 = !DILocation(line: 184, column: 12, scope: !250)
!269 = !DILocation(line: 185, column: 12, scope: !259)
!270 = !DILocation(line: 186, column: 14, scope: !263)
!271 = !DILocation(line: 186, column: 36, scope: !263)
!272 = !DILocation(line: 187, column: 30, scope: !266)
!273 = !DILocation(line: 187, column: 33, scope: !266)
!274 = !DILocation(line: 187, column: 36, scope: !266)
!275 = !DILocation(line: 187, column: 4, scope: !266)
!276 = !DILocation(line: 188, column: 1, scope: !250)
!277 = distinct !DISubprogram(name: "swap_nonoverlapping_one<usize>", linkageName: "_ZN4core3ptr23swap_nonoverlapping_one17h5b2d88b0fc8c9977E", scope: !127, file: !241, line: 191, type: !278, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !253, !253}
!280 = !DILocalVariable(name: "x", arg: 1, scope: !277, file: !38, line: 1, type: !253)
!281 = !DILocation(line: 1, scope: !277)
!282 = !DILocalVariable(name: "y", arg: 2, scope: !277, file: !38, line: 1, type: !253)
!283 = !DILocalVariable(name: "z", scope: !284, file: !241, line: 195, type: !92, align: 8)
!284 = distinct !DILexicalBlock(scope: !277, file: !241, line: 195, column: 8)
!285 = !DILocation(line: 195, column: 12, scope: !284)
!286 = !DILocation(line: 194, column: 7, scope: !277)
!287 = !DILocation(line: 191, scope: !277)
!288 = !DILocation(line: 194, column: 4, scope: !277)
!289 = !DILocation(line: 195, column: 21, scope: !277)
!290 = !DILocation(line: 195, column: 16, scope: !277)
!291 = !DILocation(line: 199, column: 28, scope: !277)
!292 = !DILocation(line: 199, column: 31, scope: !277)
!293 = !DILocation(line: 199, column: 8, scope: !277)
!294 = !DILocation(line: 196, column: 28, scope: !284)
!295 = !DILocation(line: 196, column: 31, scope: !284)
!296 = !DILocation(line: 196, column: 8, scope: !284)
!297 = !DILocation(line: 197, column: 14, scope: !284)
!298 = !DILocation(line: 197, column: 17, scope: !284)
!299 = !DILocation(line: 197, column: 8, scope: !284)
!300 = !DILocation(line: 198, column: 4, scope: !277)
!301 = !DILocation(line: 201, column: 1, scope: !277)
!302 = distinct !DISubprogram(name: "swap_nonoverlapping_bytes", linkageName: "_ZN4core3ptr25swap_nonoverlapping_bytes17hb4f23dd709ecb651E", scope: !127, file: !241, line: 204, type: !303, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !260, !260, !92}
!305 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !38, line: 1, type: !260)
!306 = !DILocation(line: 1, scope: !302)
!307 = !DILocalVariable(name: "y", arg: 2, scope: !302, file: !38, line: 1, type: !260)
!308 = !DILocalVariable(name: "len", arg: 3, scope: !302, file: !38, line: 1, type: !92)
!309 = !DILocalVariable(name: "block_size", scope: !310, file: !241, line: 218, type: !92, align: 8)
!310 = distinct !DILexicalBlock(scope: !302, file: !241, line: 218, column: 4)
!311 = !DILocation(line: 218, column: 8, scope: !310)
!312 = !DILocalVariable(name: "i", scope: !313, file: !241, line: 223, type: !92, align: 8)
!313 = distinct !DILexicalBlock(scope: !310, file: !241, line: 223, column: 4)
!314 = !DILocation(line: 223, column: 8, scope: !313)
!315 = !DILocalVariable(name: "t", scope: !316, file: !241, line: 227, type: !125, align: 32)
!316 = distinct !DILexicalBlock(scope: !313, file: !241, line: 227, column: 8)
!317 = !DILocation(line: 227, column: 12, scope: !316)
!318 = !DILocalVariable(name: "t", scope: !319, file: !241, line: 228, type: !260, align: 8)
!319 = distinct !DILexicalBlock(scope: !316, file: !241, line: 228, column: 8)
!320 = !DILocation(line: 228, column: 12, scope: !319)
!321 = !DILocalVariable(name: "x", scope: !322, file: !241, line: 229, type: !260, align: 8)
!322 = distinct !DILexicalBlock(scope: !319, file: !241, line: 229, column: 8)
!323 = !DILocation(line: 229, column: 12, scope: !322)
!324 = !DILocalVariable(name: "y", scope: !325, file: !241, line: 230, type: !260, align: 8)
!325 = distinct !DILexicalBlock(scope: !322, file: !241, line: 230, column: 8)
!326 = !DILocation(line: 230, column: 12, scope: !325)
!327 = !DILocalVariable(name: "t", scope: !328, file: !241, line: 242, type: !140, align: 8)
!328 = distinct !DILexicalBlock(scope: !313, file: !241, line: 242, column: 8)
!329 = !DILocation(line: 242, column: 12, scope: !328)
!330 = !DILocalVariable(name: "rem", scope: !331, file: !241, line: 243, type: !92, align: 8)
!331 = distinct !DILexicalBlock(scope: !328, file: !241, line: 243, column: 8)
!332 = !DILocation(line: 243, column: 12, scope: !331)
!333 = !DILocalVariable(name: "t", scope: !334, file: !241, line: 245, type: !260, align: 8)
!334 = distinct !DILexicalBlock(scope: !331, file: !241, line: 245, column: 8)
!335 = !DILocation(line: 245, column: 12, scope: !334)
!336 = !DILocalVariable(name: "x", scope: !337, file: !241, line: 246, type: !260, align: 8)
!337 = distinct !DILexicalBlock(scope: !334, file: !241, line: 246, column: 8)
!338 = !DILocation(line: 246, column: 12, scope: !337)
!339 = !DILocalVariable(name: "y", scope: !340, file: !241, line: 247, type: !260, align: 8)
!340 = distinct !DILexicalBlock(scope: !337, file: !241, line: 247, column: 8)
!341 = !DILocation(line: 247, column: 12, scope: !340)
!342 = !DILocation(line: 218, column: 21, scope: !302)
!343 = !DILocation(line: 223, column: 16, scope: !310)
!344 = !DILocation(line: 224, column: 4, scope: !313)
!345 = !DILocation(line: 224, column: 10, scope: !313)
!346 = !DILocation(line: 224, column: 14, scope: !313)
!347 = !DILocation(line: 224, column: 28, scope: !313)
!348 = !DILocation(line: 240, column: 7, scope: !313)
!349 = !DILocation(line: 240, column: 11, scope: !313)
!350 = !DILocation(line: 240, column: 4, scope: !313)
!351 = !DILocation(line: 227, column: 27, scope: !313)
!352 = !DILocation(line: 228, column: 16, scope: !316)
!353 = !DILocation(line: 229, column: 16, scope: !319)
!354 = !DILocation(line: 229, column: 22, scope: !319)
!355 = !DILocation(line: 230, column: 16, scope: !322)
!356 = !DILocation(line: 230, column: 22, scope: !322)
!357 = !DILocation(line: 234, column: 28, scope: !325)
!358 = !DILocation(line: 234, column: 31, scope: !325)
!359 = !DILocation(line: 234, column: 34, scope: !325)
!360 = !DILocation(line: 234, column: 8, scope: !325)
!361 = !DILocation(line: 235, column: 28, scope: !325)
!362 = !DILocation(line: 235, column: 31, scope: !325)
!363 = !DILocation(line: 235, column: 34, scope: !325)
!364 = !DILocation(line: 235, column: 8, scope: !325)
!365 = !DILocation(line: 236, column: 28, scope: !325)
!366 = !DILocation(line: 236, column: 31, scope: !325)
!367 = !DILocation(line: 236, column: 34, scope: !325)
!368 = !DILocation(line: 236, column: 8, scope: !325)
!369 = !DILocation(line: 237, column: 13, scope: !325)
!370 = !DILocation(line: 237, column: 8, scope: !325)
!371 = !DILocation(line: 242, column: 36, scope: !313)
!372 = !DILocation(line: 243, column: 18, scope: !328)
!373 = !DILocation(line: 243, column: 24, scope: !328)
!374 = !DILocation(line: 245, column: 16, scope: !331)
!375 = !DILocation(line: 246, column: 16, scope: !334)
!376 = !DILocation(line: 246, column: 22, scope: !334)
!377 = !DILocation(line: 247, column: 16, scope: !337)
!378 = !DILocation(line: 247, column: 22, scope: !337)
!379 = !DILocation(line: 249, column: 28, scope: !340)
!380 = !DILocation(line: 249, column: 31, scope: !340)
!381 = !DILocation(line: 249, column: 34, scope: !340)
!382 = !DILocation(line: 249, column: 8, scope: !340)
!383 = !DILocation(line: 250, column: 28, scope: !340)
!384 = !DILocation(line: 250, column: 31, scope: !340)
!385 = !DILocation(line: 250, column: 34, scope: !340)
!386 = !DILocation(line: 250, column: 8, scope: !340)
!387 = !DILocation(line: 251, column: 28, scope: !340)
!388 = !DILocation(line: 251, column: 31, scope: !340)
!389 = !DILocation(line: 251, column: 34, scope: !340)
!390 = !DILocation(line: 251, column: 8, scope: !340)
!391 = !DILocation(line: 253, column: 1, scope: !302)
!392 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h2fa52a3c6a67619aE", scope: !393, file: !241, line: 1632, type: !394, isLocal: true, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !396, retainedNodes: !4)
!393 = !DINamespace(name: "{{impl}}", scope: !127)
!394 = !DISubroutineType(types: !395)
!395 = !{!260, !260, !92}
!396 = !{!397}
!397 = !DITemplateTypeParameter(name: "T", type: !33)
!398 = !DILocalVariable(name: "self", arg: 1, scope: !392, file: !38, line: 1, type: !260)
!399 = !DILocation(line: 1, scope: !392)
!400 = !DILocalVariable(name: "count", arg: 2, scope: !392, file: !38, line: 1, type: !92)
!401 = !DILocation(line: 1635, column: 8, scope: !392)
!402 = !DILocation(line: 1635, column: 20, scope: !392)
!403 = !DILocation(line: 1636, column: 5, scope: !392)
!404 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h81c7627fe4120de0E", scope: !393, file: !241, line: 1396, type: !405, isLocal: true, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !396, retainedNodes: !4)
!405 = !DISubroutineType(types: !406)
!406 = !{!260, !260, !30}
!407 = !DILocalVariable(name: "self", arg: 1, scope: !404, file: !38, line: 1, type: !260)
!408 = !DILocation(line: 1, scope: !404)
!409 = !DILocalVariable(name: "count", arg: 2, scope: !404, file: !38, line: 1, type: !30)
!410 = !DILocation(line: 1397, column: 27, scope: !404)
!411 = !DILocation(line: 1397, column: 33, scope: !404)
!412 = !DILocation(line: 1397, column: 8, scope: !404)
!413 = !DILocation(line: 1398, column: 5, scope: !404)
!414 = distinct !DISubprogram(name: "read<usize>", linkageName: "_ZN4core3ptr4read17h3e115e2ff3af3ee9E", scope: !127, file: !241, line: 298, type: !415, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{!92, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !92, size: 64, align: 64)
!418 = !DILocalVariable(name: "src", arg: 1, scope: !414, file: !38, line: 1, type: !417)
!419 = !DILocation(line: 1, scope: !414)
!420 = !DILocalVariable(name: "tmp", scope: !421, file: !241, line: 299, type: !92, align: 8)
!421 = distinct !DILexicalBlock(scope: !414, file: !241, line: 299, column: 4)
!422 = !DILocation(line: 299, column: 8, scope: !421)
!423 = !DILocation(line: 299, column: 21, scope: !414)
!424 = !DILocation(line: 298, scope: !414)
!425 = !DILocation(line: 300, column: 24, scope: !421)
!426 = !DILocation(line: 300, column: 4, scope: !421)
!427 = !DILocation(line: 301, column: 4, scope: !421)
!428 = !DILocation(line: 302, column: 1, scope: !414)
!429 = !DILocation(line: 302, scope: !414)
!430 = distinct !DISubprogram(name: "write<usize>", linkageName: "_ZN4core3ptr5write17h5d47e28fbefe910aE", scope: !127, file: !241, line: 375, type: !431, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !253, !92}
!433 = !DILocalVariable(name: "dst", arg: 1, scope: !430, file: !38, line: 1, type: !253)
!434 = !DILocation(line: 1, scope: !430)
!435 = !DILocalVariable(name: "src", arg: 2, scope: !430, file: !38, line: 1, type: !92)
!436 = !DILocation(line: 376, column: 30, scope: !430)
!437 = !DILocation(line: 376, column: 41, scope: !430)
!438 = !DILocation(line: 377, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h08af673f70db9933E", scope: !76, file: !75, line: 221, type: !440, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !448, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{!81, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !443, size: 64, align: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !444, file: !2, size: 128, align: 64, elements: !445, identifier: "ae1e0eec51a552d7ea6880761845a9be")
!444 = !DINamespace(name: "range", scope: !230)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !443, file: !2, baseType: !92, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !443, file: !2, baseType: !92, size: 64, align: 64, offset: 64)
!448 = !{!449}
!449 = !DITemplateTypeParameter(name: "A", type: !92)
!450 = !DILocalVariable(name: "self", arg: 1, scope: !439, file: !38, line: 1, type: !442)
!451 = !DILocation(line: 1, scope: !439)
!452 = !DILocalVariable(name: "n", scope: !453, file: !75, line: 227, type: !92, align: 8)
!453 = distinct !DILexicalBlock(scope: !439, file: !75, line: 227, column: 57)
!454 = !DILocation(line: 227, column: 24, scope: !453)
!455 = !DILocation(line: 222, column: 11, scope: !439)
!456 = !DILocation(line: 222, column: 24, scope: !439)
!457 = !DILocation(line: 221, column: 4, scope: !439)
!458 = !DILocation(line: 222, column: 8, scope: !439)
!459 = !DILocation(line: 227, column: 33, scope: !439)
!460 = !DILocation(line: 234, column: 12, scope: !439)
!461 = !DILocation(line: 227, column: 19, scope: !439)
!462 = !DILocation(line: 227, column: 24, scope: !439)
!463 = !DILocation(line: 228, column: 34, scope: !453)
!464 = !DILocation(line: 228, column: 16, scope: !453)
!465 = !DILocation(line: 231, column: 16, scope: !439)
!466 = !DILocation(line: 227, column: 12, scope: !439)
!467 = !DILocation(line: 229, column: 21, scope: !453)
!468 = !DILocation(line: 229, column: 16, scope: !453)
!469 = !DILocation(line: 232, column: 12, scope: !439)
!470 = !DILocation(line: 233, column: 8, scope: !439)
!471 = !DILocation(line: 236, column: 5, scope: !439)
!472 = distinct !DISubprogram(name: "len<i32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf9886a316153c6d6E", scope: !474, file: !473, line: 87, type: !476, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !483, retainedNodes: !4)
!473 = !DIFile(filename: "libcore/slice/mod.rs", directory: "")
!474 = !DINamespace(name: "{{impl}}", scope: !475)
!475 = !DINamespace(name: "slice", scope: !18)
!476 = !DISubroutineType(types: !477)
!477 = !{!92, !478}
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[i32]", file: !2, size: 128, align: 64, elements: !479, identifier: "bf25fbe0c75019a97b091ef74bc225c3")
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !478, file: !2, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const i32", baseType: !52, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !478, file: !2, baseType: !92, size: 64, align: 64, offset: 64)
!483 = !{!484}
!484 = !DITemplateTypeParameter(name: "T", type: !52)
!485 = !DILocalVariable(name: "self", arg: 1, scope: !472, file: !38, line: 1, type: !478)
!486 = !DILocation(line: 1, scope: !472)
!487 = !DILocation(line: 89, column: 25, scope: !488)
!488 = distinct !DILexicalBlock(scope: !472, file: !473, line: 88, column: 8)
!489 = !DILocation(line: 89, column: 12, scope: !488)
!490 = !DILocation(line: 91, column: 5, scope: !472)
!491 = distinct !DISubprogram(name: "from<usize>", linkageName: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h2980c1cda476e7c8E", scope: !493, file: !492, line: 463, type: !495, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !153, retainedNodes: !4)
!492 = !DIFile(filename: "libcore/convert.rs", directory: "")
!493 = !DINamespace(name: "{{impl}}", scope: !494)
!494 = !DINamespace(name: "convert", scope: !18)
!495 = !DISubroutineType(types: !496)
!496 = !{!92, !92}
!497 = !DILocalVariable(name: "t", arg: 1, scope: !491, file: !38, line: 1, type: !92)
!498 = !DILocation(line: 1, scope: !491)
!499 = !DILocation(line: 463, column: 25, scope: !491)
!500 = !DILocation(line: 463, column: 28, scope: !491)
!501 = distinct !DISubprogram(name: "try_from<usize,usize>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h2cc47ee77e12255cE", scope: !493, file: !492, line: 484, type: !502, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !511, retainedNodes: !4)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !92}
!504 = !DICompositeType(tag: DW_TAG_union_type, name: "Result<usize, !>", scope: !505, file: !2, size: 64, align: 64, elements: !506, identifier: "7bbb51628d028a0786fc2c53642d3815")
!505 = !DINamespace(name: "result", scope: !18)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !2, baseType: !508, size: 64, align: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !505, file: !2, size: 64, align: 64, elements: !509, identifier: "7bbb51628d028a0786fc2c53642d3815::Ok")
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !508, file: !2, baseType: !92, size: 64, align: 64)
!511 = !{!154, !512}
!512 = !DITemplateTypeParameter(name: "U", type: !92)
!513 = !DILocalVariable(name: "value", arg: 1, scope: !501, file: !38, line: 1, type: !92)
!514 = !DILocation(line: 1, scope: !501)
!515 = !DILocation(line: 485, column: 19, scope: !501)
!516 = !DILocation(line: 485, column: 11, scope: !501)
!517 = !DILocation(line: 485, column: 8, scope: !501)
!518 = !DILocation(line: 486, column: 5, scope: !501)
!519 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6ed6329d53f6babeE", scope: !521, file: !520, line: 1508, type: !523, isLocal: true, isDefinition: true, scopeLine: 1508, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!520 = !DIFile(filename: "libstd/process.rs", directory: "")
!521 = !DINamespace(name: "{{impl}}", scope: !522)
!522 = !DINamespace(name: "process", scope: !27)
!523 = !DISubroutineType(types: !524)
!524 = !{!52, !36}
!525 = !DILocalVariable(name: "self", arg: 1, scope: !519, file: !38, line: 1, type: !36)
!526 = !DILocation(line: 1, scope: !519)
!527 = !DILocation(line: 1508, column: 29, scope: !519)
!528 = !DILocation(line: 1508, column: 57, scope: !519)
!529 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<usize>>", linkageName: "_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h4c4314c22fcf64f6E", scope: !531, file: !530, line: 259, type: !533, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !535, retainedNodes: !4)
!530 = !DIFile(filename: "libcore/iter/traits.rs", directory: "")
!531 = !DINamespace(name: "{{impl}}", scope: !532)
!532 = !DINamespace(name: "traits", scope: !78)
!533 = !DISubroutineType(types: !534)
!534 = !{!443, !443}
!535 = !{!536}
!536 = !DITemplateTypeParameter(name: "I", type: !443)
!537 = !DILocalVariable(name: "self", arg: 1, scope: !529, file: !38, line: 1, type: !443)
!538 = !DILocation(line: 1, scope: !529)
!539 = !DILocation(line: 260, column: 8, scope: !529)
!540 = !DILocation(line: 261, column: 5, scope: !529)
!541 = distinct !DISubprogram(name: "report", linkageName: "_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h2c6dfc893d38975eE", scope: !521, file: !520, line: 1538, type: !542, isLocal: true, isDefinition: true, scopeLine: 1538, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{!52, !544}
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !522, file: !2, size: 8, align: 8, elements: !545, identifier: "dd61d10f0ea53ae2244dd64909fccd1")
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !544, file: !2, baseType: !60, size: 8, align: 8)
!547 = !DILocalVariable(name: "self", arg: 1, scope: !541, file: !38, line: 1, type: !544)
!548 = !DILocation(line: 1, scope: !541)
!549 = !DILocation(line: 1539, column: 8, scope: !541)
!550 = !DILocation(line: 1540, column: 5, scope: !541)
!551 = distinct !DISubprogram(name: "main", linkageName: "_ZN9reduction4main17h7e25980b9ee16ef8E", scope: !552, file: !14, line: 1, type: !9, isLocal: true, isDefinition: true, scopeLine: 1, flags: DIFlagPrototyped | DIFlagMainSubprogram, isOptimized: false, unit: !13, templateParams: !4, retainedNodes: !4)
!552 = !DINamespace(name: "reduction", scope: null)
!553 = !DILocalVariable(name: "a", scope: !554, file: !14, line: 2, type: !52, align: 4)
!554 = distinct !DILexicalBlock(scope: !551, file: !14, line: 2, column: 4)
!555 = !DILocation(line: 2, column: 8, scope: !554)
!556 = !DILocalVariable(name: "c", scope: !557, file: !14, line: 5, type: !52, align: 4)
!557 = distinct !DILexicalBlock(scope: !554, file: !14, line: 5, column: 4)
!558 = !DILocation(line: 5, column: 8, scope: !557)
!559 = !DILocalVariable(name: "b", scope: !560, file: !14, line: 7, type: !52, align: 4)
!560 = distinct !DILexicalBlock(scope: !557, file: !14, line: 7, column: 4)
!561 = !DILocation(line: 7, column: 8, scope: !560)
!562 = !DILocalVariable(name: "arr", scope: !563, file: !14, line: 9, type: !564, align: 4)
!563 = distinct !DILexicalBlock(scope: !560, file: !14, line: 9, column: 4)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, align: 32, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 5)
!567 = !DILocation(line: 9, column: 8, scope: !563)
!568 = !DILocalVariable(name: "_result", scope: !569, file: !14, line: 10, type: !36, align: 1)
!569 = distinct !DILexicalBlock(scope: !563, file: !14, line: 10, column: 4)
!570 = !DILocation(line: 10, column: 4, scope: !569)
!571 = !DILocalVariable(name: "iter", scope: !572, file: !14, line: 10, type: !443, align: 8)
!572 = distinct !DILexicalBlock(scope: !563, file: !14, line: 10, column: 4)
!573 = !DILocation(line: 10, column: 13, scope: !572)
!574 = !DILocalVariable(name: "__next", scope: !575, file: !14, line: 10, type: !92, align: 8)
!575 = distinct !DILexicalBlock(scope: !572, file: !14, line: 10, column: 13)
!576 = !DILocation(line: 10, column: 13, scope: !575)
!577 = !DILocalVariable(name: "val", scope: !578, file: !14, line: 10, type: !92, align: 8)
!578 = distinct !DILexicalBlock(scope: !575, file: !14, line: 10, column: 8)
!579 = !DILocation(line: 10, column: 8, scope: !578)
!580 = !DILocalVariable(name: "i", scope: !581, file: !14, line: 10, type: !92, align: 8)
!581 = distinct !DILexicalBlock(scope: !575, file: !14, line: 10, column: 13)
!582 = !DILocation(line: 10, column: 8, scope: !581)
!583 = !DILocation(line: 3, column: 4, scope: !554)
!584 = !DILocation(line: 4, column: 4, scope: !554)
!585 = !DILocation(line: 6, column: 8, scope: !557)
!586 = !DILocation(line: 6, column: 4, scope: !557)
!587 = !DILocation(line: 8, column: 8, scope: !560)
!588 = !DILocation(line: 8, column: 4, scope: !560)
!589 = !DILocation(line: 9, column: 28, scope: !560)
!590 = !DILocation(line: 10, column: 16, scope: !563)
!591 = !DILocation(line: 10, column: 13, scope: !563)
!592 = !DILocation(line: 10, column: 8, scope: !575)
!593 = !DILocation(line: 14, column: 4, scope: !563)
!594 = !DILocation(line: 15, column: 1, scope: !551)
!595 = !DILocation(line: 11, column: 12, scope: !581)
!596 = !DILocation(line: 11, column: 8, scope: !581)
!597 = !DILocation(line: 10, column: 4, scope: !572)
