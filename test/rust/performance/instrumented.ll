; ModuleID = 'instrumented_perf.ll'
source_filename = "perf_test.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::result::Result<u32, core::num::TryFromIntError>::Ok" = type { [1 x i32], i32, [0 x i32] }
%"core::option::Option<i32>::Some" = type { [1 x i32], i32, [0 x i32] }
%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock" = type { [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64], i64, [0 x i64] }
%"core::num::TryFromIntError" = type { [0 x i8], {}, [0 x i8] }
%"core::result::Result<u32, core::num::TryFromIntError>::Err" = type { [4 x i8], %"core::num::TryFromIntError", [0 x i8] }
%"core::option::Option<usize>::Some" = type { [1 x i64], i64, [0 x i64] }
%"core::slice::Repr<i32>" = type { [2 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* } { void (i8**)* @_ZN4core3ptr13drop_in_place17h16e064066759387eE, i64 8, i64 8, i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc4f2e98993f8b97bE", i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc4f2e98993f8b97bE", i32 (i8*)* @_ZN4core3ops8function6FnOnce9call_once17h7d9653f498fabafbE }, align 8, !dbg !0
@str.1 = internal constant [12 x i8] c"perf_test.rs"
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@panic_loc.3 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 14, i32 28 }, align 8
@panic_loc.4 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 14, i32 47 }, align 8
@str.5 = internal constant [28 x i8] c"attempt to add with overflow"
@panic_loc.6 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 14, i32 16 }, align 8
@panic_loc.7 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 26, i32 13 }, align 8
@str.8 = internal constant [33 x i8] c"attempt to multiply with overflow"
@panic_loc.9 = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.8 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 27, i32 13 }, align 8
@panic_loc.a = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 28, i32 13 }, align 8
@panic_loc.b = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.8 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 33, i32 13 }, align 8
@panic_loc.c = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 34, i32 13 }, align 8
@panic_loc.d = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 36, i32 13 }, align 8
@panic_bounds_check_loc.e = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 37, i32 20 }, align 8
@panic_loc.f = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.8 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 37, i32 20 }, align 8
@panic_loc.g = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 37, i32 20 }, align 8
@panic_bounds_check_loc.h = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 44, i32 27 }, align 8
@panic_loc.i = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 44, i32 18 }, align 8
@panic_bounds_check_loc.j = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 45, i32 27 }, align 8
@panic_loc.k = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 45, i32 18 }, align 8
@panic_loc.l = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([28 x i8]* @str.5 to [0 x i8]*), i64 28 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 52, i32 13 }, align 8
@panic_loc.m = private unnamed_addr constant { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([33 x i8]* @str.8 to [0 x i8]*), i64 33 }, { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 53, i32 13 }, align 8
@panic_bounds_check_loc.n = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 70, i32 9 }, align 8
@panic_bounds_check_loc.o = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 77, i32 19 }, align 8
@panic_bounds_check_loc.p = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 78, i32 23 }, align 8
@panic_bounds_check_loc.q = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 78, i32 9 }, align 8
@panic_bounds_check_loc.r = private unnamed_addr constant { { [0 x i8]*, i64 }, i32, i32 } { { [0 x i8]*, i64 } { [0 x i8]* bitcast ([12 x i8]* @str.1 to [0 x i8]*), i64 12 }, i32 79, i32 9 }, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; Function Attrs: uwtable
define hidden i64 @_ZN3std2rt10lang_start17h7affe8c14f915b36E(void ()* nonnull, i64, i8**) unnamed_addr #0 !dbg !31 {
start:
  %_7 = alloca i8*, align 8
  %argv = alloca i8**, align 8
  %argc = alloca i64, align 8
  %main = alloca void ()*, align 8
  store void ()* %0, void ()** %main, align 8
  call void @llvm.dbg.declare(metadata void ()** %main, metadata !44, metadata !DIExpression()), !dbg !46
  store i64 %1, i64* %argc, align 8
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !47, metadata !DIExpression()), !dbg !46
  store i8** %2, i8*** %argv, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv, metadata !48, metadata !DIExpression()), !dbg !46
  %3 = bitcast i8** %_7 to void ()**, !dbg !49
  %4 = load void ()*, void ()** %main, align 8, !dbg !49, !nonnull !4
  store void ()* %4, void ()** %3, align 8, !dbg !49
  %5 = bitcast i8** %_7 to {}*, !dbg !50
  %6 = load i64, i64* %argc, align 8, !dbg !51
  %7 = load i8**, i8*** %argv, align 8, !dbg !52
  %8 = call i64 @_ZN3std2rt19lang_start_internal17hce01021c3c1cf20dE({}* nonnull %5, [3 x i64]* noalias readonly dereferenceable(24) bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* }* @vtable.0 to [3 x i64]*), i64 %6, i8** %7), !dbg !53
  br label %bb1, !dbg !53

bb1:                                              ; preds = %start
  ret i64 %8, !dbg !54
}

; Function Attrs: uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc4f2e98993f8b97bE"(i8** noalias readonly dereferenceable(8)) unnamed_addr #0 !dbg !55 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !61, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 0)), !dbg !62
  %1 = load i8**, i8*** %arg0, align 8, !dbg !63, !nonnull !4
  %2 = bitcast i8** %1 to void ()**, !dbg !63
  %3 = load void ()*, void ()** %2, align 8, !dbg !63, !nonnull !4
  call void %3(), !dbg !63
  br label %bb1, !dbg !63

bb1:                                              ; preds = %start
  %4 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h2ce349b3cfa04c0aE"(), !dbg !63
  br label %bb2, !dbg !63

bb2:                                              ; preds = %bb1
  ret i32 %4, !dbg !64
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7d2962ee37187ce9E(i8* noalias readonly dereferenceable(1)) unnamed_addr #1 !dbg !65 {
start:
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !77, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %self, align 8, !dbg !79, !nonnull !4
  %2 = load i8, i8* %1, align 1, !dbg !79
  %3 = zext i8 %2 to i32, !dbg !79
  ret i32 %3, !dbg !80
}

; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$9add_usize17h79dc291b52b89b16E"(i32* noalias readonly dereferenceable(4), i64) unnamed_addr #1 !dbg !81 {
start:
  %wrapped = alloca i32, align 4
  %n_as_unsigned = alloca i32, align 4
  %_6 = alloca { i32, i32 }*, align 8
  %_3 = alloca { i32, i32 }, align 4
  %_0 = alloca { i32, i32 }, align 4
  %n = alloca i64, align 8
  %self = alloca i32*, align 8
  store i32* %0, i32** %self, align 8
  call void @llvm.dbg.declare(metadata i32** %self, metadata !101, metadata !DIExpression()), !dbg !102
  store i64 %1, i64* %n, align 8
  call void @llvm.dbg.declare(metadata i64* %n, metadata !103, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %n_as_unsigned, metadata !104, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %wrapped, metadata !107, metadata !DIExpression()), !dbg !109
  %2 = load i64, i64* %n, align 8, !dbg !110
  %3 = call { i32, i32 } @"_ZN4core3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$usize$GT$$u20$for$u20$u32$GT$8try_from17h76060844654e5189E"(i64 %2), !dbg !111
  store { i32, i32 } %3, { i32, i32 }* %_3, align 4, !dbg !111
  br label %bb1, !dbg !111

bb1:                                              ; preds = %start
  %4 = bitcast { i32, i32 }* %_3 to i32*, !dbg !111
  %5 = load i32, i32* %4, align 4, !dbg !111, !range !112
  %6 = zext i32 %5 to i64, !dbg !111
  store { i32, i32 }* %_3, { i32, i32 }** %_6, align 8, !dbg !111
  %7 = bitcast { i32, i32 }* %_3 to i32*, !dbg !113
  %8 = load i32, i32* %7, align 4, !dbg !113, !range !112
  %9 = zext i32 %8 to i64, !dbg !113
  switch i64 %9, label %bb4 [
    i64 0, label %bb2
    i64 1, label %bb3
  ], !dbg !113

bb2:                                              ; preds = %bb1
  %10 = bitcast { i32, i32 }* %_3 to %"core::result::Result<u32, core::num::TryFromIntError>::Ok"*, !dbg !114
  %11 = getelementptr inbounds %"core::result::Result<u32, core::num::TryFromIntError>::Ok", %"core::result::Result<u32, core::num::TryFromIntError>::Ok"* %10, i32 0, i32 1, !dbg !114
  %12 = load i32, i32* %11, align 4, !dbg !114
  store i32 %12, i32* %n_as_unsigned, align 4, !dbg !114
  %13 = load i32*, i32** %self, align 8, !dbg !115, !nonnull !4
  %14 = load i32, i32* %13, align 4, !dbg !115
  %15 = load i32, i32* %n_as_unsigned, align 4, !dbg !116
  %16 = call i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17h3ee6f379427e8362E"(i32 %14, i32 %15), !dbg !117
  br label %bb6, !dbg !117

bb3:                                              ; preds = %bb1
  %17 = bitcast { i32, i32 }* %_0 to i32*, !dbg !118
  store i32 0, i32* %17, align 4, !dbg !118
  br label %bb5, !dbg !119

bb4:                                              ; preds = %bb1
  unreachable, !dbg !120

bb5:                                              ; preds = %bb9, %bb3
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 0, !dbg !120
  %19 = load i32, i32* %18, align 4, !dbg !120, !range !112
  %20 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 1, !dbg !120
  %21 = load i32, i32* %20, align 4, !dbg !120
  %22 = insertvalue { i32, i32 } undef, i32 %19, 0, !dbg !120
  %23 = insertvalue { i32, i32 } %22, i32 %21, 1, !dbg !120
  ret { i32, i32 } %23, !dbg !120

bb6:                                              ; preds = %bb2
  store i32 %16, i32* %wrapped, align 4, !dbg !117
  %24 = load i32, i32* %wrapped, align 4, !dbg !121
  %25 = load i32*, i32** %self, align 8, !dbg !122, !nonnull !4
  %26 = load i32, i32* %25, align 4, !dbg !122
  %27 = icmp sge i32 %24, %26, !dbg !121
  br i1 %27, label %bb7, label %bb8, !dbg !123

bb7:                                              ; preds = %bb6
  %28 = load i32, i32* %wrapped, align 4, !dbg !124
  %29 = bitcast { i32, i32 }* %_0 to %"core::option::Option<i32>::Some"*, !dbg !125
  %30 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %29, i32 0, i32 1, !dbg !125
  store i32 %28, i32* %30, align 4, !dbg !125
  %31 = bitcast { i32, i32 }* %_0 to i32*, !dbg !125
  store i32 1, i32* %31, align 4, !dbg !125
  br label %bb9, !dbg !123

bb8:                                              ; preds = %bb6
  %32 = bitcast { i32, i32 }* %_0 to i32*, !dbg !126
  store i32 0, i32* %32, align 4, !dbg !126
  br label %bb9, !dbg !123

bb9:                                              ; preds = %bb8, %bb7
  br label %bb5, !dbg !119
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h6c1353dfecf7f2dbE"(i64* noalias readonly dereferenceable(8), i64) unnamed_addr #1 !dbg !127 {
start:
  %n_as_t = alloca i64, align 8
  %_6 = alloca i64*, align 8
  %_3 = alloca i64, align 8
  %n = alloca i64, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  call void @llvm.dbg.declare(metadata i64** %self, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %1, i64* %n, align 8
  call void @llvm.dbg.declare(metadata i64* %n, metadata !144, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i64* %n_as_t, metadata !145, metadata !DIExpression()), !dbg !147
  %2 = load i64, i64* %n, align 8, !dbg !148
  %3 = call i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17hbf730dd35793f61eE"(i64 %2), !dbg !149
  store i64 %3, i64* %_3, align 8, !dbg !149
  br label %bb1, !dbg !149

bb1:                                              ; preds = %start
  store i64* %_3, i64** %_6, align 8, !dbg !149
  %4 = load i64, i64* %_3, align 8, !dbg !150
  store i64 %4, i64* %n_as_t, align 8, !dbg !150
  %5 = load i64*, i64** %self, align 8, !dbg !151, !nonnull !4
  %6 = load i64, i64* %5, align 8, !dbg !151
  %7 = load i64, i64* %n_as_t, align 8, !dbg !152
  %8 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h36646f663c3aa161E"(i64 %6, i64 %7), !dbg !151
  %9 = extractvalue { i64, i64 } %8, 0, !dbg !151
  %10 = extractvalue { i64, i64 } %8, 1, !dbg !151
  br label %bb2, !dbg !151

bb2:                                              ; preds = %bb1
  %11 = insertvalue { i64, i64 } undef, i64 %9, 0, !dbg !153
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1, !dbg !153
  ret { i64, i64 } %12, !dbg !153
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h158c42edafe7321bE"(i32* noalias readonly dereferenceable(4), i32* noalias readonly dereferenceable(4)) unnamed_addr #1 !dbg !154 {
start:
  %other = alloca i32*, align 8
  %self = alloca i32*, align 8
  store i32* %0, i32** %self, align 8
  call void @llvm.dbg.declare(metadata i32** %self, metadata !162, metadata !DIExpression()), !dbg !163
  store i32* %1, i32** %other, align 8
  call void @llvm.dbg.declare(metadata i32** %other, metadata !164, metadata !DIExpression()), !dbg !163
  %2 = load i32*, i32** %self, align 8, !dbg !165, !nonnull !4
  %3 = load i32, i32* %2, align 4, !dbg !165
  %4 = load i32*, i32** %other, align 8, !dbg !166, !nonnull !4
  %5 = load i32, i32* %4, align 4, !dbg !166
  %6 = icmp slt i32 %3, %5, !dbg !165
  ret i1 %6, !dbg !167
}

; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hfd694ddb79f3bc88E"(i64* noalias readonly dereferenceable(8), i64* noalias readonly dereferenceable(8)) unnamed_addr #1 !dbg !168 {
start:
  %other = alloca i64*, align 8
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  call void @llvm.dbg.declare(metadata i64** %self, metadata !171, metadata !DIExpression()), !dbg !172
  store i64* %1, i64** %other, align 8
  call void @llvm.dbg.declare(metadata i64** %other, metadata !173, metadata !DIExpression()), !dbg !172
  %2 = load i64*, i64** %self, align 8, !dbg !174, !nonnull !4
  %3 = load i64, i64* %2, align 8, !dbg !174
  %4 = load i64*, i64** %other, align 8, !dbg !175, !nonnull !4
  %5 = load i64, i64* %4, align 8, !dbg !175
  %6 = icmp ult i64 %3, %5, !dbg !174
  ret i1 %6, !dbg !176
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem13uninitialized17h023b0420eda21312E() unnamed_addr #1 !dbg !177 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !184
  br label %bb1, !dbg !184

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !185
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3mem13uninitialized17h636d8a459a42d744E() unnamed_addr #1 !dbg !186 {
start:
  %tmp_ret = alloca i32, align 4
  %0 = load i32, i32* %tmp_ret, align 4, !dbg !191
  br label %bb1, !dbg !191

bb1:                                              ; preds = %start
  ret i32 %0, !dbg !192
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h7c4236fb8e45cf4cE(%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !193 {
start:
  br label %bb1, !dbg !206

bb1:                                              ; preds = %start
  ret void, !dbg !207
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem13uninitialized17h8b61384b076b6767E(<4 x i64>* noalias nocapture sret dereferenceable(32)) unnamed_addr #1 !dbg !208 {
start:
  br label %bb1, !dbg !219

bb1:                                              ; preds = %start
  ret void, !dbg !220
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem4swap17h1f2f35506b7c0874E(i64* dereferenceable(8), i64* dereferenceable(8)) unnamed_addr #1 !dbg !221 {
start:
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !225, metadata !DIExpression()), !dbg !226
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !227, metadata !DIExpression()), !dbg !226
  %2 = load i64*, i64** %x, align 8, !dbg !228, !nonnull !4
  %3 = load i64*, i64** %y, align 8, !dbg !230, !nonnull !4
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h9fe699dc0cfd3a59E(i64* %2, i64* %3), !dbg !231
  br label %bb1, !dbg !231

bb1:                                              ; preds = %start
  ret void, !dbg !232
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3mem4swap17h224e27c3c32afdc7E(i32* dereferenceable(4), i32* dereferenceable(4)) unnamed_addr #1 !dbg !233 {
start:
  %y = alloca i32*, align 8
  %x = alloca i32*, align 8
  store i32* %0, i32** %x, align 8
  call void @llvm.dbg.declare(metadata i32** %x, metadata !237, metadata !DIExpression()), !dbg !238
  store i32* %1, i32** %y, align 8
  call void @llvm.dbg.declare(metadata i32** %y, metadata !239, metadata !DIExpression()), !dbg !238
  %2 = load i32*, i32** %x, align 8, !dbg !240, !nonnull !4
  %3 = load i32*, i32** %y, align 8, !dbg !242, !nonnull !4
  call void @_ZN4core3ptr23swap_nonoverlapping_one17h1b051df1f066314cE(i32* %2, i32* %3), !dbg !243
  br label %bb1, !dbg !243

bb1:                                              ; preds = %start
  ret void, !dbg !244
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem7size_of17h743dff8980294f5cE() unnamed_addr #1 !dbg !245 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 32, i64* %tmp_ret, align 8, !dbg !246
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !246
  br label %bb1, !dbg !246

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !247
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem7size_of17h92f70eaaba1285dfE() unnamed_addr #1 !dbg !248 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 8, i64* %tmp_ret, align 8, !dbg !249
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !249
  br label %bb1, !dbg !249

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !250
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem7size_of17he4983235a16c143aE() unnamed_addr #1 !dbg !251 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 4, i64* %tmp_ret, align 8, !dbg !252
  %0 = load i64, i64* %tmp_ret, align 8, !dbg !252
  br label %bb1, !dbg !252

bb1:                                              ; preds = %start
  ret i64 %0, !dbg !253
}

; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @"_ZN4core3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$usize$GT$$u20$for$u20$u32$GT$8try_from17h76060844654e5189E"(i64) unnamed_addr #1 !dbg !254 {
start:
  %_7 = alloca {}, align 1
  %_6 = alloca %"core::num::TryFromIntError", align 1
  %_0 = alloca { i32, i32 }, align 4
  %u = alloca i64, align 8
  store i64 %0, i64* %u, align 8
  call void @llvm.dbg.declare(metadata i64* %u, metadata !276, metadata !DIExpression()), !dbg !277
  %1 = load i64, i64* %u, align 8, !dbg !278
  %2 = call i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$9max_value17h5454891719db0e4bE"(), !dbg !279
  br label %bb1, !dbg !279

bb1:                                              ; preds = %start
  %3 = zext i32 %2 to i64, !dbg !280
  %4 = icmp ugt i64 %1, %3, !dbg !278
  br i1 %4, label %bb2, label %bb3, !dbg !281

bb2:                                              ; preds = %bb1
  %5 = bitcast %"core::num::TryFromIntError"* %_6 to {}*, !dbg !282
  %6 = bitcast { i32, i32 }* %_0 to %"core::result::Result<u32, core::num::TryFromIntError>::Err"*, !dbg !283
  %7 = getelementptr inbounds %"core::result::Result<u32, core::num::TryFromIntError>::Err", %"core::result::Result<u32, core::num::TryFromIntError>::Err"* %6, i32 0, i32 1, !dbg !283
  %8 = bitcast { i32, i32 }* %_0 to i32*, !dbg !283
  store i32 1, i32* %8, align 4, !dbg !283
  br label %bb4, !dbg !281

bb3:                                              ; preds = %bb1
  %9 = load i64, i64* %u, align 8, !dbg !284
  %10 = trunc i64 %9 to i32, !dbg !284
  %11 = bitcast { i32, i32 }* %_0 to %"core::result::Result<u32, core::num::TryFromIntError>::Ok"*, !dbg !285
  %12 = getelementptr inbounds %"core::result::Result<u32, core::num::TryFromIntError>::Ok", %"core::result::Result<u32, core::num::TryFromIntError>::Ok"* %11, i32 0, i32 1, !dbg !285
  store i32 %10, i32* %12, align 4, !dbg !285
  %13 = bitcast { i32, i32 }* %_0 to i32*, !dbg !285
  store i32 0, i32* %13, align 4, !dbg !285
  br label %bb4, !dbg !281

bb4:                                              ; preds = %bb3, %bb2
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 0, !dbg !286
  %15 = load i32, i32* %14, align 4, !dbg !286, !range !112
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 1, !dbg !286
  %17 = load i32, i32* %16, align 4, !dbg !286
  %18 = insertvalue { i32, i32 } undef, i32 %15, 0, !dbg !286
  %19 = insertvalue { i32, i32 } %18, i32 %17, 1, !dbg !286
  ret { i32, i32 } %19, !dbg !286
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17h3ee6f379427e8362E"(i32, i32) unnamed_addr #1 !dbg !287 {
start:
  %tmp_ret = alloca i32, align 4
  %rhs = alloca i32, align 4
  %self = alloca i32, align 4
  store i32 %0, i32* %self, align 4
  call void @llvm.dbg.declare(metadata i32* %self, metadata !291, metadata !DIExpression()), !dbg !292
  store i32 %1, i32* %rhs, align 4
  call void @llvm.dbg.declare(metadata i32* %rhs, metadata !293, metadata !DIExpression()), !dbg !292
  %2 = load i32, i32* %self, align 4, !dbg !294
  %3 = load i32, i32* %rhs, align 4, !dbg !296
  %4 = add i32 %2, %3, !dbg !297
  store i32 %4, i32* %tmp_ret, align 4, !dbg !297
  %5 = load i32, i32* %tmp_ret, align 4, !dbg !297
  br label %bb1, !dbg !297

bb1:                                              ; preds = %start
  ret i32 %5, !dbg !298
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$9max_value17h5454891719db0e4bE"() unnamed_addr #1 !dbg !299 {
start:
  ret i32 -1, !dbg !302
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h36646f663c3aa161E"(i64, i64) unnamed_addr #1 !dbg !303 {
start:
  %b = alloca i8, align 1
  %a = alloca i64, align 8
  %_0 = alloca { i64, i64 }, align 8
  %rhs = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  call void @llvm.dbg.declare(metadata i64* %self, metadata !306, metadata !DIExpression()), !dbg !307
  store i64 %1, i64* %rhs, align 8
  call void @llvm.dbg.declare(metadata i64* %rhs, metadata !308, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i64* %a, metadata !309, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i8* %b, metadata !312, metadata !DIExpression()), !dbg !313
  %2 = load i64, i64* %self, align 8, !dbg !314
  %3 = load i64, i64* %rhs, align 8, !dbg !315
  %4 = call { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hafece3919b534ca9E"(i64 %2, i64 %3), !dbg !314
  %5 = extractvalue { i64, i8 } %4, 0, !dbg !314
  %6 = extractvalue { i64, i8 } %4, 1, !dbg !314
  %7 = trunc i8 %6 to i1, !dbg !314
  br label %bb1, !dbg !314

bb1:                                              ; preds = %start
  store i64 %5, i64* %a, align 8, !dbg !316
  %8 = zext i1 %7 to i8, !dbg !317
  store i8 %8, i8* %b, align 1, !dbg !317
  %9 = load i8, i8* %b, align 1, !dbg !318, !range !319
  %10 = trunc i8 %9 to i1, !dbg !318
  br i1 %10, label %bb2, label %bb3, !dbg !320

bb2:                                              ; preds = %bb1
  %11 = bitcast { i64, i64 }* %_0 to i64*, !dbg !321
  store i64 0, i64* %11, align 8, !dbg !321
  br label %bb4, !dbg !320

bb3:                                              ; preds = %bb1
  %12 = load i64, i64* %a, align 8, !dbg !322
  %13 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*, !dbg !323
  %14 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %13, i32 0, i32 1, !dbg !323
  store i64 %12, i64* %14, align 8, !dbg !323
  %15 = bitcast { i64, i64 }* %_0 to i64*, !dbg !323
  store i64 1, i64* %15, align 8, !dbg !323
  br label %bb4, !dbg !320

bb4:                                              ; preds = %bb3, %bb2
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0, !dbg !324
  %17 = load i64, i64* %16, align 8, !dbg !324, !range !325
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1, !dbg !324
  %19 = load i64, i64* %18, align 8, !dbg !324
  %20 = insertvalue { i64, i64 } undef, i64 %17, 0, !dbg !324
  %21 = insertvalue { i64, i64 } %20, i64 %19, 1, !dbg !324
  ret { i64, i64 } %21, !dbg !324
}

; Function Attrs: inlinehint uwtable
define internal { i64, i8 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hafece3919b534ca9E"(i64, i64) unnamed_addr #1 !dbg !326 {
start:
  %tmp_ret = alloca { i64, i8 }, align 8
  %b = alloca i8, align 1
  %a = alloca i64, align 8
  %_0 = alloca { i64, i8 }, align 8
  %rhs = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  call void @llvm.dbg.declare(metadata i64* %self, metadata !333, metadata !DIExpression()), !dbg !334
  store i64 %1, i64* %rhs, align 8
  call void @llvm.dbg.declare(metadata i64* %rhs, metadata !335, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i64* %a, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i8* %b, metadata !339, metadata !DIExpression()), !dbg !340
  %2 = load i64, i64* %self, align 8, !dbg !341
  %3 = load i64, i64* %rhs, align 8, !dbg !343
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 %3), !dbg !344
  %5 = extractvalue { i64, i1 } %4, 0, !dbg !344
  %6 = extractvalue { i64, i1 } %4, 1, !dbg !344
  %7 = zext i1 %6 to i8, !dbg !344
  %8 = bitcast { i64, i8 }* %tmp_ret to i64*, !dbg !344
  store i64 %5, i64* %8, align 8, !dbg !344
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1, !dbg !344
  store i8 %7, i8* %9, align 1, !dbg !344
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 0, !dbg !344
  %11 = load i64, i64* %10, align 8, !dbg !344
  %12 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %tmp_ret, i32 0, i32 1, !dbg !344
  %13 = load i8, i8* %12, align 8, !dbg !344, !range !319
  %14 = trunc i8 %13 to i1, !dbg !344
  br label %bb1, !dbg !344

bb1:                                              ; preds = %start
  store i64 %11, i64* %a, align 8, !dbg !345
  %15 = zext i1 %14 to i8, !dbg !346
  store i8 %15, i8* %b, align 1, !dbg !346
  %16 = load i64, i64* %a, align 8, !dbg !347
  %17 = load i8, i8* %b, align 1, !dbg !348, !range !319
  %18 = trunc i8 %17 to i1, !dbg !348
  %19 = bitcast { i64, i8 }* %_0 to i64*, !dbg !349
  store i64 %16, i64* %19, align 8, !dbg !349
  %20 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1, !dbg !349
  %21 = zext i1 %18 to i8, !dbg !349
  store i8 %21, i8* %20, align 1, !dbg !349
  %22 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 0, !dbg !350
  %23 = load i64, i64* %22, align 8, !dbg !350
  %24 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1, !dbg !350
  %25 = load i8, i8* %24, align 8, !dbg !350, !range !319
  %26 = trunc i8 %25 to i1, !dbg !350
  %27 = insertvalue { i64, i8 } undef, i64 %23, 0, !dbg !350
  %28 = zext i1 %26 to i8, !dbg !350
  %29 = insertvalue { i64, i8 } %27, i8 %28, 1, !dbg !350
  ret { i64, i8 } %29, !dbg !350
}

; Function Attrs: uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h7d9653f498fabafbE(i8* nonnull) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !351 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %arg1 = alloca {}, align 1
  %arg0 = alloca i8*, align 8
  store i8* %0, i8** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8** %arg0, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata {}* %arg1, metadata !363, metadata !DIExpression()), !dbg !362
  %1 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc4f2e98993f8b97bE"(i8** dereferenceable(8) %arg0)
          to label %bb1 unwind label %cleanup, !dbg !364

bb1:                                              ; preds = %start
  br label %bb2, !dbg !364

bb2:                                              ; preds = %bb1
  ret i32 %1, !dbg !364

bb3:                                              ; preds = %cleanup
  br label %bb4, !dbg !364

bb4:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !364
  %3 = load i8*, i8** %2, align 8, !dbg !364
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !364
  %5 = load i32, i32* %4, align 4, !dbg !364
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !364
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !364
  resume { i8*, i32 } %7, !dbg !364

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
define internal void @_ZN4core3ptr13drop_in_place17h16e064066759387eE(i8**) unnamed_addr #0 !dbg !365 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !372, metadata !DIExpression()), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17h2b7b1a21c87c27c6E(i64*, i64*, i64) unnamed_addr #1 !dbg !375 {
start:
  %len = alloca i64, align 8
  %y2 = alloca i8*, align 8
  %x1 = alloca i8*, align 8
  %count = alloca i64, align 8
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !379, metadata !DIExpression()), !dbg !380
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !381, metadata !DIExpression()), !dbg !380
  store i64 %2, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !382, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i8** %x1, metadata !383, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i8** %y2, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i64* %len, metadata !390, metadata !DIExpression()), !dbg !392
  %3 = load i64*, i64** %x, align 8, !dbg !393
  %4 = bitcast i64* %3 to i8*, !dbg !393
  store i8* %4, i8** %x1, align 8, !dbg !393
  %5 = load i64*, i64** %y, align 8, !dbg !394
  %6 = bitcast i64* %5 to i8*, !dbg !394
  store i8* %6, i8** %y2, align 8, !dbg !394
  %7 = call i64 @_ZN4core3mem7size_of17h92f70eaaba1285dfE(), !dbg !395
  br label %bb1, !dbg !395

bb1:                                              ; preds = %start
  %8 = load i64, i64* %count, align 8, !dbg !396
  %9 = mul i64 %7, %8, !dbg !395
  store i64 %9, i64* %len, align 8, !dbg !395
  %10 = load i8*, i8** %x1, align 8, !dbg !397
  %11 = load i8*, i8** %y2, align 8, !dbg !398
  %12 = load i64, i64* %len, align 8, !dbg !399
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17h81da6b6fecea6293E(i8* %10, i8* %11, i64 %12), !dbg !400
  br label %bb2, !dbg !400

bb2:                                              ; preds = %bb1
  ret void, !dbg !401
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17hc465685be18fa2e9E(i32*, i32*, i64) unnamed_addr #1 !dbg !402 {
start:
  %len = alloca i64, align 8
  %y2 = alloca i8*, align 8
  %x1 = alloca i8*, align 8
  %count = alloca i64, align 8
  %y = alloca i32*, align 8
  %x = alloca i32*, align 8
  store i32* %0, i32** %x, align 8
  call void @llvm.dbg.declare(metadata i32** %x, metadata !406, metadata !DIExpression()), !dbg !407
  store i32* %1, i32** %y, align 8
  call void @llvm.dbg.declare(metadata i32** %y, metadata !408, metadata !DIExpression()), !dbg !407
  store i64 %2, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !409, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata i8** %x1, metadata !410, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i8** %y2, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i64* %len, metadata !416, metadata !DIExpression()), !dbg !418
  %3 = load i32*, i32** %x, align 8, !dbg !419
  %4 = bitcast i32* %3 to i8*, !dbg !419
  store i8* %4, i8** %x1, align 8, !dbg !419
  %5 = load i32*, i32** %y, align 8, !dbg !420
  %6 = bitcast i32* %5 to i8*, !dbg !420
  store i8* %6, i8** %y2, align 8, !dbg !420
  %7 = call i64 @_ZN4core3mem7size_of17he4983235a16c143aE(), !dbg !421
  br label %bb1, !dbg !421

bb1:                                              ; preds = %start
  %8 = load i64, i64* %count, align 8, !dbg !422
  %9 = mul i64 %7, %8, !dbg !421
  store i64 %9, i64* %len, align 8, !dbg !421
  %10 = load i8*, i8** %x1, align 8, !dbg !423
  %11 = load i8*, i8** %y2, align 8, !dbg !424
  %12 = load i64, i64* %len, align 8, !dbg !425
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17h81da6b6fecea6293E(i8* %10, i8* %11, i64 %12), !dbg !426
  br label %bb2, !dbg !426

bb2:                                              ; preds = %bb1
  ret void, !dbg !427
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr23swap_nonoverlapping_one17h1b051df1f066314cE(i32*, i32*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !428 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %z = alloca i32, align 4
  %y = alloca i32*, align 8
  %x = alloca i32*, align 8
  store i32* %0, i32** %x, align 8
  call void @llvm.dbg.declare(metadata i32** %x, metadata !431, metadata !DIExpression()), !dbg !432
  store i32* %1, i32** %y, align 8
  call void @llvm.dbg.declare(metadata i32** %y, metadata !433, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %z, metadata !434, metadata !DIExpression()), !dbg !436
  store i8 0, i8* %_18, align 1, !dbg !437
  %2 = call i64 @_ZN4core3mem7size_of17he4983235a16c143aE(), !dbg !437
  br label %bb2, !dbg !437

bb1:                                              ; preds = %bb11, %bb10
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !438
  %4 = load i8*, i8** %3, align 8, !dbg !438
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !438
  %6 = load i32, i32* %5, align 4, !dbg !438
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0, !dbg !438
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1, !dbg !438
  resume { i8*, i32 } %8, !dbg !438

bb2:                                              ; preds = %start
  %9 = icmp ult i64 %2, 32, !dbg !437
  br i1 %9, label %bb3, label %bb4, !dbg !439

bb3:                                              ; preds = %bb2
  %10 = load i32*, i32** %x, align 8, !dbg !440
  store i8 1, i8* %_18, align 1, !dbg !441
  %11 = call i32 @_ZN4core3ptr4read17h9abfa416eb00bc3aE(i32* %10), !dbg !441
  store i32 %11, i32* %z, align 4, !dbg !441
  br label %bb5, !dbg !441

bb4:                                              ; preds = %bb2
  %12 = load i32*, i32** %x, align 8, !dbg !442
  %13 = load i32*, i32** %y, align 8, !dbg !443
  call void @_ZN4core3ptr19swap_nonoverlapping17hc465685be18fa2e9E(i32* %12, i32* %13, i64 1), !dbg !444
  br label %bb8, !dbg !444

bb5:                                              ; preds = %bb3
  %14 = load i32*, i32** %y, align 8, !dbg !445
  %15 = load i32*, i32** %x, align 8, !dbg !446
  %16 = bitcast i32* %15 to i8*, !dbg !447
  %17 = bitcast i32* %14 to i8*, !dbg !447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false), !dbg !447
  br label %bb6, !dbg !447

bb6:                                              ; preds = %bb5
  %18 = load i32*, i32** %y, align 8, !dbg !448
  store i8 0, i8* %_18, align 1, !dbg !449
  %19 = load i32, i32* %z, align 4, !dbg !449
  invoke void @_ZN4core3ptr5write17h47ffc10d273a2535E(i32* %18, i32 %19)
          to label %bb7 unwind label %cleanup, !dbg !450

bb7:                                              ; preds = %bb6
  store i8 0, i8* %_18, align 1, !dbg !451
  br label %bb9, !dbg !439

bb8:                                              ; preds = %bb4
  br label %bb9, !dbg !439

bb9:                                              ; preds = %bb8, %bb7
  ret void, !dbg !452

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1, !dbg !451
  br label %bb1, !dbg !451

bb11:                                             ; preds = %cleanup
  %20 = load i8, i8* %_18, align 1, !dbg !451, !range !319
  %21 = trunc i8 %20 to i1, !dbg !451
  br i1 %21, label %bb10, label %bb1, !dbg !451

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
define internal void @_ZN4core3ptr23swap_nonoverlapping_one17h9fe699dc0cfd3a59E(i64*, i64*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !453 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %z = alloca i64, align 8
  %y = alloca i64*, align 8
  %x = alloca i64*, align 8
  store i64* %0, i64** %x, align 8
  call void @llvm.dbg.declare(metadata i64** %x, metadata !456, metadata !DIExpression()), !dbg !457
  store i64* %1, i64** %y, align 8
  call void @llvm.dbg.declare(metadata i64** %y, metadata !458, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i64* %z, metadata !459, metadata !DIExpression()), !dbg !461
  store i8 0, i8* %_18, align 1, !dbg !462
  %2 = call i64 @_ZN4core3mem7size_of17h92f70eaaba1285dfE(), !dbg !462
  br label %bb2, !dbg !462

bb1:                                              ; preds = %bb11, %bb10
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !463
  %4 = load i8*, i8** %3, align 8, !dbg !463
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !463
  %6 = load i32, i32* %5, align 4, !dbg !463
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0, !dbg !463
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1, !dbg !463
  resume { i8*, i32 } %8, !dbg !463

bb2:                                              ; preds = %start
  %9 = icmp ult i64 %2, 32, !dbg !462
  br i1 %9, label %bb3, label %bb4, !dbg !464

bb3:                                              ; preds = %bb2
  %10 = load i64*, i64** %x, align 8, !dbg !465
  store i8 1, i8* %_18, align 1, !dbg !466
  %11 = call i64 @_ZN4core3ptr4read17h9aa5a2ec52406a67E(i64* %10), !dbg !466
  store i64 %11, i64* %z, align 8, !dbg !466
  br label %bb5, !dbg !466

bb4:                                              ; preds = %bb2
  %12 = load i64*, i64** %x, align 8, !dbg !467
  %13 = load i64*, i64** %y, align 8, !dbg !468
  call void @_ZN4core3ptr19swap_nonoverlapping17h2b7b1a21c87c27c6E(i64* %12, i64* %13, i64 1), !dbg !469
  br label %bb8, !dbg !469

bb5:                                              ; preds = %bb3
  %14 = load i64*, i64** %y, align 8, !dbg !470
  %15 = load i64*, i64** %x, align 8, !dbg !471
  %16 = bitcast i64* %15 to i8*, !dbg !472
  %17 = bitcast i64* %14 to i8*, !dbg !472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false), !dbg !472
  br label %bb6, !dbg !472

bb6:                                              ; preds = %bb5
  %18 = load i64*, i64** %y, align 8, !dbg !473
  store i8 0, i8* %_18, align 1, !dbg !474
  %19 = load i64, i64* %z, align 8, !dbg !474
  invoke void @_ZN4core3ptr5write17h09191f96ef1c1b2fE(i64* %18, i64 %19)
          to label %bb7 unwind label %cleanup, !dbg !475

bb7:                                              ; preds = %bb6
  store i8 0, i8* %_18, align 1, !dbg !476
  br label %bb9, !dbg !464

bb8:                                              ; preds = %bb4
  br label %bb9, !dbg !464

bb9:                                              ; preds = %bb8, %bb7
  ret void, !dbg !477

bb10:                                             ; preds = %bb11
  store i8 0, i8* %_18, align 1, !dbg !476
  br label %bb1, !dbg !476

bb11:                                             ; preds = %cleanup
  %20 = load i8, i8* %_18, align 1, !dbg !476, !range !319
  %21 = trunc i8 %20 to i1, !dbg !476
  br i1 %21, label %bb10, label %bb1, !dbg !476

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
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17h81da6b6fecea6293E(i8*, i8*, i64) unnamed_addr #1 !dbg !478 {
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
  call void @llvm.dbg.declare(metadata i8** %x, metadata !481, metadata !DIExpression()), !dbg !482
  store i8* %1, i8** %y, align 8
  call void @llvm.dbg.declare(metadata i8** %y, metadata !483, metadata !DIExpression()), !dbg !482
  store i64 %2, i64* %len, align 8
  call void @llvm.dbg.declare(metadata i64* %len, metadata !484, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i64* %block_size, metadata !485, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata i64* %i, metadata !488, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata <4 x i64>* %t, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i8** %t1, metadata !494, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata i8** %x2, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i8** %y3, metadata !500, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %t4, metadata !503, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i64* %rem, metadata !506, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata i8** %t5, metadata !509, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata i8** %x6, metadata !512, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata i8** %y7, metadata !515, metadata !DIExpression()), !dbg !517
  %3 = call i64 @_ZN4core3mem7size_of17h743dff8980294f5cE(), !dbg !518
  store i64 %3, i64* %block_size, align 8, !dbg !518
  br label %bb1, !dbg !518

bb1:                                              ; preds = %start
  store i64 0, i64* %i, align 8, !dbg !519
  br label %bb2, !dbg !520

bb2:                                              ; preds = %bb10, %bb1
  %4 = load i64, i64* %i, align 8, !dbg !521
  %5 = load i64, i64* %block_size, align 8, !dbg !522
  %6 = add i64 %4, %5, !dbg !521
  %7 = load i64, i64* %len, align 8, !dbg !523
  %8 = icmp ule i64 %6, %7, !dbg !521
  br i1 %8, label %bb4, label %bb3, !dbg !520

bb3:                                              ; preds = %bb2
  %9 = load i64, i64* %i, align 8, !dbg !524
  %10 = load i64, i64* %len, align 8, !dbg !525
  %11 = icmp ult i64 %9, %10, !dbg !524
  br i1 %11, label %bb11, label %bb18, !dbg !526

bb4:                                              ; preds = %bb2
  call void @_ZN4core3mem13uninitialized17h8b61384b076b6767E(<4 x i64>* noalias nocapture sret dereferenceable(32) %t), !dbg !527
  br label %bb5, !dbg !527

bb5:                                              ; preds = %bb4
  %12 = bitcast <4 x i64>* %t to i8*, !dbg !528
  store i8* %12, i8** %t1, align 8, !dbg !528
  %13 = load i8*, i8** %x, align 8, !dbg !529
  %14 = load i64, i64* %i, align 8, !dbg !530
  %15 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE"(i8* %13, i64 %14), !dbg !529
  store i8* %15, i8** %x2, align 8, !dbg !529
  br label %bb6, !dbg !529

bb6:                                              ; preds = %bb5
  %16 = load i8*, i8** %y, align 8, !dbg !531
  %17 = load i64, i64* %i, align 8, !dbg !532
  %18 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE"(i8* %16, i64 %17), !dbg !531
  store i8* %18, i8** %y3, align 8, !dbg !531
  br label %bb7, !dbg !531

bb7:                                              ; preds = %bb6
  %19 = load i8*, i8** %x2, align 8, !dbg !533
  %20 = load i8*, i8** %t1, align 8, !dbg !534
  %21 = load i64, i64* %block_size, align 8, !dbg !535
  %22 = mul i64 1, %21, !dbg !536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %19, i64 %22, i1 false), !dbg !536
  br label %bb8, !dbg !536

bb8:                                              ; preds = %bb7
  %23 = load i8*, i8** %y3, align 8, !dbg !537
  %24 = load i8*, i8** %x2, align 8, !dbg !538
  %25 = load i64, i64* %block_size, align 8, !dbg !539
  %26 = mul i64 1, %25, !dbg !540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %23, i64 %26, i1 false), !dbg !540
  br label %bb9, !dbg !540

bb9:                                              ; preds = %bb8
  %27 = load i8*, i8** %t1, align 8, !dbg !541
  %28 = load i8*, i8** %y3, align 8, !dbg !542
  %29 = load i64, i64* %block_size, align 8, !dbg !543
  %30 = mul i64 1, %29, !dbg !544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %27, i64 %30, i1 false), !dbg !544
  br label %bb10, !dbg !544

bb10:                                             ; preds = %bb9
  %31 = load i64, i64* %block_size, align 8, !dbg !545
  %32 = load i64, i64* %i, align 8, !dbg !546
  %33 = add i64 %32, %31, !dbg !546
  store i64 %33, i64* %i, align 8, !dbg !546
  br label %bb2, !dbg !520

bb11:                                             ; preds = %bb3
  call void @_ZN4core3mem13uninitialized17h7c4236fb8e45cf4cE(%"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* noalias nocapture sret dereferenceable(32) %t4), !dbg !547
  br label %bb12, !dbg !547

bb12:                                             ; preds = %bb11
  %34 = load i64, i64* %len, align 8, !dbg !548
  %35 = load i64, i64* %i, align 8, !dbg !549
  %36 = sub i64 %34, %35, !dbg !548
  store i64 %36, i64* %rem, align 8, !dbg !548
  %37 = bitcast %"core::ptr::swap_nonoverlapping_bytes::UnalignedBlock"* %t4 to i8*, !dbg !550
  store i8* %37, i8** %t5, align 8, !dbg !550
  %38 = load i8*, i8** %x, align 8, !dbg !551
  %39 = load i64, i64* %i, align 8, !dbg !552
  %40 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE"(i8* %38, i64 %39), !dbg !551
  store i8* %40, i8** %x6, align 8, !dbg !551
  br label %bb13, !dbg !551

bb13:                                             ; preds = %bb12
  %41 = load i8*, i8** %y, align 8, !dbg !553
  %42 = load i64, i64* %i, align 8, !dbg !554
  %43 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE"(i8* %41, i64 %42), !dbg !553
  store i8* %43, i8** %y7, align 8, !dbg !553
  br label %bb14, !dbg !553

bb14:                                             ; preds = %bb13
  %44 = load i8*, i8** %x6, align 8, !dbg !555
  %45 = load i8*, i8** %t5, align 8, !dbg !556
  %46 = load i64, i64* %rem, align 8, !dbg !557
  %47 = mul i64 1, %46, !dbg !558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %44, i64 %47, i1 false), !dbg !558
  br label %bb15, !dbg !558

bb15:                                             ; preds = %bb14
  %48 = load i8*, i8** %y7, align 8, !dbg !559
  %49 = load i8*, i8** %x6, align 8, !dbg !560
  %50 = load i64, i64* %rem, align 8, !dbg !561
  %51 = mul i64 1, %50, !dbg !562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %48, i64 %51, i1 false), !dbg !562
  br label %bb16, !dbg !562

bb16:                                             ; preds = %bb15
  %52 = load i8*, i8** %t5, align 8, !dbg !563
  %53 = load i8*, i8** %y7, align 8, !dbg !564
  %54 = load i64, i64* %rem, align 8, !dbg !565
  %55 = mul i64 1, %54, !dbg !566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %52, i64 %55, i1 false), !dbg !566
  br label %bb17, !dbg !566

bb17:                                             ; preds = %bb16
  br label %bb18, !dbg !526

bb18:                                             ; preds = %bb17, %bb3
  ret void, !dbg !567
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE"(i8*, i64) unnamed_addr #1 !dbg !568 {
start:
  %count = alloca i64, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !574, metadata !DIExpression()), !dbg !575
  store i64 %1, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !576, metadata !DIExpression()), !dbg !575
  %2 = load i8*, i8** %self, align 8, !dbg !577
  %3 = load i64, i64* %count, align 8, !dbg !578
  %4 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h2c30b236fad9cfe9E"(i8* %2, i64 %3), !dbg !577
  br label %bb1, !dbg !577

bb1:                                              ; preds = %start
  ret i8* %4, !dbg !579
}

; Function Attrs: inlinehint uwtable
define internal i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h2c30b236fad9cfe9E"(i8*, i64) unnamed_addr #1 !dbg !580 {
start:
  %tmp_ret = alloca i8*, align 8
  %count = alloca i64, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 %1, i64* %count, align 8
  call void @llvm.dbg.declare(metadata i64* %count, metadata !585, metadata !DIExpression()), !dbg !584
  %2 = load i8*, i8** %self, align 8, !dbg !586
  %3 = load i64, i64* %count, align 8, !dbg !587
  %4 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !588
  store i8* %4, i8** %tmp_ret, align 8, !dbg !588
  %5 = load i8*, i8** %tmp_ret, align 8, !dbg !588
  br label %bb1, !dbg !588

bb1:                                              ; preds = %start
  ret i8* %5, !dbg !589
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3ptr4read17h9aa5a2ec52406a67E(i64*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !590 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %tmp = alloca i64, align 8
  %src = alloca i64*, align 8
  store i64* %0, i64** %src, align 8
  call void @llvm.dbg.declare(metadata i64** %src, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !596, metadata !DIExpression()), !dbg !598
  %1 = call i64 @_ZN4core3mem13uninitialized17h023b0420eda21312E(), !dbg !599
  store i64 %1, i64* %tmp, align 8, !dbg !599
  br label %bb2, !dbg !599

bb1:                                              ; preds = %bb4
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !600
  %3 = load i8*, i8** %2, align 8, !dbg !600
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !600
  %5 = load i32, i32* %4, align 4, !dbg !600
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !600
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !600
  resume { i8*, i32 } %7, !dbg !600

bb2:                                              ; preds = %start
  %8 = load i64*, i64** %src, align 8, !dbg !601
  %9 = bitcast i64* %tmp to i8*, !dbg !602
  %10 = bitcast i64* %8 to i8*, !dbg !602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false), !dbg !602
  br label %bb3, !dbg !602

bb3:                                              ; preds = %bb2
  %11 = load i64, i64* %tmp, align 8, !dbg !603
  ret i64 %11, !dbg !604

bb4:                                              ; No predecessors!
  br label %bb1, !dbg !605
}

; Function Attrs: inlinehint uwtable
define internal i32 @_ZN4core3ptr4read17h9abfa416eb00bc3aE(i32*) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !606 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %tmp = alloca i32, align 4
  %src = alloca i32*, align 8
  store i32* %0, i32** %src, align 8
  call void @llvm.dbg.declare(metadata i32** %src, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !612, metadata !DIExpression()), !dbg !614
  %1 = call i32 @_ZN4core3mem13uninitialized17h636d8a459a42d744E(), !dbg !615
  store i32 %1, i32* %tmp, align 4, !dbg !615
  br label %bb2, !dbg !615

bb1:                                              ; preds = %bb4
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !616
  %3 = load i8*, i8** %2, align 8, !dbg !616
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !616
  %5 = load i32, i32* %4, align 4, !dbg !616
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !616
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !616
  resume { i8*, i32 } %7, !dbg !616

bb2:                                              ; preds = %start
  %8 = load i32*, i32** %src, align 8, !dbg !617
  %9 = bitcast i32* %tmp to i8*, !dbg !618
  %10 = bitcast i32* %8 to i8*, !dbg !618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false), !dbg !618
  br label %bb3, !dbg !618

bb3:                                              ; preds = %bb2
  %11 = load i32, i32* %tmp, align 4, !dbg !619
  ret i32 %11, !dbg !620

bb4:                                              ; No predecessors!
  br label %bb1, !dbg !621
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr5write17h09191f96ef1c1b2fE(i64*, i64) unnamed_addr #1 !dbg !622 {
start:
  %src = alloca i64, align 8
  %dst = alloca i64*, align 8
  store i64* %0, i64** %dst, align 8
  call void @llvm.dbg.declare(metadata i64** %dst, metadata !625, metadata !DIExpression()), !dbg !626
  store i64 %1, i64* %src, align 8
  call void @llvm.dbg.declare(metadata i64* %src, metadata !627, metadata !DIExpression()), !dbg !626
  %2 = load i64*, i64** %dst, align 8, !dbg !628
  %3 = load i64, i64* %src, align 8, !dbg !629
  store i64 %3, i64* %2, align 8, !dbg !629
  ret void, !dbg !630
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ptr5write17h47ffc10d273a2535E(i32*, i32) unnamed_addr #1 !dbg !631 {
start:
  %src = alloca i32, align 4
  %dst = alloca i32*, align 8
  store i32* %0, i32** %dst, align 8
  call void @llvm.dbg.declare(metadata i32** %dst, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %1, i32* %src, align 4
  call void @llvm.dbg.declare(metadata i32* %src, metadata !636, metadata !DIExpression()), !dbg !635
  %2 = load i32*, i32** %dst, align 8, !dbg !637
  %3 = load i32, i32* %src, align 4, !dbg !638
  store i32 %3, i32* %2, align 4, !dbg !638
  ret void, !dbg !639
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E"({ i64, i64 }* dereferenceable(16)) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !640 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %n = alloca i64, align 8
  %_8 = alloca { i64, i64 }*, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_0 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }*, align 8
  store { i64, i64 }* %0, { i64, i64 }** %self, align 8
  call void @llvm.dbg.declare(metadata { i64, i64 }** %self, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i64* %n, metadata !653, metadata !DIExpression()), !dbg !655
  store i8 0, i8* %_17, align 1, !dbg !656
  %1 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !656, !nonnull !4
  %2 = bitcast { i64, i64 }* %1 to i64*, !dbg !656
  %3 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !657, !nonnull !4
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1, !dbg !657
  %5 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hfd694ddb79f3bc88E"(i64* noalias readonly dereferenceable(8) %2, i64* noalias readonly dereferenceable(8) %4), !dbg !656
  br label %bb2, !dbg !656

bb1:                                              ; preds = %bb13, %bb9
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !658
  %7 = load i8*, i8** %6, align 8, !dbg !658
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !658
  %9 = load i32, i32* %8, align 4, !dbg !658
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0, !dbg !658
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1, !dbg !658
  resume { i8*, i32 } %11, !dbg !658

bb2:                                              ; preds = %start
  br i1 %5, label %bb3, label %bb4, !dbg !659

bb3:                                              ; preds = %bb2
  %12 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !660, !nonnull !4
  %13 = bitcast { i64, i64 }* %12 to i64*, !dbg !660
  store i8 1, i8* %_17, align 1, !dbg !660
  %14 = call { i64, i64 } @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h6c1353dfecf7f2dbE"(i64* noalias readonly dereferenceable(8) %13, i64 1), !dbg !660
  store { i64, i64 } %14, { i64, i64 }* %_5, align 8, !dbg !660
  br label %bb5, !dbg !660

bb4:                                              ; preds = %bb2
  %15 = bitcast { i64, i64 }* %_0 to i64*, !dbg !661
  store i64 0, i64* %15, align 8, !dbg !661
  br label %bb12, !dbg !659

bb5:                                              ; preds = %bb3
  %16 = bitcast { i64, i64 }* %_5 to i64*, !dbg !660
  %17 = load i64, i64* %16, align 8, !dbg !660, !range !325
  store { i64, i64 }* %_5, { i64, i64 }** %_8, align 8, !dbg !660
  %18 = bitcast { i64, i64 }* %_5 to i64*, !dbg !662
  %19 = load i64, i64* %18, align 8, !dbg !662, !range !325
  %20 = icmp eq i64 %19, 1, !dbg !662
  br i1 %20, label %bb6, label %bb7, !dbg !662

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_17, align 1, !dbg !663
  %21 = bitcast { i64, i64 }* %_5 to %"core::option::Option<usize>::Some"*, !dbg !663
  %22 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %21, i32 0, i32 1, !dbg !663
  %23 = load i64, i64* %22, align 8, !dbg !663
  store i64 %23, i64* %n, align 8, !dbg !663
  %24 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !dbg !664, !nonnull !4
  %25 = bitcast { i64, i64 }* %24 to i64*, !dbg !664
  invoke void @_ZN4core3mem4swap17h1f2f35506b7c0874E(i64* dereferenceable(8) %n, i64* dereferenceable(8) %25)
          to label %bb8 unwind label %cleanup, !dbg !665

bb7:                                              ; preds = %bb5
  %26 = bitcast { i64, i64 }* %_0 to i64*, !dbg !666
  store i64 0, i64* %26, align 8, !dbg !666
  br label %bb11, !dbg !667

bb8:                                              ; preds = %bb6
  %27 = load i64, i64* %n, align 8, !dbg !668
  %28 = bitcast { i64, i64 }* %_0 to %"core::option::Option<usize>::Some"*, !dbg !669
  %29 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %28, i32 0, i32 1, !dbg !669
  store i64 %27, i64* %29, align 8, !dbg !669
  %30 = bitcast { i64, i64 }* %_0 to i64*, !dbg !669
  store i64 1, i64* %30, align 8, !dbg !669
  br label %bb11, !dbg !670

bb9:                                              ; preds = %bb10
  %31 = bitcast { i64, i64 }* %_5 to i64*, !dbg !671
  %32 = load i64, i64* %31, align 8, !dbg !671, !range !325
  %33 = icmp eq i64 %32, 1, !dbg !671
  br i1 %33, label %bb1, label %bb13, !dbg !671

bb10:                                             ; preds = %cleanup
  br label %bb9, !dbg !670

bb11:                                             ; preds = %bb8, %bb7
  %34 = bitcast { i64, i64 }* %_5 to i64*, !dbg !671
  %35 = load i64, i64* %34, align 8, !dbg !671, !range !325
  %36 = icmp eq i64 %35, 1, !dbg !671
  br i1 %36, label %bb15, label %bb17, !dbg !671

bb12:                                             ; preds = %bb14, %bb4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0, !dbg !672
  %38 = load i64, i64* %37, align 8, !dbg !672, !range !325
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1, !dbg !672
  %40 = load i64, i64* %39, align 8, !dbg !672
  %41 = insertvalue { i64, i64 } undef, i64 %38, 0, !dbg !672
  %42 = insertvalue { i64, i64 } %41, i64 %40, 1, !dbg !672
  ret { i64, i64 } %42, !dbg !672

bb13:                                             ; preds = %bb9
  br label %bb1, !dbg !671

bb14:                                             ; preds = %bb17, %bb16, %bb15
  store i8 0, i8* %_17, align 1, !dbg !671
  br label %bb12, !dbg !659

bb15:                                             ; preds = %bb11
  %43 = load i8, i8* %_17, align 1, !dbg !671, !range !319
  %44 = trunc i8 %43 to i1, !dbg !671
  br i1 %44, label %bb16, label %bb14, !dbg !671

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_17, align 1, !dbg !671
  br label %bb14, !dbg !671

bb17:                                             ; preds = %bb11
  br label %bb14, !dbg !671

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
define internal { i32, i32 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc27be20a3d2ac24bE"({ i32, i32 }* dereferenceable(8)) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !673 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  %n = alloca i32, align 4
  %_8 = alloca { i32, i32 }*, align 8
  %_5 = alloca { i32, i32 }, align 4
  %_0 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }*, align 8
  store { i32, i32 }* %0, { i32, i32 }** %self, align 8
  call void @llvm.dbg.declare(metadata { i32, i32 }** %self, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %n, metadata !685, metadata !DIExpression()), !dbg !687
  store i8 0, i8* %_17, align 1, !dbg !688
  %1 = load { i32, i32 }*, { i32, i32 }** %self, align 8, !dbg !688, !nonnull !4
  %2 = bitcast { i32, i32 }* %1 to i32*, !dbg !688
  %3 = load { i32, i32 }*, { i32, i32 }** %self, align 8, !dbg !689, !nonnull !4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1, !dbg !689
  %5 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h158c42edafe7321bE"(i32* noalias readonly dereferenceable(4) %2, i32* noalias readonly dereferenceable(4) %4), !dbg !688
  br label %bb2, !dbg !688

bb1:                                              ; preds = %bb13, %bb9
  %6 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !690
  %7 = load i8*, i8** %6, align 8, !dbg !690
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !690
  %9 = load i32, i32* %8, align 4, !dbg !690
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0, !dbg !690
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1, !dbg !690
  resume { i8*, i32 } %11, !dbg !690

bb2:                                              ; preds = %start
  br i1 %5, label %bb3, label %bb4, !dbg !691

bb3:                                              ; preds = %bb2
  %12 = load { i32, i32 }*, { i32, i32 }** %self, align 8, !dbg !692, !nonnull !4
  %13 = bitcast { i32, i32 }* %12 to i32*, !dbg !692
  store i8 1, i8* %_17, align 1, !dbg !692
  %14 = call { i32, i32 } @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$9add_usize17h79dc291b52b89b16E"(i32* noalias readonly dereferenceable(4) %13, i64 1), !dbg !692
  store { i32, i32 } %14, { i32, i32 }* %_5, align 4, !dbg !692
  br label %bb5, !dbg !692

bb4:                                              ; preds = %bb2
  %15 = bitcast { i32, i32 }* %_0 to i32*, !dbg !693
  store i32 0, i32* %15, align 4, !dbg !693
  br label %bb12, !dbg !691

bb5:                                              ; preds = %bb3
  %16 = bitcast { i32, i32 }* %_5 to i32*, !dbg !692
  %17 = load i32, i32* %16, align 4, !dbg !692, !range !112
  %18 = zext i32 %17 to i64, !dbg !692
  store { i32, i32 }* %_5, { i32, i32 }** %_8, align 8, !dbg !692
  %19 = bitcast { i32, i32 }* %_5 to i32*, !dbg !694
  %20 = load i32, i32* %19, align 4, !dbg !694, !range !112
  %21 = zext i32 %20 to i64, !dbg !694
  %22 = icmp eq i64 %21, 1, !dbg !694
  br i1 %22, label %bb6, label %bb7, !dbg !694

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_17, align 1, !dbg !695
  %23 = bitcast { i32, i32 }* %_5 to %"core::option::Option<i32>::Some"*, !dbg !695
  %24 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %23, i32 0, i32 1, !dbg !695
  %25 = load i32, i32* %24, align 4, !dbg !695
  store i32 %25, i32* %n, align 4, !dbg !695
  %26 = load { i32, i32 }*, { i32, i32 }** %self, align 8, !dbg !696, !nonnull !4
  %27 = bitcast { i32, i32 }* %26 to i32*, !dbg !696
  invoke void @_ZN4core3mem4swap17h224e27c3c32afdc7E(i32* dereferenceable(4) %n, i32* dereferenceable(4) %27)
          to label %bb8 unwind label %cleanup, !dbg !697

bb7:                                              ; preds = %bb5
  %28 = bitcast { i32, i32 }* %_0 to i32*, !dbg !698
  store i32 0, i32* %28, align 4, !dbg !698
  br label %bb11, !dbg !699

bb8:                                              ; preds = %bb6
  %29 = load i32, i32* %n, align 4, !dbg !700
  %30 = bitcast { i32, i32 }* %_0 to %"core::option::Option<i32>::Some"*, !dbg !701
  %31 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %30, i32 0, i32 1, !dbg !701
  store i32 %29, i32* %31, align 4, !dbg !701
  %32 = bitcast { i32, i32 }* %_0 to i32*, !dbg !701
  store i32 1, i32* %32, align 4, !dbg !701
  br label %bb11, !dbg !702

bb9:                                              ; preds = %bb10
  %33 = bitcast { i32, i32 }* %_5 to i32*, !dbg !703
  %34 = load i32, i32* %33, align 4, !dbg !703, !range !112
  %35 = zext i32 %34 to i64, !dbg !703
  %36 = icmp eq i64 %35, 1, !dbg !703
  br i1 %36, label %bb1, label %bb13, !dbg !703

bb10:                                             ; preds = %cleanup
  br label %bb9, !dbg !702

bb11:                                             ; preds = %bb8, %bb7
  %37 = bitcast { i32, i32 }* %_5 to i32*, !dbg !703
  %38 = load i32, i32* %37, align 4, !dbg !703, !range !112
  %39 = zext i32 %38 to i64, !dbg !703
  %40 = icmp eq i64 %39, 1, !dbg !703
  br i1 %40, label %bb15, label %bb17, !dbg !703

bb12:                                             ; preds = %bb14, %bb4
  %41 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 0, !dbg !704
  %42 = load i32, i32* %41, align 4, !dbg !704, !range !112
  %43 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_0, i32 0, i32 1, !dbg !704
  %44 = load i32, i32* %43, align 4, !dbg !704
  %45 = insertvalue { i32, i32 } undef, i32 %42, 0, !dbg !704
  %46 = insertvalue { i32, i32 } %45, i32 %44, 1, !dbg !704
  ret { i32, i32 } %46, !dbg !704

bb13:                                             ; preds = %bb9
  br label %bb1, !dbg !703

bb14:                                             ; preds = %bb17, %bb16, %bb15
  store i8 0, i8* %_17, align 1, !dbg !703
  br label %bb12, !dbg !691

bb15:                                             ; preds = %bb11
  %47 = load i8, i8* %_17, align 1, !dbg !703, !range !319
  %48 = trunc i8 %47 to i1, !dbg !703
  br i1 %48, label %bb16, label %bb14, !dbg !703

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_17, align 1, !dbg !703
  br label %bb14, !dbg !703

bb17:                                             ; preds = %bb11
  br label %bb14, !dbg !703

cleanup:                                          ; preds = %bb6
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = extractvalue { i8*, i32 } %49, 1
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %bb10
}

; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE"([0 x i32]* noalias nonnull readonly, i64) unnamed_addr #1 !dbg !705 {
start:
  %_2 = alloca %"core::slice::Repr<i32>", align 8
  %self = alloca { [0 x i32]*, i64 }, align 8
  %2 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 0
  store [0 x i32]* %0, [0 x i32]** %2, align 8
  %3 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata { [0 x i32]*, i64 }* %self, metadata !715, metadata !DIExpression()), !dbg !716
  %4 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 0, !dbg !717
  %5 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !717, !nonnull !4
  %6 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %self, i32 0, i32 1, !dbg !717
  %7 = load i64, i64* %6, align 8, !dbg !717
  %8 = bitcast %"core::slice::Repr<i32>"* %_2 to { [0 x i32]*, i64 }*, !dbg !719
  %9 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %8, i32 0, i32 0, !dbg !719
  store [0 x i32]* %5, [0 x i32]** %9, align 8, !dbg !719
  %10 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %8, i32 0, i32 1, !dbg !719
  store i64 %7, i64* %10, align 8, !dbg !719
  %11 = bitcast %"core::slice::Repr<i32>"* %_2 to { i32*, i64 }*, !dbg !719
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 1, !dbg !719
  %13 = load i64, i64* %12, align 8, !dbg !719
  ret i64 %13, !dbg !720
}

; Function Attrs: uwtable
define internal i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h322debb998bfaf1aE"(i64) unnamed_addr #0 !dbg !721 {
start:
  %t = alloca i64, align 8
  store i64 %0, i64* %t, align 8
  call void @llvm.dbg.declare(metadata i64* %t, metadata !727, metadata !DIExpression()), !dbg !728
  %1 = load i64, i64* %t, align 8, !dbg !729
  ret i64 %1, !dbg !730
}

; Function Attrs: uwtable
define internal i64 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17hbf730dd35793f61eE"(i64) unnamed_addr #0 !dbg !731 {
start:
  %_0 = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %0, i64* %value, align 8
  call void @llvm.dbg.declare(metadata i64* %value, metadata !742, metadata !DIExpression()), !dbg !743
  %1 = load i64, i64* %value, align 8, !dbg !744
  %2 = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h322debb998bfaf1aE"(i64 %1), !dbg !745
  br label %bb1, !dbg !745

bb1:                                              ; preds = %start
  store i64 %2, i64* %_0, align 8, !dbg !746
  %3 = load i64, i64* %_0, align 8, !dbg !747
  ret i64 %3, !dbg !747
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h2ce349b3cfa04c0aE"() unnamed_addr #1 !dbg !748 {
start:
  %self = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %self, metadata !754, metadata !DIExpression()), !dbg !755
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha17a028fb37daae9E"(i8 0), !dbg !756
  br label %bb1, !dbg !756

bb1:                                              ; preds = %start
  ret i32 %0, !dbg !757
}

; Function Attrs: uwtable
define internal { i32, i32 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h02a6dedfd3046133E"(i32, i32) unnamed_addr #0 !dbg !758 {
start:
  %self = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata { i32, i32 }* %self, metadata !766, metadata !DIExpression()), !dbg !767
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0, !dbg !768
  %5 = load i32, i32* %4, align 4, !dbg !768
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1, !dbg !768
  %7 = load i32, i32* %6, align 4, !dbg !768
  %8 = insertvalue { i32, i32 } undef, i32 %5, 0, !dbg !769
  %9 = insertvalue { i32, i32 } %8, i32 %7, 1, !dbg !769
  ret { i32, i32 } %9, !dbg !769
}

; Function Attrs: uwtable
define internal { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E"(i64, i64) unnamed_addr #0 !dbg !770 {
start:
  %self = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata { i64, i64 }* %self, metadata !775, metadata !DIExpression()), !dbg !776
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0, !dbg !777
  %5 = load i64, i64* %4, align 8, !dbg !777
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1, !dbg !777
  %7 = load i64, i64* %6, align 8, !dbg !777
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0, !dbg !778
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1, !dbg !778
  ret { i64, i64 } %9, !dbg !778
}

; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha17a028fb37daae9E"(i8) unnamed_addr #1 !dbg !779 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  call void @llvm.dbg.declare(metadata i8* %self, metadata !785, metadata !DIExpression()), !dbg !786
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7d2962ee37187ce9E(i8* noalias readonly dereferenceable(1) %self), !dbg !787
  br label %bb1, !dbg !787

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !788
}

; Function Attrs: uwtable
define internal void @_ZN9perf_test4main17h8252daa33a2b63a8E() unnamed_addr #0 !dbg !789 {
start:
  call void @__dp_func_entry(i32 16387, i32 0), !dbg !791
  call void @__dp_call(i32 16387), !dbg !791
  call void @_ZN9perf_test9reduction17hec97ef8901011fa7E(), !dbg !791
  br label %bb1, !dbg !791

bb1:                                              ; preds = %start
  call void @__dp_call(i32 16388), !dbg !792
  call void @_ZN9perf_test6do_all17hdc553eacfb8e3e31E(), !dbg !792
  br label %bb2, !dbg !792

bb2:                                              ; preds = %bb1
  call void @__dp_func_exit(i32 16390, i32 0), !dbg !793
  ret void, !dbg !793
}

; Function Attrs: uwtable
define internal i32 @_ZN9perf_test11expensiveOP17h0fd88b9e93310979E(i32) unnamed_addr #0 !dbg !794 {
start:
  %_2 = alloca i8, align 1
  %_0 = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %0, i32* %n, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !797, metadata !DIExpression()), !dbg !798
  %1 = load i32, i32* %n, align 4, !dbg !799
  %2 = icmp eq i32 %1, 0, !dbg !799
  br i1 %2, label %bb1, label %bb3, !dbg !799

bb1:                                              ; preds = %bb3, %start
  store i8 1, i8* %_2, align 1, !dbg !799
  br label %bb4, !dbg !799

bb2:                                              ; preds = %bb3
  store i8 0, i8* %_2, align 1, !dbg !799
  br label %bb4, !dbg !799

bb3:                                              ; preds = %start
  %3 = load i32, i32* %n, align 4, !dbg !800
  %4 = icmp eq i32 %3, 1, !dbg !800
  br i1 %4, label %bb1, label %bb2, !dbg !799

bb4:                                              ; preds = %bb2, %bb1
  %5 = load i8, i8* %_2, align 1, !dbg !801, !range !319
  %6 = trunc i8 %5 to i1, !dbg !801
  br i1 %6, label %bb5, label %bb6, !dbg !801

bb5:                                              ; preds = %bb4
  %7 = load i32, i32* %n, align 4, !dbg !802
  store i32 %7, i32* %_0, align 4, !dbg !802
  br label %bb7, !dbg !803

bb6:                                              ; preds = %bb4
  %8 = load i32, i32* %n, align 4, !dbg !804
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %8, i32 1), !dbg !804
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !804
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !804
  %12 = call i1 @llvm.expect.i1(i1 %11, i1 false), !dbg !804
  br i1 %12, label %panic, label %bb8, !dbg !804

bb7:                                              ; preds = %bb12, %bb5
  %13 = load i32, i32* %_0, align 4, !dbg !805
  ret i32 %13, !dbg !805

bb8:                                              ; preds = %bb6
  %14 = call i32 @_ZN9perf_test11expensiveOP17h0fd88b9e93310979E(i32 %10), !dbg !806
  br label %bb9, !dbg !806

bb9:                                              ; preds = %bb8
  %15 = load i32, i32* %n, align 4, !dbg !807
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 2), !dbg !807
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !807
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !807
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false), !dbg !807
  br i1 %19, label %panic1, label %bb10, !dbg !807

bb10:                                             ; preds = %bb9
  %20 = call i32 @_ZN9perf_test11expensiveOP17h0fd88b9e93310979E(i32 %17), !dbg !808
  br label %bb11, !dbg !808

bb11:                                             ; preds = %bb10
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %20), !dbg !806
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !806
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !806
  %24 = call i1 @llvm.expect.i1(i1 %23, i1 false), !dbg !806
  br i1 %24, label %panic2, label %bb12, !dbg !806

bb12:                                             ; preds = %bb11
  store i32 %22, i32* %_0, align 4, !dbg !806
  br label %bb7, !dbg !809

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.3 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !804
  unreachable, !dbg !804

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.4 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !807
  unreachable, !dbg !807

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.6 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !806
  unreachable, !dbg !806
}

; Function Attrs: uwtable
define internal void @_ZN9perf_test9reduction17hec97ef8901011fa7E() unnamed_addr #0 !dbg !810 {
start:
  %i15 = alloca i32, align 4
  %val14 = alloca i32, align 4
  %_105 = alloca { i32, i32 }, align 4
  %__next13 = alloca i32, align 4
  %iter12 = alloca { i32, i32 }, align 4
  %_101 = alloca { i32, i32 }, align 4
  %_100 = alloca { i32, i32 }, align 4
  %_result11 = alloca {}, align 1
  %i10 = alloca i64, align 8
  %val9 = alloca i64, align 8
  %_79 = alloca { i64, i64 }, align 8
  %__next8 = alloca i64, align 8
  %iter7 = alloca { i64, i64 }, align 8
  %_72 = alloca { i64, i64 }, align 8
  %_71 = alloca { i64, i64 }, align 8
  %_result6 = alloca {}, align 1
  %arrMul = alloca i32, align 4
  %arrSum = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i5 = alloca i64, align 8
  %val4 = alloca i64, align 8
  %_40 = alloca { i64, i64 }, align 8
  %__next3 = alloca i64, align 8
  %iter2 = alloca { i64, i64 }, align 8
  %_33 = alloca { i64, i64 }, align 8
  %_32 = alloca { i64, i64 }, align 8
  %_result1 = alloca {}, align 1
  %localRes = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %_15 = alloca { i32, i32 }, align 4
  %__next = alloca i32, align 4
  %iter = alloca { i32, i32 }, align 4
  %_10 = alloca { i32, i32 }, align 4
  %_9 = alloca { i32, i32 }, align 4
  %_result = alloca {}, align 1
  %_6 = alloca { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %localArr = alloca [10 x i32], align 4
  %iterations = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %iterations, metadata !811, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata [10 x i32]* %localArr, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i32* %a, metadata !820, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %b, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %c, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata {}* %_result, metadata !827, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata { i32, i32 }* %iter, metadata !830, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata i32* %__next, metadata !833, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata i32* %val, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata i32* %i, metadata !839, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %localRes, metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata {}* %_result1, metadata !845, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata { i64, i64 }* %iter2, metadata !848, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata i64* %__next3, metadata !851, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata i64* %val4, metadata !854, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata i64* %i5, metadata !857, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !860, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.declare(metadata i32* %arrSum, metadata !863, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %arrMul, metadata !866, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.declare(metadata {}* %_result6, metadata !869, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata { i64, i64 }* %iter7, metadata !872, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i64* %__next8, metadata !875, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata i64* %val9, metadata !878, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata i64* %i10, metadata !881, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata {}* %_result11, metadata !884, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.declare(metadata { i32, i32 }* %iter12, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %__next13, metadata !890, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %val14, metadata !893, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata i32* %i15, metadata !896, metadata !DIExpression()), !dbg !898
  store i32 1000, i32* %iterations, align 4, !dbg !899
  %0 = bitcast [10 x i32]* %localArr to i32*, !dbg !900
  store i32 1, i32* %0, align 4, !dbg !900
  %1 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 1, !dbg !900
  store i32 2, i32* %1, align 4, !dbg !900
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 2, !dbg !900
  store i32 3, i32* %2, align 4, !dbg !900
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 3, !dbg !900
  store i32 4, i32* %3, align 4, !dbg !900
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 4, !dbg !900
  store i32 5, i32* %4, align 4, !dbg !900
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 5, !dbg !900
  store i32 6, i32* %5, align 4, !dbg !900
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 6, !dbg !900
  store i32 7, i32* %6, align 4, !dbg !900
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 7, !dbg !900
  store i32 8, i32* %7, align 4, !dbg !900
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 8, !dbg !900
  store i32 9, i32* %8, align 4, !dbg !900
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i32 0, i32 9, !dbg !900
  store i32 0, i32* %9, align 4, !dbg !900
  %10 = bitcast { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6 to i32*, !dbg !901
  store i32 0, i32* %10, align 4, !dbg !901
  %11 = getelementptr inbounds { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }, { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6, i32 0, i32 3, !dbg !901
  store i32 0, i32* %11, align 4, !dbg !901
  %12 = getelementptr inbounds { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }, { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6, i32 0, i32 5, !dbg !901
  store i32 0, i32* %12, align 4, !dbg !901
  %13 = bitcast { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6 to i32*, !dbg !902
  %14 = load i32, i32* %13, align 4, !dbg !902
  store i32 %14, i32* %a, align 4, !dbg !902
  %15 = getelementptr inbounds { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }, { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6, i32 0, i32 3, !dbg !903
  %16 = load i32, i32* %15, align 4, !dbg !903
  store i32 %16, i32* %b, align 4, !dbg !903
  %17 = getelementptr inbounds { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }, { [0 x i32], i32, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* %_6, i32 0, i32 5, !dbg !904
  %18 = load i32, i32* %17, align 4, !dbg !904
  store i32 %18, i32* %c, align 4, !dbg !904
  %19 = load i32, i32* %iterations, align 4, !dbg !905
  %20 = bitcast { i32, i32 }* %_10 to i32*, !dbg !906
  store i32 0, i32* %20, align 4, !dbg !906
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1, !dbg !906
  store i32 %19, i32* %21, align 4, !dbg !906
  %22 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 0, !dbg !906
  %23 = load i32, i32* %22, align 4, !dbg !906
  %24 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1, !dbg !906
  %25 = load i32, i32* %24, align 4, !dbg !906
  %26 = call { i32, i32 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h02a6dedfd3046133E"(i32 %23, i32 %25), !dbg !906
  store { i32, i32 } %26, { i32, i32 }* %_9, align 4, !dbg !906
  br label %bb1, !dbg !906

bb1:                                              ; preds = %start
  %27 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 0, !dbg !906
  %28 = load i32, i32* %27, align 4, !dbg !906
  %29 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_9, i32 0, i32 1, !dbg !906
  %30 = load i32, i32* %29, align 4, !dbg !906
  %31 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter, i32 0, i32 0, !dbg !906
  store i32 %28, i32* %31, align 4, !dbg !906
  %32 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter, i32 0, i32 1, !dbg !906
  store i32 %30, i32* %32, align 4, !dbg !906
  br label %bb2, !dbg !906

bb2:                                              ; preds = %bb9, %bb1
  %33 = call { i32, i32 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc27be20a3d2ac24bE"({ i32, i32 }* dereferenceable(8) %iter), !dbg !835
  store { i32, i32 } %33, { i32, i32 }* %_15, align 4, !dbg !835
  br label %bb3, !dbg !835

bb3:                                              ; preds = %bb2
  %34 = bitcast { i32, i32 }* %_15 to i32*, !dbg !835
  %35 = load i32, i32* %34, align 4, !dbg !835, !range !112
  %36 = zext i32 %35 to i64, !dbg !835
  %37 = bitcast { i32, i32 }* %_15 to i32*, !dbg !907
  %38 = load i32, i32* %37, align 4, !dbg !907, !range !112
  %39 = zext i32 %38 to i64, !dbg !907
  switch i64 %39, label %bb5 [
    i64 0, label %bb4
    i64 1, label %bb6
  ], !dbg !907

bb4:                                              ; preds = %bb3
  store i32 0, i32* %localRes, align 4, !dbg !908
  %40 = bitcast [10 x i32]* %localArr to [0 x i32]*, !dbg !909
  %41 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE"([0 x i32]* noalias nonnull readonly %40, i64 10), !dbg !909
  br label %bb10, !dbg !909

bb5:                                              ; preds = %bb34, %bb25, %bb13, %bb3
  unreachable, !dbg !910

bb6:                                              ; preds = %bb3
  %42 = bitcast { i32, i32 }* %_15 to %"core::option::Option<i32>::Some"*, !dbg !907
  %43 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %42, i32 0, i32 1, !dbg !907
  %44 = load i32, i32* %43, align 4, !dbg !907
  store i32 %44, i32* %val, align 4, !dbg !907
  %45 = load i32, i32* %val, align 4, !dbg !838
  store i32 %45, i32* %__next, align 4, !dbg !838
  %46 = load i32, i32* %__next, align 4, !dbg !835
  store i32 %46, i32* %i, align 4, !dbg !835
  %47 = load i32, i32* %a, align 4, !dbg !911
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 1), !dbg !911
  %49 = extractvalue { i32, i1 } %48, 0, !dbg !911
  %50 = extractvalue { i32, i1 } %48, 1, !dbg !911
  %51 = call i1 @llvm.expect.i1(i1 %50, i1 false), !dbg !911
  br i1 %51, label %panic, label %bb7, !dbg !911

bb7:                                              ; preds = %bb6
  store i32 %49, i32* %a, align 4, !dbg !912
  %52 = load i32, i32* %b, align 4, !dbg !913
  %53 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %52, i32 5), !dbg !913
  %54 = extractvalue { i32, i1 } %53, 0, !dbg !913
  %55 = extractvalue { i32, i1 } %53, 1, !dbg !913
  %56 = call i1 @llvm.expect.i1(i1 %55, i1 false), !dbg !913
  br i1 %56, label %panic16, label %bb8, !dbg !913

bb8:                                              ; preds = %bb7
  store i32 %54, i32* %b, align 4, !dbg !914
  %57 = load i32, i32* %c, align 4, !dbg !915
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %57, i32 2), !dbg !915
  %59 = extractvalue { i32, i1 } %58, 0, !dbg !915
  %60 = extractvalue { i32, i1 } %58, 1, !dbg !915
  %61 = call i1 @llvm.expect.i1(i1 %60, i1 false), !dbg !915
  br i1 %61, label %panic17, label %bb9, !dbg !915

bb9:                                              ; preds = %bb8
  store i32 %59, i32* %c, align 4, !dbg !916
  br label %bb2, !dbg !917

bb10:                                             ; preds = %bb4
  %62 = bitcast { i64, i64 }* %_33 to i64*, !dbg !918
  store i64 0, i64* %62, align 8, !dbg !918
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 1, !dbg !918
  store i64 %41, i64* %63, align 8, !dbg !918
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 0, !dbg !918
  %65 = load i64, i64* %64, align 8, !dbg !918
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_33, i32 0, i32 1, !dbg !918
  %67 = load i64, i64* %66, align 8, !dbg !918
  %68 = call { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E"(i64 %65, i64 %67), !dbg !918
  store { i64, i64 } %68, { i64, i64 }* %_32, align 8, !dbg !918
  br label %bb11, !dbg !918

bb11:                                             ; preds = %bb10
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 0, !dbg !918
  %70 = load i64, i64* %69, align 8, !dbg !918
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_32, i32 0, i32 1, !dbg !918
  %72 = load i64, i64* %71, align 8, !dbg !918
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 0, !dbg !918
  store i64 %70, i64* %73, align 8, !dbg !918
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 1, !dbg !918
  store i64 %72, i64* %74, align 8, !dbg !918
  br label %bb12, !dbg !918

bb12:                                             ; preds = %bb21, %bb11
  %75 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E"({ i64, i64 }* dereferenceable(16) %iter2), !dbg !853
  store { i64, i64 } %75, { i64, i64 }* %_40, align 8, !dbg !853
  br label %bb13, !dbg !853

bb13:                                             ; preds = %bb12
  %76 = bitcast { i64, i64 }* %_40 to i64*, !dbg !853
  %77 = load i64, i64* %76, align 8, !dbg !853, !range !325
  %78 = bitcast { i64, i64 }* %_40 to i64*, !dbg !919
  %79 = load i64, i64* %78, align 8, !dbg !919, !range !325
  switch i64 %79, label %bb5 [
    i64 0, label %bb14
    i64 1, label %bb15
  ], !dbg !919

bb14:                                             ; preds = %bb13
  store i32 0, i32* %arrSum, align 4, !dbg !920
  store i32 1, i32* %arrMul, align 4, !dbg !921
  %80 = bitcast [10 x i32]* %localArr to [0 x i32]*, !dbg !922
  %81 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE"([0 x i32]* noalias nonnull readonly %80, i64 10), !dbg !922
  br label %bb22, !dbg !922

bb15:                                             ; preds = %bb13
  %82 = bitcast { i64, i64 }* %_40 to %"core::option::Option<usize>::Some"*, !dbg !919
  %83 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %82, i32 0, i32 1, !dbg !919
  %84 = load i64, i64* %83, align 8, !dbg !919
  store i64 %84, i64* %val4, align 8, !dbg !919
  %85 = load i64, i64* %val4, align 8, !dbg !856
  store i64 %85, i64* %__next3, align 8, !dbg !856
  %86 = load i64, i64* %__next3, align 8, !dbg !853
  store i64 %86, i64* %i5, align 8, !dbg !853
  %87 = load i32, i32* %b, align 4, !dbg !923
  %88 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %87, i32 5), !dbg !923
  %89 = extractvalue { i32, i1 } %88, 0, !dbg !923
  %90 = extractvalue { i32, i1 } %88, 1, !dbg !923
  %91 = call i1 @llvm.expect.i1(i1 %90, i1 false), !dbg !923
  br i1 %91, label %panic18, label %bb16, !dbg !923

bb16:                                             ; preds = %bb15
  store i32 %89, i32* %b, align 4, !dbg !924
  %92 = load i32, i32* %c, align 4, !dbg !925
  %93 = load i64, i64* %i5, align 8, !dbg !926
  %94 = trunc i64 %93 to i32, !dbg !927
  %95 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %92, i32 %94), !dbg !925
  %96 = extractvalue { i32, i1 } %95, 0, !dbg !925
  %97 = extractvalue { i32, i1 } %95, 1, !dbg !925
  %98 = call i1 @llvm.expect.i1(i1 %97, i1 false), !dbg !925
  br i1 %98, label %panic19, label %bb17, !dbg !925

bb17:                                             ; preds = %bb16
  store i32 %96, i32* %c, align 4, !dbg !928
  %99 = load i32, i32* %a, align 4, !dbg !929
  store i32 %99, i32* %tmp, align 4, !dbg !929
  %100 = load i32, i32* %tmp, align 4, !dbg !930
  %101 = load i64, i64* %i5, align 8, !dbg !931
  %102 = trunc i64 %101 to i32, !dbg !932
  %103 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %100, i32 %102), !dbg !930
  %104 = extractvalue { i32, i1 } %103, 0, !dbg !930
  %105 = extractvalue { i32, i1 } %103, 1, !dbg !930
  %106 = call i1 @llvm.expect.i1(i1 %105, i1 false), !dbg !930
  br i1 %106, label %panic20, label %bb18, !dbg !930

bb18:                                             ; preds = %bb17
  store i32 %104, i32* %a, align 4, !dbg !933
  %107 = load i64, i64* %i5, align 8, !dbg !934
  %108 = icmp ult i64 %107, 10, !dbg !935
  %109 = call i1 @llvm.expect.i1(i1 %108, i1 true), !dbg !935
  br i1 %109, label %bb19, label %panic21, !dbg !935

bb19:                                             ; preds = %bb18
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i64 0, i64 %107, !dbg !935
  %111 = load i32, i32* %110, align 4, !dbg !935
  %112 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %111, i32 3), !dbg !935
  %113 = extractvalue { i32, i1 } %112, 0, !dbg !935
  %114 = extractvalue { i32, i1 } %112, 1, !dbg !935
  %115 = call i1 @llvm.expect.i1(i1 %114, i1 false), !dbg !935
  br i1 %115, label %panic22, label %bb20, !dbg !935

bb20:                                             ; preds = %bb19
  %116 = load i32, i32* %localRes, align 4, !dbg !936
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %113, i32 %116), !dbg !935
  %118 = extractvalue { i32, i1 } %117, 0, !dbg !935
  %119 = extractvalue { i32, i1 } %117, 1, !dbg !935
  %120 = call i1 @llvm.expect.i1(i1 %119, i1 false), !dbg !935
  br i1 %120, label %panic23, label %bb21, !dbg !935

bb21:                                             ; preds = %bb20
  store i32 %118, i32* %localRes, align 4, !dbg !937
  br label %bb12, !dbg !938

bb22:                                             ; preds = %bb14
  %121 = bitcast { i64, i64 }* %_72 to i64*, !dbg !939
  store i64 0, i64* %121, align 8, !dbg !939
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1, !dbg !939
  store i64 %81, i64* %122, align 8, !dbg !939
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 0, !dbg !939
  %124 = load i64, i64* %123, align 8, !dbg !939
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_72, i32 0, i32 1, !dbg !939
  %126 = load i64, i64* %125, align 8, !dbg !939
  %127 = call { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E"(i64 %124, i64 %126), !dbg !939
  store { i64, i64 } %127, { i64, i64 }* %_71, align 8, !dbg !939
  br label %bb23, !dbg !939

bb23:                                             ; preds = %bb22
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_71, i32 0, i32 0, !dbg !939
  %129 = load i64, i64* %128, align 8, !dbg !939
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_71, i32 0, i32 1, !dbg !939
  %131 = load i64, i64* %130, align 8, !dbg !939
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter7, i32 0, i32 0, !dbg !939
  store i64 %129, i64* %132, align 8, !dbg !939
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter7, i32 0, i32 1, !dbg !939
  store i64 %131, i64* %133, align 8, !dbg !939
  br label %bb24, !dbg !939

bb24:                                             ; preds = %bb31, %bb23
  %134 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E"({ i64, i64 }* dereferenceable(16) %iter7), !dbg !877
  store { i64, i64 } %134, { i64, i64 }* %_79, align 8, !dbg !877
  br label %bb25, !dbg !877

bb25:                                             ; preds = %bb24
  %135 = bitcast { i64, i64 }* %_79 to i64*, !dbg !877
  %136 = load i64, i64* %135, align 8, !dbg !877, !range !325
  %137 = bitcast { i64, i64 }* %_79 to i64*, !dbg !940
  %138 = load i64, i64* %137, align 8, !dbg !940, !range !325
  switch i64 %138, label %bb5 [
    i64 0, label %bb26
    i64 1, label %bb27
  ], !dbg !940

bb26:                                             ; preds = %bb25
  store i32 0, i32* %a, align 4, !dbg !941
  store i32 1, i32* %c, align 4, !dbg !942
  %139 = bitcast { i32, i32 }* %_101 to i32*, !dbg !943
  store i32 0, i32* %139, align 4, !dbg !943
  %140 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_101, i32 0, i32 1, !dbg !943
  store i32 20, i32* %140, align 4, !dbg !943
  %141 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_101, i32 0, i32 0, !dbg !943
  %142 = load i32, i32* %141, align 4, !dbg !943
  %143 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_101, i32 0, i32 1, !dbg !943
  %144 = load i32, i32* %143, align 4, !dbg !943
  %145 = call { i32, i32 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h02a6dedfd3046133E"(i32 %142, i32 %144), !dbg !943
  store { i32, i32 } %145, { i32, i32 }* %_100, align 4, !dbg !943
  br label %bb32, !dbg !943

bb27:                                             ; preds = %bb25
  %146 = bitcast { i64, i64 }* %_79 to %"core::option::Option<usize>::Some"*, !dbg !940
  %147 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %146, i32 0, i32 1, !dbg !940
  %148 = load i64, i64* %147, align 8, !dbg !940
  store i64 %148, i64* %val9, align 8, !dbg !940
  %149 = load i64, i64* %val9, align 8, !dbg !880
  store i64 %149, i64* %__next8, align 8, !dbg !880
  %150 = load i64, i64* %__next8, align 8, !dbg !877
  store i64 %150, i64* %i10, align 8, !dbg !877
  %151 = load i32, i32* %arrSum, align 4, !dbg !944
  %152 = load i64, i64* %i10, align 8, !dbg !945
  %153 = icmp ult i64 %152, 10, !dbg !946
  %154 = call i1 @llvm.expect.i1(i1 %153, i1 true), !dbg !946
  br i1 %154, label %bb28, label %panic24, !dbg !946

bb28:                                             ; preds = %bb27
  %155 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i64 0, i64 %152, !dbg !946
  %156 = load i32, i32* %155, align 4, !dbg !946
  %157 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %151, i32 %156), !dbg !944
  %158 = extractvalue { i32, i1 } %157, 0, !dbg !944
  %159 = extractvalue { i32, i1 } %157, 1, !dbg !944
  %160 = call i1 @llvm.expect.i1(i1 %159, i1 false), !dbg !944
  br i1 %160, label %panic25, label %bb29, !dbg !944

bb29:                                             ; preds = %bb28
  store i32 %158, i32* %arrSum, align 4, !dbg !947
  %161 = load i32, i32* %arrMul, align 4, !dbg !948
  %162 = load i64, i64* %i10, align 8, !dbg !949
  %163 = icmp ult i64 %162, 10, !dbg !950
  %164 = call i1 @llvm.expect.i1(i1 %163, i1 true), !dbg !950
  br i1 %164, label %bb30, label %panic26, !dbg !950

bb30:                                             ; preds = %bb29
  %165 = getelementptr inbounds [10 x i32], [10 x i32]* %localArr, i64 0, i64 %162, !dbg !950
  %166 = load i32, i32* %165, align 4, !dbg !950
  %167 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %161, i32 %166), !dbg !948
  %168 = extractvalue { i32, i1 } %167, 0, !dbg !948
  %169 = extractvalue { i32, i1 } %167, 1, !dbg !948
  %170 = call i1 @llvm.expect.i1(i1 %169, i1 false), !dbg !948
  br i1 %170, label %panic27, label %bb31, !dbg !948

bb31:                                             ; preds = %bb30
  store i32 %168, i32* %arrMul, align 4, !dbg !951
  br label %bb24, !dbg !952

bb32:                                             ; preds = %bb26
  %171 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_100, i32 0, i32 0, !dbg !943
  %172 = load i32, i32* %171, align 4, !dbg !943
  %173 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_100, i32 0, i32 1, !dbg !943
  %174 = load i32, i32* %173, align 4, !dbg !943
  %175 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter12, i32 0, i32 0, !dbg !943
  store i32 %172, i32* %175, align 4, !dbg !943
  %176 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %iter12, i32 0, i32 1, !dbg !943
  store i32 %174, i32* %176, align 4, !dbg !943
  br label %bb33, !dbg !943

bb33:                                             ; preds = %bb40, %bb32
  %177 = call { i32, i32 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc27be20a3d2ac24bE"({ i32, i32 }* dereferenceable(8) %iter12), !dbg !892
  store { i32, i32 } %177, { i32, i32 }* %_105, align 4, !dbg !892
  br label %bb34, !dbg !892

bb34:                                             ; preds = %bb33
  %178 = bitcast { i32, i32 }* %_105 to i32*, !dbg !892
  %179 = load i32, i32* %178, align 4, !dbg !892, !range !112
  %180 = zext i32 %179 to i64, !dbg !892
  %181 = bitcast { i32, i32 }* %_105 to i32*, !dbg !953
  %182 = load i32, i32* %181, align 4, !dbg !953, !range !112
  %183 = zext i32 %182 to i64, !dbg !953
  switch i64 %183, label %bb5 [
    i64 0, label %bb35
    i64 1, label %bb36
  ], !dbg !953

bb35:                                             ; preds = %bb34
  ret void, !dbg !910

bb36:                                             ; preds = %bb34
  %184 = bitcast { i32, i32 }* %_105 to %"core::option::Option<i32>::Some"*, !dbg !953
  %185 = getelementptr inbounds %"core::option::Option<i32>::Some", %"core::option::Option<i32>::Some"* %184, i32 0, i32 1, !dbg !953
  %186 = load i32, i32* %185, align 4, !dbg !953
  store i32 %186, i32* %val14, align 4, !dbg !953
  %187 = load i32, i32* %val14, align 4, !dbg !895
  store i32 %187, i32* %__next13, align 4, !dbg !895
  %188 = load i32, i32* %__next13, align 4, !dbg !892
  store i32 %188, i32* %i15, align 4, !dbg !892
  %189 = load i32, i32* %a, align 4, !dbg !954
  %190 = load i32, i32* %i15, align 4, !dbg !955
  %191 = call i32 @_ZN9perf_test11expensiveOP17h0fd88b9e93310979E(i32 %190), !dbg !956
  br label %bb37, !dbg !956

bb37:                                             ; preds = %bb36
  %192 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %189, i32 %191), !dbg !954
  %193 = extractvalue { i32, i1 } %192, 0, !dbg !954
  %194 = extractvalue { i32, i1 } %192, 1, !dbg !954
  %195 = call i1 @llvm.expect.i1(i1 %194, i1 false), !dbg !954
  br i1 %195, label %panic28, label %bb38, !dbg !954

bb38:                                             ; preds = %bb37
  store i32 %193, i32* %a, align 4, !dbg !957
  %196 = load i32, i32* %c, align 4, !dbg !958
  %197 = load i32, i32* %i15, align 4, !dbg !959
  %198 = call i32 @_ZN9perf_test11expensiveOP17h0fd88b9e93310979E(i32 %197), !dbg !960
  br label %bb39, !dbg !960

bb39:                                             ; preds = %bb38
  %199 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %196, i32 %198), !dbg !958
  %200 = extractvalue { i32, i1 } %199, 0, !dbg !958
  %201 = extractvalue { i32, i1 } %199, 1, !dbg !958
  %202 = call i1 @llvm.expect.i1(i1 %201, i1 false), !dbg !958
  br i1 %202, label %panic29, label %bb40, !dbg !958

bb40:                                             ; preds = %bb39
  store i32 %200, i32* %c, align 4, !dbg !961
  br label %bb33, !dbg !962

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.7 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !911
  unreachable, !dbg !911

panic16:                                          ; preds = %bb7
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.9 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !913
  unreachable, !dbg !913

panic17:                                          ; preds = %bb8
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.a to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !915
  unreachable, !dbg !915

panic18:                                          ; preds = %bb15
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.b to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !923
  unreachable, !dbg !923

panic19:                                          ; preds = %bb16
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.c to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !925
  unreachable, !dbg !925

panic20:                                          ; preds = %bb17
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.d to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !930
  unreachable, !dbg !930

panic21:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.e to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %107, i64 10), !dbg !935
  unreachable, !dbg !935

panic22:                                          ; preds = %bb19
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.f to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !935
  unreachable, !dbg !935

panic23:                                          ; preds = %bb20
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.g to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !935
  unreachable, !dbg !935

panic24:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.h to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %152, i64 10), !dbg !946
  unreachable, !dbg !946

panic25:                                          ; preds = %bb28
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.i to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !944
  unreachable, !dbg !944

panic26:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.j to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %162, i64 10), !dbg !950
  unreachable, !dbg !950

panic27:                                          ; preds = %bb30
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.k to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !948
  unreachable, !dbg !948

panic28:                                          ; preds = %bb37
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.l to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !954
  unreachable, !dbg !954

panic29:                                          ; preds = %bb39
  call void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast ({ { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, i32, i32 }* @panic_loc.m to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*)), !dbg !958
  unreachable, !dbg !958
}

; Function Attrs: uwtable
define internal void @_ZN9perf_test6do_all17hdc553eacfb8e3e31E() unnamed_addr #0 !dbg !963 {
start:
  %tmp = alloca i32, align 4
  %i5 = alloca i64, align 8
  %val4 = alloca i64, align 8
  %_33 = alloca { i64, i64 }, align 8
  %__next3 = alloca i64, align 8
  %iter2 = alloca { i64, i64 }, align 8
  %_26 = alloca { i64, i64 }, align 8
  %_25 = alloca { i64, i64 }, align 8
  %_result1 = alloca {}, align 1
  %i = alloca i64, align 8
  %val = alloca i64, align 8
  %_13 = alloca { i64, i64 }, align 8
  %__next = alloca i64, align 8
  %iter = alloca { i64, i64 }, align 8
  %_6 = alloca { i64, i64 }, align 8
  %_5 = alloca { i64, i64 }, align 8
  %_result = alloca {}, align 1
  %arr = alloca [10 x i32], align 4
  %localarr = alloca [10 x i32], align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %localarr, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata [10 x i32]* %arr, metadata !967, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata {}* %_result, metadata !970, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata { i64, i64 }* %iter, metadata !973, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata i64* %__next, metadata !976, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.declare(metadata i64* %val, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata i64* %i, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.declare(metadata {}* %_result1, metadata !985, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata { i64, i64 }* %iter2, metadata !988, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i64* %__next3, metadata !991, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata i64* %val4, metadata !994, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.declare(metadata i64* %i5, metadata !997, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !1000, metadata !DIExpression()), !dbg !1002
  %0 = bitcast [10 x i32]* %localarr to i32*, !dbg !1003
  store i32 1, i32* %0, align 4, !dbg !1003
  %1 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 1, !dbg !1003
  store i32 2, i32* %1, align 4, !dbg !1003
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 2, !dbg !1003
  store i32 3, i32* %2, align 4, !dbg !1003
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 3, !dbg !1003
  store i32 4, i32* %3, align 4, !dbg !1003
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 4, !dbg !1003
  store i32 5, i32* %4, align 4, !dbg !1003
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 5, !dbg !1003
  store i32 6, i32* %5, align 4, !dbg !1003
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 6, !dbg !1003
  store i32 7, i32* %6, align 4, !dbg !1003
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 7, !dbg !1003
  store i32 8, i32* %7, align 4, !dbg !1003
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 8, !dbg !1003
  store i32 9, i32* %8, align 4, !dbg !1003
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i32 0, i32 9, !dbg !1003
  store i32 0, i32* %9, align 4, !dbg !1003
  %10 = bitcast [10 x i32]* %arr to i32*, !dbg !1004
  store i32 1, i32* %10, align 4, !dbg !1004
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 1, !dbg !1004
  store i32 2, i32* %11, align 4, !dbg !1004
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 2, !dbg !1004
  store i32 3, i32* %12, align 4, !dbg !1004
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 3, !dbg !1004
  store i32 4, i32* %13, align 4, !dbg !1004
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 4, !dbg !1004
  store i32 5, i32* %14, align 4, !dbg !1004
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 5, !dbg !1004
  store i32 6, i32* %15, align 4, !dbg !1004
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 6, !dbg !1004
  store i32 7, i32* %16, align 4, !dbg !1004
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 7, !dbg !1004
  store i32 8, i32* %17, align 4, !dbg !1004
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 8, !dbg !1004
  store i32 9, i32* %18, align 4, !dbg !1004
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i32 9, !dbg !1004
  store i32 0, i32* %19, align 4, !dbg !1004
  %20 = bitcast [10 x i32]* %arr to [0 x i32]*, !dbg !1005
  %21 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE"([0 x i32]* noalias nonnull readonly %20, i64 10), !dbg !1005
  br label %bb1, !dbg !1005

bb1:                                              ; preds = %start
  %22 = bitcast { i64, i64 }* %_6 to i64*, !dbg !1006
  store i64 0, i64* %22, align 8, !dbg !1006
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1, !dbg !1006
  store i64 %21, i64* %23, align 8, !dbg !1006
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0, !dbg !1006
  %25 = load i64, i64* %24, align 8, !dbg !1006
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1, !dbg !1006
  %27 = load i64, i64* %26, align 8, !dbg !1006
  %28 = call { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E"(i64 %25, i64 %27), !dbg !1006
  store { i64, i64 } %28, { i64, i64 }* %_5, align 8, !dbg !1006
  br label %bb2, !dbg !1006

bb2:                                              ; preds = %bb1
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 0, !dbg !1006
  %30 = load i64, i64* %29, align 8, !dbg !1006
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_5, i32 0, i32 1, !dbg !1006
  %32 = load i64, i64* %31, align 8, !dbg !1006
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 0, !dbg !1006
  store i64 %30, i64* %33, align 8, !dbg !1006
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter, i32 0, i32 1, !dbg !1006
  store i64 %32, i64* %34, align 8, !dbg !1006
  br label %bb3, !dbg !1006

bb3:                                              ; preds = %bb8, %bb2
  %35 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E"({ i64, i64 }* dereferenceable(16) %iter), !dbg !978
  store { i64, i64 } %35, { i64, i64 }* %_13, align 8, !dbg !978
  br label %bb4, !dbg !978

bb4:                                              ; preds = %bb3
  %36 = bitcast { i64, i64 }* %_13 to i64*, !dbg !978
  %37 = load i64, i64* %36, align 8, !dbg !978, !range !325
  %38 = bitcast { i64, i64 }* %_13 to i64*, !dbg !1007
  %39 = load i64, i64* %38, align 8, !dbg !1007, !range !325
  switch i64 %39, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ], !dbg !1007

bb5:                                              ; preds = %bb4
  %40 = bitcast [10 x i32]* %arr to [0 x i32]*, !dbg !1008
  %41 = call i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE"([0 x i32]* noalias nonnull readonly %40, i64 10), !dbg !1008
  br label %bb9, !dbg !1008

bb6:                                              ; preds = %bb12, %bb4
  unreachable, !dbg !1009

bb7:                                              ; preds = %bb4
  %42 = bitcast { i64, i64 }* %_13 to %"core::option::Option<usize>::Some"*, !dbg !1007
  %43 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %42, i32 0, i32 1, !dbg !1007
  %44 = load i64, i64* %43, align 8, !dbg !1007
  store i64 %44, i64* %val, align 8, !dbg !1007
  %45 = load i64, i64* %val, align 8, !dbg !981
  store i64 %45, i64* %__next, align 8, !dbg !981
  %46 = load i64, i64* %__next, align 8, !dbg !978
  store i64 %46, i64* %i, align 8, !dbg !978
  %47 = load i64, i64* %i, align 8, !dbg !1010
  %48 = icmp ult i64 %47, 10, !dbg !1011
  %49 = call i1 @llvm.expect.i1(i1 %48, i1 true), !dbg !1011
  br i1 %49, label %bb8, label %panic, !dbg !1011

bb8:                                              ; preds = %bb7
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 %47, !dbg !1011
  store i32 0, i32* %50, align 4, !dbg !1011
  br label %bb3, !dbg !1012

bb9:                                              ; preds = %bb5
  %51 = bitcast { i64, i64 }* %_26 to i64*, !dbg !1013
  store i64 0, i64* %51, align 8, !dbg !1013
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 1, !dbg !1013
  store i64 %41, i64* %52, align 8, !dbg !1013
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 0, !dbg !1013
  %54 = load i64, i64* %53, align 8, !dbg !1013
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_26, i32 0, i32 1, !dbg !1013
  %56 = load i64, i64* %55, align 8, !dbg !1013
  %57 = call { i64, i64 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E"(i64 %54, i64 %56), !dbg !1013
  store { i64, i64 } %57, { i64, i64 }* %_25, align 8, !dbg !1013
  br label %bb10, !dbg !1013

bb10:                                             ; preds = %bb9
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_25, i32 0, i32 0, !dbg !1013
  %59 = load i64, i64* %58, align 8, !dbg !1013
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_25, i32 0, i32 1, !dbg !1013
  %61 = load i64, i64* %60, align 8, !dbg !1013
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 0, !dbg !1013
  store i64 %59, i64* %62, align 8, !dbg !1013
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %iter2, i32 0, i32 1, !dbg !1013
  store i64 %61, i64* %63, align 8, !dbg !1013
  br label %bb11, !dbg !1013

bb11:                                             ; preds = %bb18, %bb10
  %64 = call { i64, i64 } @"_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E"({ i64, i64 }* dereferenceable(16) %iter2), !dbg !993
  store { i64, i64 } %64, { i64, i64 }* %_33, align 8, !dbg !993
  br label %bb12, !dbg !993

bb12:                                             ; preds = %bb11
  %65 = bitcast { i64, i64 }* %_33 to i64*, !dbg !993
  %66 = load i64, i64* %65, align 8, !dbg !993, !range !325
  %67 = bitcast { i64, i64 }* %_33 to i64*, !dbg !1014
  %68 = load i64, i64* %67, align 8, !dbg !1014, !range !325
  switch i64 %68, label %bb6 [
    i64 0, label %bb13
    i64 1, label %bb14
  ], !dbg !1014

bb13:                                             ; preds = %bb12
  ret void, !dbg !1009

bb14:                                             ; preds = %bb12
  %69 = bitcast { i64, i64 }* %_33 to %"core::option::Option<usize>::Some"*, !dbg !1014
  %70 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %69, i32 0, i32 1, !dbg !1014
  %71 = load i64, i64* %70, align 8, !dbg !1014
  store i64 %71, i64* %val4, align 8, !dbg !1014
  %72 = load i64, i64* %val4, align 8, !dbg !996
  store i64 %72, i64* %__next3, align 8, !dbg !996
  %73 = load i64, i64* %__next3, align 8, !dbg !993
  store i64 %73, i64* %i5, align 8, !dbg !993
  %74 = load i64, i64* %i5, align 8, !dbg !1015
  %75 = icmp ult i64 %74, 10, !dbg !1016
  %76 = call i1 @llvm.expect.i1(i1 %75, i1 true), !dbg !1016
  br i1 %76, label %bb15, label %panic6, !dbg !1016

bb15:                                             ; preds = %bb14
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i64 0, i64 %74, !dbg !1016
  %78 = load i32, i32* %77, align 4, !dbg !1016
  store i32 %78, i32* %tmp, align 4, !dbg !1016
  %79 = load i64, i64* %i5, align 8, !dbg !1017
  %80 = icmp ult i64 %79, 10, !dbg !1018
  %81 = call i1 @llvm.expect.i1(i1 %80, i1 true), !dbg !1018
  br i1 %81, label %bb16, label %panic7, !dbg !1018

bb16:                                             ; preds = %bb15
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 %79, !dbg !1018
  %83 = load i32, i32* %82, align 4, !dbg !1018
  %84 = load i64, i64* %i5, align 8, !dbg !1019
  %85 = icmp ult i64 %84, 10, !dbg !1020
  %86 = call i1 @llvm.expect.i1(i1 %85, i1 true), !dbg !1020
  br i1 %86, label %bb17, label %panic8, !dbg !1020

bb17:                                             ; preds = %bb16
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %localarr, i64 0, i64 %84, !dbg !1020
  store i32 %83, i32* %87, align 4, !dbg !1020
  %88 = load i32, i32* %tmp, align 4, !dbg !1021
  %89 = load i64, i64* %i5, align 8, !dbg !1022
  %90 = icmp ult i64 %89, 10, !dbg !1023
  %91 = call i1 @llvm.expect.i1(i1 %90, i1 true), !dbg !1023
  br i1 %91, label %bb18, label %panic9, !dbg !1023

bb18:                                             ; preds = %bb17
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i64 0, i64 %89, !dbg !1023
  store i32 %88, i32* %92, align 4, !dbg !1023
  br label %bb11, !dbg !1024

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.n to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %47, i64 10), !dbg !1011
  unreachable, !dbg !1011

panic6:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.o to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %74, i64 10), !dbg !1016
  unreachable, !dbg !1016

panic7:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.p to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %79, i64 10), !dbg !1018
  unreachable, !dbg !1018

panic8:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.q to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %84, i64 10), !dbg !1020
  unreachable, !dbg !1020

panic9:                                           ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24) bitcast ({ { [0 x i8]*, i64 }, i32, i32 }* @panic_bounds_check_loc.r to { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*), i64 %89, i64 10), !dbg !1023
  unreachable, !dbg !1023
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
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17haa57ffd51eb03b56E({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40)) unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8e752fa77de3cffeE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(24), i64, i64) unnamed_addr #5

define i32 @main(i32, i8**) unnamed_addr #6 {
top:
  %2 = load volatile i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__rustc_debug_gdb_scripts_section__, i32 0, i32 0), align 1
  %3 = sext i32 %0 to i64
  %4 = call i64 @_ZN3std2rt10lang_start17h7affe8c14f915b36E(void ()* @_ZN9perf_test4main17h8252daa33a2b63a8E, i64 %3, i8** %1)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

declare void @__dp_init(i32, i32, i32)

declare void @__dp_finalize(i32)

declare void @__dp_read(i32, i64, i8*)

declare void @__dp_write(i32, i64, i8*)

declare void @__dp_call(i32)

declare void @__dp_func_entry(i32, i32)

declare void @__dp_func_exit(i32, i32)

declare void @__dp_loop_entry(i32, i32)

declare void @__dp_loop_exit(i32, i32)

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
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !2, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !5, identifier: "vtable")
!4 = !{}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "closure", file: !2, size: 64, align: 64, elements: !6, identifier: "5637902bcdb6419cc777a7b8d9e676ca")
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5, file: !2, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !9, size: 64, align: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !14, producer: "clang LLVM (rustc version 1.30.0 (da5f414c2 2018-10-24))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !30)
!14 = !DIFile(filename: "perf_test.rs", directory: "/home/simonschmalfuss/discopop/examples+tests/performance/rust")
!15 = !{!16, !23, !25}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !17, file: !2, baseType: !19, size: 32, align: 32, elements: !20)
!17 = !DINamespace(name: "option", scope: !18)
!18 = !DINamespace(name: "core", scope: null)
!19 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "None", value: 0)
!22 = !DIEnumerator(name: "Some", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !17, file: !2, baseType: !24, size: 64, align: 64, elements: !20)
!24 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !26, file: !2, baseType: !19, size: 32, align: 32, elements: !27)
!26 = !DINamespace(name: "result", scope: !18)
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "Ok", value: 0)
!29 = !DIEnumerator(name: "Err", value: 1)
!30 = !{!0}
!31 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h7affe8c14f915b36E", scope: !33, file: !32, line: 71, type: !35, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !41, retainedNodes: !4)
!32 = !DIFile(filename: "libstd/rt.rs", directory: "")
!33 = !DINamespace(name: "rt", scope: !34)
!34 = !DINamespace(name: "std", scope: null)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !8, !37, !38}
!37 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !40, size: 64, align: 64)
!40 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!41 = !{!42}
!42 = !DITemplateTypeParameter(name: "T", type: !43)
!43 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "main", arg: 1, scope: !31, file: !45, line: 1, type: !8)
!45 = !DIFile(filename: "perf_test.rs", directory: "")
!46 = !DILocation(line: 1, scope: !31)
!47 = !DILocalVariable(name: "argc", arg: 2, scope: !31, file: !45, line: 1, type: !37)
!48 = !DILocalVariable(name: "argv", arg: 3, scope: !31, file: !45, line: 1, type: !38)
!49 = !DILocation(line: 74, column: 25, scope: !31)
!50 = !DILocation(line: 74, column: 24, scope: !31)
!51 = !DILocation(line: 74, column: 50, scope: !31)
!52 = !DILocation(line: 74, column: 56, scope: !31)
!53 = !DILocation(line: 74, column: 4, scope: !31)
!54 = !DILocation(line: 75, column: 1, scope: !31)
!55 = distinct !DISubprogram(name: "{{closure}}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc4f2e98993f8b97bE", scope: !56, file: !32, line: 74, type: !57, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !41, retainedNodes: !4)
!56 = !DINamespace(name: "lang_start", scope: !33)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !60}
!59 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&closure", baseType: !5, size: 64, align: 64)
!61 = !DILocalVariable(name: "main", scope: !55, file: !45, line: 1, type: !8, align: 8)
!62 = !DILocation(line: 1, scope: !55)
!63 = !DILocation(line: 74, column: 33, scope: !55)
!64 = !DILocation(line: 74, column: 48, scope: !55)
!65 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7d2962ee37187ce9E", scope: !67, file: !66, line: 408, type: !74, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!66 = !DIFile(filename: "libstd/sys/unix/process/process_common.rs", directory: "")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !68, file: !2, size: 8, align: 8, elements: !72, identifier: "46c317801c8a92f48c3a9e1cbd850561")
!68 = !DINamespace(name: "process_common", scope: !69)
!69 = !DINamespace(name: "process", scope: !70)
!70 = !DINamespace(name: "unix", scope: !71)
!71 = !DINamespace(name: "sys", scope: !34)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !67, file: !2, baseType: !40, size: 8, align: 8)
!74 = !DISubroutineType(types: !75)
!75 = !{!59, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::unix::process::process_common::ExitCode", baseType: !67, size: 64, align: 64)
!77 = !DILocalVariable(name: "self", arg: 1, scope: !65, file: !45, line: 1, type: !76)
!78 = !DILocation(line: 1, scope: !65)
!79 = !DILocation(line: 409, column: 8, scope: !65)
!80 = !DILocation(line: 410, column: 5, scope: !65)
!81 = distinct !DISubprogram(name: "add_usize", linkageName: "_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$9add_usize17h79dc291b52b89b16E", scope: !83, file: !82, line: 125, type: !86, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!82 = !DIFile(filename: "libcore/iter/range.rs", directory: "")
!83 = !DINamespace(name: "{{impl}}", scope: !84)
!84 = !DINamespace(name: "range", scope: !85)
!85 = !DINamespace(name: "iter", scope: !18)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !99, !100}
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Option<i32>", scope: !17, file: !2, size: 64, align: 32, elements: !89, identifier: "6480c82612ed338dfcb42dcd440522ba")
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !2, baseType: !91, size: 32, align: 8)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !17, file: !2, size: 64, align: 32, elements: !92, identifier: "6480c82612ed338dfcb42dcd440522ba::None")
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !91, file: !2, baseType: !16, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !2, baseType: !95, size: 64, align: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !17, file: !2, size: 64, align: 32, elements: !96, identifier: "6480c82612ed338dfcb42dcd440522ba::Some")
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !95, file: !2, baseType: !16, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !95, file: !2, baseType: !59, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&i32", baseType: !59, size: 64, align: 64)
!100 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!101 = !DILocalVariable(name: "self", arg: 1, scope: !81, file: !45, line: 1, type: !99)
!102 = !DILocation(line: 1, scope: !81)
!103 = !DILocalVariable(name: "n", arg: 2, scope: !81, file: !45, line: 1, type: !100)
!104 = !DILocalVariable(name: "n_as_unsigned", scope: !105, file: !82, line: 127, type: !19, align: 4)
!105 = distinct !DILexicalBlock(scope: !81, file: !82, line: 127, column: 41)
!106 = !DILocation(line: 127, column: 23, scope: !105)
!107 = !DILocalVariable(name: "wrapped", scope: !108, file: !82, line: 131, type: !59, align: 4)
!108 = distinct !DILexicalBlock(scope: !105, file: !82, line: 131, column: 24)
!109 = !DILocation(line: 131, column: 28, scope: !108)
!110 = !DILocation(line: 126, column: 44, scope: !81)
!111 = !DILocation(line: 126, column: 22, scope: !81)
!112 = !{i32 0, i32 2}
!113 = !DILocation(line: 127, column: 20, scope: !81)
!114 = !DILocation(line: 127, column: 23, scope: !81)
!115 = !DILocation(line: 131, column: 39, scope: !105)
!116 = !DILocation(line: 131, column: 72, scope: !105)
!117 = !DILocation(line: 131, column: 38, scope: !105)
!118 = !DILocation(line: 138, column: 30, scope: !81)
!119 = !DILocation(line: 126, column: 16, scope: !81)
!120 = !DILocation(line: 140, column: 13, scope: !81)
!121 = !DILocation(line: 132, column: 27, scope: !108)
!122 = !DILocation(line: 132, column: 38, scope: !108)
!123 = !DILocation(line: 132, column: 24, scope: !108)
!124 = !DILocation(line: 133, column: 33, scope: !108)
!125 = !DILocation(line: 133, column: 28, scope: !108)
!126 = !DILocation(line: 135, column: 28, scope: !108)
!127 = distinct !DISubprogram(name: "add_usize", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$9add_usize17h6c1353dfecf7f2dbE", scope: !83, file: !82, line: 93, type: !128, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !141, !100}
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Option<usize>", scope: !17, file: !2, size: 128, align: 64, elements: !131, identifier: "9969130d64ea2f122b688ebb19e9a30c")
!131 = !{!132, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !2, baseType: !133, size: 64, align: 8)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !17, file: !2, size: 128, align: 64, elements: !134, identifier: "9969130d64ea2f122b688ebb19e9a30c::None")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !133, file: !2, baseType: !23, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !2, baseType: !137, size: 128, align: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !17, file: !2, size: 128, align: 64, elements: !138, identifier: "9969130d64ea2f122b688ebb19e9a30c::Some")
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !137, file: !2, baseType: !23, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !137, file: !2, baseType: !100, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !100, size: 64, align: 64)
!142 = !DILocalVariable(name: "self", arg: 1, scope: !127, file: !45, line: 1, type: !141)
!143 = !DILocation(line: 1, scope: !127)
!144 = !DILocalVariable(name: "n", arg: 2, scope: !127, file: !45, line: 1, type: !100)
!145 = !DILocalVariable(name: "n_as_t", scope: !146, file: !82, line: 95, type: !100, align: 8)
!146 = distinct !DILexicalBlock(scope: !127, file: !82, line: 95, column: 34)
!147 = !DILocation(line: 95, column: 23, scope: !146)
!148 = !DILocation(line: 94, column: 37, scope: !127)
!149 = !DILocation(line: 94, column: 22, scope: !127)
!150 = !DILocation(line: 95, column: 23, scope: !127)
!151 = !DILocation(line: 95, column: 34, scope: !146)
!152 = !DILocation(line: 95, column: 51, scope: !146)
!153 = !DILocation(line: 98, column: 13, scope: !127)
!154 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17h158c42edafe7321bE", scope: !156, file: !155, line: 950, type: !159, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!155 = !DIFile(filename: "libcore/cmp.rs", directory: "")
!156 = !DINamespace(name: "{{impl}}", scope: !157)
!157 = !DINamespace(name: "impls", scope: !158)
!158 = !DINamespace(name: "cmp", scope: !18)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !99, !99}
!161 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!162 = !DILocalVariable(name: "self", arg: 1, scope: !154, file: !45, line: 1, type: !99)
!163 = !DILocation(line: 1, scope: !154)
!164 = !DILocalVariable(name: "other", arg: 2, scope: !154, file: !45, line: 1, type: !99)
!165 = !DILocation(line: 950, column: 51, scope: !154)
!166 = !DILocation(line: 950, column: 61, scope: !154)
!167 = !DILocation(line: 950, column: 71, scope: !154)
!168 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hfd694ddb79f3bc88E", scope: !156, file: !155, line: 950, type: !169, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!169 = !DISubroutineType(types: !170)
!170 = !{!161, !141, !141}
!171 = !DILocalVariable(name: "self", arg: 1, scope: !168, file: !45, line: 1, type: !141)
!172 = !DILocation(line: 1, scope: !168)
!173 = !DILocalVariable(name: "other", arg: 2, scope: !168, file: !45, line: 1, type: !141)
!174 = !DILocation(line: 950, column: 51, scope: !168)
!175 = !DILocation(line: 950, column: 61, scope: !168)
!176 = !DILocation(line: 950, column: 71, scope: !168)
!177 = distinct !DISubprogram(name: "uninitialized<usize>", linkageName: "_ZN4core3mem13uninitialized17h023b0420eda21312E", scope: !179, file: !178, line: 612, type: !180, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!178 = !DIFile(filename: "libcore/mem.rs", directory: "")
!179 = !DINamespace(name: "mem", scope: !18)
!180 = !DISubroutineType(types: !181)
!181 = !{!100}
!182 = !{!183}
!183 = !DITemplateTypeParameter(name: "T", type: !100)
!184 = !DILocation(line: 613, column: 4, scope: !177)
!185 = !DILocation(line: 614, column: 1, scope: !177)
!186 = distinct !DISubprogram(name: "uninitialized<i32>", linkageName: "_ZN4core3mem13uninitialized17h636d8a459a42d744E", scope: !179, file: !178, line: 612, type: !187, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!187 = !DISubroutineType(types: !188)
!188 = !{!59}
!189 = !{!190}
!190 = !DITemplateTypeParameter(name: "T", type: !59)
!191 = !DILocation(line: 613, column: 4, scope: !186)
!192 = !DILocation(line: 614, column: 1, scope: !186)
!193 = distinct !DISubprogram(name: "uninitialized<core::ptr::swap_nonoverlapping_bytes::UnalignedBlock>", linkageName: "_ZN4core3mem13uninitialized17h7c4236fb8e45cf4cE", scope: !179, file: !178, line: 612, type: !194, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !204, retainedNodes: !4)
!194 = !DISubroutineType(types: !195)
!195 = !{!196}
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnalignedBlock", scope: !197, file: !2, size: 256, align: 64, elements: !199, identifier: "277b64bad252f8fc3aff8fe4e35e1be9")
!197 = !DINamespace(name: "swap_nonoverlapping_bytes", scope: !198)
!198 = !DINamespace(name: "ptr", scope: !18)
!199 = !{!200, !201, !202, !203}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !196, file: !2, baseType: !24, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !196, file: !2, baseType: !24, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !196, file: !2, baseType: !24, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__3", scope: !196, file: !2, baseType: !24, size: 64, align: 64, offset: 192)
!204 = !{!205}
!205 = !DITemplateTypeParameter(name: "T", type: !196)
!206 = !DILocation(line: 613, column: 4, scope: !193)
!207 = !DILocation(line: 614, column: 1, scope: !193)
!208 = distinct !DISubprogram(name: "uninitialized<core::ptr::swap_nonoverlapping_bytes::Block>", linkageName: "_ZN4core3mem13uninitialized17h8b61384b076b6767E", scope: !179, file: !178, line: 612, type: !209, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !217, retainedNodes: !4)
!209 = !DISubroutineType(types: !210)
!210 = !{!211}
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Block", scope: !197, file: !2, size: 256, align: 256, elements: !212, identifier: "e3d5e740df975f43a0ee075c08ac57df")
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !211, file: !2, baseType: !24, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !211, file: !2, baseType: !24, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !211, file: !2, baseType: !24, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__3", scope: !211, file: !2, baseType: !24, size: 64, align: 64, offset: 192)
!217 = !{!218}
!218 = !DITemplateTypeParameter(name: "T", type: !211)
!219 = !DILocation(line: 613, column: 4, scope: !208)
!220 = !DILocation(line: 614, column: 1, scope: !208)
!221 = distinct !DISubprogram(name: "swap<usize>", linkageName: "_ZN4core3mem4swap17h1f2f35506b7c0874E", scope: !179, file: !178, line: 633, type: !222, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !100, size: 64, align: 64)
!225 = !DILocalVariable(name: "x", arg: 1, scope: !221, file: !45, line: 1, type: !224)
!226 = !DILocation(line: 1, scope: !221)
!227 = !DILocalVariable(name: "y", arg: 2, scope: !221, file: !45, line: 1, type: !224)
!228 = !DILocation(line: 635, column: 37, scope: !229)
!229 = distinct !DILexicalBlock(scope: !221, file: !178, line: 634, column: 4)
!230 = !DILocation(line: 635, column: 40, scope: !229)
!231 = !DILocation(line: 635, column: 8, scope: !229)
!232 = !DILocation(line: 637, column: 1, scope: !221)
!233 = distinct !DISubprogram(name: "swap<i32>", linkageName: "_ZN4core3mem4swap17h224e27c3c32afdc7E", scope: !179, file: !178, line: 633, type: !234, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut i32", baseType: !59, size: 64, align: 64)
!237 = !DILocalVariable(name: "x", arg: 1, scope: !233, file: !45, line: 1, type: !236)
!238 = !DILocation(line: 1, scope: !233)
!239 = !DILocalVariable(name: "y", arg: 2, scope: !233, file: !45, line: 1, type: !236)
!240 = !DILocation(line: 635, column: 37, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !178, line: 634, column: 4)
!242 = !DILocation(line: 635, column: 40, scope: !241)
!243 = !DILocation(line: 635, column: 8, scope: !241)
!244 = !DILocation(line: 637, column: 1, scope: !233)
!245 = distinct !DISubprogram(name: "size_of<core::ptr::swap_nonoverlapping_bytes::Block>", linkageName: "_ZN4core3mem7size_of17h743dff8980294f5cE", scope: !179, file: !178, line: 289, type: !180, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !217, retainedNodes: !4)
!246 = !DILocation(line: 290, column: 4, scope: !245)
!247 = !DILocation(line: 291, column: 1, scope: !245)
!248 = distinct !DISubprogram(name: "size_of<usize>", linkageName: "_ZN4core3mem7size_of17h92f70eaaba1285dfE", scope: !179, file: !178, line: 289, type: !180, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!249 = !DILocation(line: 290, column: 4, scope: !248)
!250 = !DILocation(line: 291, column: 1, scope: !248)
!251 = distinct !DISubprogram(name: "size_of<i32>", linkageName: "_ZN4core3mem7size_of17he4983235a16c143aE", scope: !179, file: !178, line: 289, type: !180, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!252 = !DILocation(line: 290, column: 4, scope: !251)
!253 = !DILocation(line: 291, column: 1, scope: !251)
!254 = distinct !DISubprogram(name: "try_from", linkageName: "_ZN4core3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$usize$GT$$u20$for$u20$u32$GT$8try_from17h76060844654e5189E", scope: !256, file: !255, line: 4903, type: !259, scopeLine: 4903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!255 = !DIFile(filename: "libcore/num/mod.rs", directory: "")
!256 = !DINamespace(name: "{{impl}}", scope: !257)
!257 = !DINamespace(name: "ptr_try_from_impls", scope: !258)
!258 = !DINamespace(name: "num", scope: !18)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !100}
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Result<u32, core::num::TryFromIntError>", scope: !26, file: !2, size: 64, align: 32, elements: !262, identifier: "5f9cd321eb7c3b935069fed1e4bb17a4")
!262 = !{!263, !268}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !2, baseType: !264, size: 64, align: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !26, file: !2, size: 64, align: 32, elements: !265, identifier: "5f9cd321eb7c3b935069fed1e4bb17a4::Ok")
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !264, file: !2, baseType: !25, size: 32, align: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !264, file: !2, baseType: !19, size: 32, align: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !2, baseType: !269, size: 32, align: 8)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !26, file: !2, size: 64, align: 32, elements: !270, identifier: "5f9cd321eb7c3b935069fed1e4bb17a4::Err")
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "RUST$ENUM$DISR", scope: !269, file: !2, baseType: !25, size: 32, align: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !269, file: !2, baseType: !273, align: 8, offset: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TryFromIntError", scope: !258, file: !2, align: 8, elements: !274, identifier: "964f29c97da95963f8913fe6245e04e5")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !273, file: !2, baseType: !43, align: 8)
!276 = !DILocalVariable(name: "u", arg: 1, scope: !254, file: !45, line: 1, type: !100)
!277 = !DILocation(line: 1, scope: !254)
!278 = !DILocation(line: 4904, column: 19, scope: !254)
!279 = !DILocation(line: 4904, column: 24, scope: !254)
!280 = !DILocation(line: 4904, column: 23, scope: !254)
!281 = !DILocation(line: 4904, column: 16, scope: !254)
!282 = !DILocation(line: 4905, column: 24, scope: !254)
!283 = !DILocation(line: 4905, column: 20, scope: !254)
!284 = !DILocation(line: 4907, column: 23, scope: !254)
!285 = !DILocation(line: 4907, column: 20, scope: !254)
!286 = !DILocation(line: 4909, column: 13, scope: !254)
!287 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17h3ee6f379427e8362E", scope: !288, file: !255, line: 3117, type: !289, scopeLine: 3117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!288 = !DINamespace(name: "{{impl}}", scope: !258)
!289 = !DISubroutineType(types: !290)
!290 = !{!19, !19, !19}
!291 = !DILocalVariable(name: "self", arg: 1, scope: !287, file: !45, line: 1, type: !19)
!292 = !DILocation(line: 1, scope: !287)
!293 = !DILocalVariable(name: "rhs", arg: 2, scope: !287, file: !45, line: 1, type: !19)
!294 = !DILocation(line: 3119, column: 48, scope: !295)
!295 = distinct !DILexicalBlock(scope: !287, file: !255, line: 3118, column: 16)
!296 = !DILocation(line: 3119, column: 54, scope: !295)
!297 = !DILocation(line: 3119, column: 20, scope: !295)
!298 = !DILocation(line: 3121, column: 13, scope: !287)
!299 = distinct !DISubprogram(name: "max_value", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$9max_value17h5454891719db0e4bE", scope: !288, file: !255, line: 2370, type: !300, scopeLine: 2370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!300 = !DISubroutineType(types: !301)
!301 = !{!19}
!302 = !DILocation(line: 2370, column: 51, scope: !299)
!303 = distinct !DISubprogram(name: "checked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h36646f663c3aa161E", scope: !288, file: !255, line: 2758, type: !304, scopeLine: 2758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!304 = !DISubroutineType(types: !305)
!305 = !{!130, !100, !100}
!306 = !DILocalVariable(name: "self", arg: 1, scope: !303, file: !45, line: 1, type: !100)
!307 = !DILocation(line: 1, scope: !303)
!308 = !DILocalVariable(name: "rhs", arg: 2, scope: !303, file: !45, line: 1, type: !100)
!309 = !DILocalVariable(name: "a", scope: !310, file: !255, line: 2759, type: !100, align: 8)
!310 = distinct !DILexicalBlock(scope: !303, file: !255, line: 2759, column: 16)
!311 = !DILocation(line: 2759, column: 21, scope: !310)
!312 = !DILocalVariable(name: "b", scope: !310, file: !255, line: 2759, type: !161, align: 1)
!313 = !DILocation(line: 2759, column: 24, scope: !310)
!314 = !DILocation(line: 2759, column: 29, scope: !303)
!315 = !DILocation(line: 2759, column: 50, scope: !303)
!316 = !DILocation(line: 2759, column: 21, scope: !303)
!317 = !DILocation(line: 2759, column: 24, scope: !303)
!318 = !DILocation(line: 2760, column: 19, scope: !310)
!319 = !{i8 0, i8 2}
!320 = !DILocation(line: 2760, column: 16, scope: !310)
!321 = !DILocation(line: 2760, column: 22, scope: !310)
!322 = !DILocation(line: 2760, column: 39, scope: !310)
!323 = !DILocation(line: 2760, column: 34, scope: !310)
!324 = !DILocation(line: 2761, column: 13, scope: !303)
!325 = !{i64 0, i64 2}
!326 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hafece3919b534ca9E", scope: !288, file: !255, line: 3460, type: !327, scopeLine: 3460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !100, !100}
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !330, identifier: "624d5628266bf295a611964b94b1dd2c")
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !329, file: !2, baseType: !100, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !329, file: !2, baseType: !161, size: 8, align: 8, offset: 64)
!333 = !DILocalVariable(name: "self", arg: 1, scope: !326, file: !45, line: 1, type: !100)
!334 = !DILocation(line: 1, scope: !326)
!335 = !DILocalVariable(name: "rhs", arg: 2, scope: !326, file: !45, line: 1, type: !100)
!336 = !DILocalVariable(name: "a", scope: !337, file: !255, line: 3461, type: !24, align: 8)
!337 = distinct !DILexicalBlock(scope: !326, file: !255, line: 3461, column: 16)
!338 = !DILocation(line: 3461, column: 21, scope: !337)
!339 = !DILocalVariable(name: "b", scope: !337, file: !255, line: 3461, type: !161, align: 1)
!340 = !DILocation(line: 3461, column: 24, scope: !337)
!341 = !DILocation(line: 3462, column: 50, scope: !342)
!342 = distinct !DILexicalBlock(scope: !326, file: !255, line: 3461, column: 29)
!343 = !DILocation(line: 3463, column: 50, scope: !342)
!344 = !DILocation(line: 3462, column: 20, scope: !342)
!345 = !DILocation(line: 3461, column: 21, scope: !326)
!346 = !DILocation(line: 3461, column: 24, scope: !326)
!347 = !DILocation(line: 3465, column: 17, scope: !337)
!348 = !DILocation(line: 3465, column: 28, scope: !337)
!349 = !DILocation(line: 3465, column: 16, scope: !337)
!350 = !DILocation(line: 3466, column: 13, scope: !326)
!351 = distinct !DISubprogram(name: "call_once<closure,()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h7d9653f498fabafbE", scope: !353, file: !352, line: 238, type: !356, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !358, retainedNodes: !4)
!352 = !DIFile(filename: "libcore/ops/function.rs", directory: "")
!353 = !DINamespace(name: "FnOnce", scope: !354)
!354 = !DINamespace(name: "function", scope: !355)
!355 = !DINamespace(name: "ops", scope: !18)
!356 = !DISubroutineType(types: !357)
!357 = !{!59, !5}
!358 = !{!359, !360}
!359 = !DITemplateTypeParameter(name: "Self", type: !5)
!360 = !DITemplateTypeParameter(name: "Args", type: !43)
!361 = !DILocalVariable(arg: 1, scope: !351, file: !45, line: 1, type: !5)
!362 = !DILocation(line: 1, scope: !351)
!363 = !DILocalVariable(arg: 2, scope: !351, file: !45, line: 1, type: !43)
!364 = !DILocation(line: 238, column: 4, scope: !351)
!365 = distinct !DISubprogram(name: "drop_in_place<closure>", linkageName: "_ZN4core3ptr13drop_in_place17h16e064066759387eE", scope: !198, file: !366, line: 59, type: !367, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !370, retainedNodes: !4)
!366 = !DIFile(filename: "libcore/ptr.rs", directory: "")
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut closure", baseType: !5, size: 64, align: 64)
!370 = !{!371}
!371 = !DITemplateTypeParameter(name: "T", type: !5)
!372 = !DILocalVariable(arg: 1, scope: !365, file: !45, line: 1, type: !369)
!373 = !DILocation(line: 1, scope: !365)
!374 = !DILocation(line: 59, scope: !365)
!375 = distinct !DISubprogram(name: "swap_nonoverlapping<usize>", linkageName: "_ZN4core3ptr19swap_nonoverlapping17h2b7b1a21c87c27c6E", scope: !198, file: !366, line: 183, type: !376, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !378, !100}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !100, size: 64, align: 64)
!379 = !DILocalVariable(name: "x", arg: 1, scope: !375, file: !45, line: 1, type: !378)
!380 = !DILocation(line: 1, scope: !375)
!381 = !DILocalVariable(name: "y", arg: 2, scope: !375, file: !45, line: 1, type: !378)
!382 = !DILocalVariable(name: "count", arg: 3, scope: !375, file: !45, line: 1, type: !100)
!383 = !DILocalVariable(name: "x", scope: !384, file: !366, line: 184, type: !385, align: 8)
!384 = distinct !DILexicalBlock(scope: !375, file: !366, line: 184, column: 4)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !40, size: 64, align: 64)
!386 = !DILocation(line: 184, column: 8, scope: !384)
!387 = !DILocalVariable(name: "y", scope: !388, file: !366, line: 185, type: !385, align: 8)
!388 = distinct !DILexicalBlock(scope: !384, file: !366, line: 185, column: 4)
!389 = !DILocation(line: 185, column: 8, scope: !388)
!390 = !DILocalVariable(name: "len", scope: !391, file: !366, line: 186, type: !100, align: 8)
!391 = distinct !DILexicalBlock(scope: !388, file: !366, line: 186, column: 4)
!392 = !DILocation(line: 186, column: 8, scope: !391)
!393 = !DILocation(line: 184, column: 12, scope: !375)
!394 = !DILocation(line: 185, column: 12, scope: !384)
!395 = !DILocation(line: 186, column: 14, scope: !388)
!396 = !DILocation(line: 186, column: 36, scope: !388)
!397 = !DILocation(line: 187, column: 30, scope: !391)
!398 = !DILocation(line: 187, column: 33, scope: !391)
!399 = !DILocation(line: 187, column: 36, scope: !391)
!400 = !DILocation(line: 187, column: 4, scope: !391)
!401 = !DILocation(line: 188, column: 1, scope: !375)
!402 = distinct !DISubprogram(name: "swap_nonoverlapping<i32>", linkageName: "_ZN4core3ptr19swap_nonoverlapping17hc465685be18fa2e9E", scope: !198, file: !366, line: 183, type: !403, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405, !405, !100}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i32", baseType: !59, size: 64, align: 64)
!406 = !DILocalVariable(name: "x", arg: 1, scope: !402, file: !45, line: 1, type: !405)
!407 = !DILocation(line: 1, scope: !402)
!408 = !DILocalVariable(name: "y", arg: 2, scope: !402, file: !45, line: 1, type: !405)
!409 = !DILocalVariable(name: "count", arg: 3, scope: !402, file: !45, line: 1, type: !100)
!410 = !DILocalVariable(name: "x", scope: !411, file: !366, line: 184, type: !385, align: 8)
!411 = distinct !DILexicalBlock(scope: !402, file: !366, line: 184, column: 4)
!412 = !DILocation(line: 184, column: 8, scope: !411)
!413 = !DILocalVariable(name: "y", scope: !414, file: !366, line: 185, type: !385, align: 8)
!414 = distinct !DILexicalBlock(scope: !411, file: !366, line: 185, column: 4)
!415 = !DILocation(line: 185, column: 8, scope: !414)
!416 = !DILocalVariable(name: "len", scope: !417, file: !366, line: 186, type: !100, align: 8)
!417 = distinct !DILexicalBlock(scope: !414, file: !366, line: 186, column: 4)
!418 = !DILocation(line: 186, column: 8, scope: !417)
!419 = !DILocation(line: 184, column: 12, scope: !402)
!420 = !DILocation(line: 185, column: 12, scope: !411)
!421 = !DILocation(line: 186, column: 14, scope: !414)
!422 = !DILocation(line: 186, column: 36, scope: !414)
!423 = !DILocation(line: 187, column: 30, scope: !417)
!424 = !DILocation(line: 187, column: 33, scope: !417)
!425 = !DILocation(line: 187, column: 36, scope: !417)
!426 = !DILocation(line: 187, column: 4, scope: !417)
!427 = !DILocation(line: 188, column: 1, scope: !402)
!428 = distinct !DISubprogram(name: "swap_nonoverlapping_one<i32>", linkageName: "_ZN4core3ptr23swap_nonoverlapping_one17h1b051df1f066314cE", scope: !198, file: !366, line: 191, type: !429, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !405, !405}
!431 = !DILocalVariable(name: "x", arg: 1, scope: !428, file: !45, line: 1, type: !405)
!432 = !DILocation(line: 1, scope: !428)
!433 = !DILocalVariable(name: "y", arg: 2, scope: !428, file: !45, line: 1, type: !405)
!434 = !DILocalVariable(name: "z", scope: !435, file: !366, line: 195, type: !59, align: 4)
!435 = distinct !DILexicalBlock(scope: !428, file: !366, line: 195, column: 8)
!436 = !DILocation(line: 195, column: 12, scope: !435)
!437 = !DILocation(line: 194, column: 7, scope: !428)
!438 = !DILocation(line: 191, scope: !428)
!439 = !DILocation(line: 194, column: 4, scope: !428)
!440 = !DILocation(line: 195, column: 21, scope: !428)
!441 = !DILocation(line: 195, column: 16, scope: !428)
!442 = !DILocation(line: 199, column: 28, scope: !428)
!443 = !DILocation(line: 199, column: 31, scope: !428)
!444 = !DILocation(line: 199, column: 8, scope: !428)
!445 = !DILocation(line: 196, column: 28, scope: !435)
!446 = !DILocation(line: 196, column: 31, scope: !435)
!447 = !DILocation(line: 196, column: 8, scope: !435)
!448 = !DILocation(line: 197, column: 14, scope: !435)
!449 = !DILocation(line: 197, column: 17, scope: !435)
!450 = !DILocation(line: 197, column: 8, scope: !435)
!451 = !DILocation(line: 198, column: 4, scope: !428)
!452 = !DILocation(line: 201, column: 1, scope: !428)
!453 = distinct !DISubprogram(name: "swap_nonoverlapping_one<usize>", linkageName: "_ZN4core3ptr23swap_nonoverlapping_one17h9fe699dc0cfd3a59E", scope: !198, file: !366, line: 191, type: !454, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !378, !378}
!456 = !DILocalVariable(name: "x", arg: 1, scope: !453, file: !45, line: 1, type: !378)
!457 = !DILocation(line: 1, scope: !453)
!458 = !DILocalVariable(name: "y", arg: 2, scope: !453, file: !45, line: 1, type: !378)
!459 = !DILocalVariable(name: "z", scope: !460, file: !366, line: 195, type: !100, align: 8)
!460 = distinct !DILexicalBlock(scope: !453, file: !366, line: 195, column: 8)
!461 = !DILocation(line: 195, column: 12, scope: !460)
!462 = !DILocation(line: 194, column: 7, scope: !453)
!463 = !DILocation(line: 191, scope: !453)
!464 = !DILocation(line: 194, column: 4, scope: !453)
!465 = !DILocation(line: 195, column: 21, scope: !453)
!466 = !DILocation(line: 195, column: 16, scope: !453)
!467 = !DILocation(line: 199, column: 28, scope: !453)
!468 = !DILocation(line: 199, column: 31, scope: !453)
!469 = !DILocation(line: 199, column: 8, scope: !453)
!470 = !DILocation(line: 196, column: 28, scope: !460)
!471 = !DILocation(line: 196, column: 31, scope: !460)
!472 = !DILocation(line: 196, column: 8, scope: !460)
!473 = !DILocation(line: 197, column: 14, scope: !460)
!474 = !DILocation(line: 197, column: 17, scope: !460)
!475 = !DILocation(line: 197, column: 8, scope: !460)
!476 = !DILocation(line: 198, column: 4, scope: !453)
!477 = !DILocation(line: 201, column: 1, scope: !453)
!478 = distinct !DISubprogram(name: "swap_nonoverlapping_bytes", linkageName: "_ZN4core3ptr25swap_nonoverlapping_bytes17h81da6b6fecea6293E", scope: !198, file: !366, line: 204, type: !479, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !385, !385, !100}
!481 = !DILocalVariable(name: "x", arg: 1, scope: !478, file: !45, line: 1, type: !385)
!482 = !DILocation(line: 1, scope: !478)
!483 = !DILocalVariable(name: "y", arg: 2, scope: !478, file: !45, line: 1, type: !385)
!484 = !DILocalVariable(name: "len", arg: 3, scope: !478, file: !45, line: 1, type: !100)
!485 = !DILocalVariable(name: "block_size", scope: !486, file: !366, line: 218, type: !100, align: 8)
!486 = distinct !DILexicalBlock(scope: !478, file: !366, line: 218, column: 4)
!487 = !DILocation(line: 218, column: 8, scope: !486)
!488 = !DILocalVariable(name: "i", scope: !489, file: !366, line: 223, type: !100, align: 8)
!489 = distinct !DILexicalBlock(scope: !486, file: !366, line: 223, column: 4)
!490 = !DILocation(line: 223, column: 8, scope: !489)
!491 = !DILocalVariable(name: "t", scope: !492, file: !366, line: 227, type: !211, align: 32)
!492 = distinct !DILexicalBlock(scope: !489, file: !366, line: 227, column: 8)
!493 = !DILocation(line: 227, column: 12, scope: !492)
!494 = !DILocalVariable(name: "t", scope: !495, file: !366, line: 228, type: !385, align: 8)
!495 = distinct !DILexicalBlock(scope: !492, file: !366, line: 228, column: 8)
!496 = !DILocation(line: 228, column: 12, scope: !495)
!497 = !DILocalVariable(name: "x", scope: !498, file: !366, line: 229, type: !385, align: 8)
!498 = distinct !DILexicalBlock(scope: !495, file: !366, line: 229, column: 8)
!499 = !DILocation(line: 229, column: 12, scope: !498)
!500 = !DILocalVariable(name: "y", scope: !501, file: !366, line: 230, type: !385, align: 8)
!501 = distinct !DILexicalBlock(scope: !498, file: !366, line: 230, column: 8)
!502 = !DILocation(line: 230, column: 12, scope: !501)
!503 = !DILocalVariable(name: "t", scope: !504, file: !366, line: 242, type: !196, align: 8)
!504 = distinct !DILexicalBlock(scope: !489, file: !366, line: 242, column: 8)
!505 = !DILocation(line: 242, column: 12, scope: !504)
!506 = !DILocalVariable(name: "rem", scope: !507, file: !366, line: 243, type: !100, align: 8)
!507 = distinct !DILexicalBlock(scope: !504, file: !366, line: 243, column: 8)
!508 = !DILocation(line: 243, column: 12, scope: !507)
!509 = !DILocalVariable(name: "t", scope: !510, file: !366, line: 245, type: !385, align: 8)
!510 = distinct !DILexicalBlock(scope: !507, file: !366, line: 245, column: 8)
!511 = !DILocation(line: 245, column: 12, scope: !510)
!512 = !DILocalVariable(name: "x", scope: !513, file: !366, line: 246, type: !385, align: 8)
!513 = distinct !DILexicalBlock(scope: !510, file: !366, line: 246, column: 8)
!514 = !DILocation(line: 246, column: 12, scope: !513)
!515 = !DILocalVariable(name: "y", scope: !516, file: !366, line: 247, type: !385, align: 8)
!516 = distinct !DILexicalBlock(scope: !513, file: !366, line: 247, column: 8)
!517 = !DILocation(line: 247, column: 12, scope: !516)
!518 = !DILocation(line: 218, column: 21, scope: !478)
!519 = !DILocation(line: 223, column: 16, scope: !486)
!520 = !DILocation(line: 224, column: 4, scope: !489)
!521 = !DILocation(line: 224, column: 10, scope: !489)
!522 = !DILocation(line: 224, column: 14, scope: !489)
!523 = !DILocation(line: 224, column: 28, scope: !489)
!524 = !DILocation(line: 240, column: 7, scope: !489)
!525 = !DILocation(line: 240, column: 11, scope: !489)
!526 = !DILocation(line: 240, column: 4, scope: !489)
!527 = !DILocation(line: 227, column: 27, scope: !489)
!528 = !DILocation(line: 228, column: 16, scope: !492)
!529 = !DILocation(line: 229, column: 16, scope: !495)
!530 = !DILocation(line: 229, column: 22, scope: !495)
!531 = !DILocation(line: 230, column: 16, scope: !498)
!532 = !DILocation(line: 230, column: 22, scope: !498)
!533 = !DILocation(line: 234, column: 28, scope: !501)
!534 = !DILocation(line: 234, column: 31, scope: !501)
!535 = !DILocation(line: 234, column: 34, scope: !501)
!536 = !DILocation(line: 234, column: 8, scope: !501)
!537 = !DILocation(line: 235, column: 28, scope: !501)
!538 = !DILocation(line: 235, column: 31, scope: !501)
!539 = !DILocation(line: 235, column: 34, scope: !501)
!540 = !DILocation(line: 235, column: 8, scope: !501)
!541 = !DILocation(line: 236, column: 28, scope: !501)
!542 = !DILocation(line: 236, column: 31, scope: !501)
!543 = !DILocation(line: 236, column: 34, scope: !501)
!544 = !DILocation(line: 236, column: 8, scope: !501)
!545 = !DILocation(line: 237, column: 13, scope: !501)
!546 = !DILocation(line: 237, column: 8, scope: !501)
!547 = !DILocation(line: 242, column: 36, scope: !489)
!548 = !DILocation(line: 243, column: 18, scope: !504)
!549 = !DILocation(line: 243, column: 24, scope: !504)
!550 = !DILocation(line: 245, column: 16, scope: !507)
!551 = !DILocation(line: 246, column: 16, scope: !510)
!552 = !DILocation(line: 246, column: 22, scope: !510)
!553 = !DILocation(line: 247, column: 16, scope: !513)
!554 = !DILocation(line: 247, column: 22, scope: !513)
!555 = !DILocation(line: 249, column: 28, scope: !516)
!556 = !DILocation(line: 249, column: 31, scope: !516)
!557 = !DILocation(line: 249, column: 34, scope: !516)
!558 = !DILocation(line: 249, column: 8, scope: !516)
!559 = !DILocation(line: 250, column: 28, scope: !516)
!560 = !DILocation(line: 250, column: 31, scope: !516)
!561 = !DILocation(line: 250, column: 34, scope: !516)
!562 = !DILocation(line: 250, column: 8, scope: !516)
!563 = !DILocation(line: 251, column: 28, scope: !516)
!564 = !DILocation(line: 251, column: 31, scope: !516)
!565 = !DILocation(line: 251, column: 34, scope: !516)
!566 = !DILocation(line: 251, column: 8, scope: !516)
!567 = !DILocation(line: 253, column: 1, scope: !478)
!568 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h0eac3636610d4ddcE", scope: !569, file: !366, line: 1632, type: !570, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !572, retainedNodes: !4)
!569 = !DINamespace(name: "{{impl}}", scope: !198)
!570 = !DISubroutineType(types: !571)
!571 = !{!385, !385, !100}
!572 = !{!573}
!573 = !DITemplateTypeParameter(name: "T", type: !40)
!574 = !DILocalVariable(name: "self", arg: 1, scope: !568, file: !45, line: 1, type: !385)
!575 = !DILocation(line: 1, scope: !568)
!576 = !DILocalVariable(name: "count", arg: 2, scope: !568, file: !45, line: 1, type: !100)
!577 = !DILocation(line: 1635, column: 8, scope: !568)
!578 = !DILocation(line: 1635, column: 20, scope: !568)
!579 = !DILocation(line: 1636, column: 5, scope: !568)
!580 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h2c30b236fad9cfe9E", scope: !569, file: !366, line: 1396, type: !581, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !572, retainedNodes: !4)
!581 = !DISubroutineType(types: !582)
!582 = !{!385, !385, !37}
!583 = !DILocalVariable(name: "self", arg: 1, scope: !580, file: !45, line: 1, type: !385)
!584 = !DILocation(line: 1, scope: !580)
!585 = !DILocalVariable(name: "count", arg: 2, scope: !580, file: !45, line: 1, type: !37)
!586 = !DILocation(line: 1397, column: 27, scope: !580)
!587 = !DILocation(line: 1397, column: 33, scope: !580)
!588 = !DILocation(line: 1397, column: 8, scope: !580)
!589 = !DILocation(line: 1398, column: 5, scope: !580)
!590 = distinct !DISubprogram(name: "read<usize>", linkageName: "_ZN4core3ptr4read17h9aa5a2ec52406a67E", scope: !198, file: !366, line: 298, type: !591, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!591 = !DISubroutineType(types: !592)
!592 = !{!100, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !100, size: 64, align: 64)
!594 = !DILocalVariable(name: "src", arg: 1, scope: !590, file: !45, line: 1, type: !593)
!595 = !DILocation(line: 1, scope: !590)
!596 = !DILocalVariable(name: "tmp", scope: !597, file: !366, line: 299, type: !100, align: 8)
!597 = distinct !DILexicalBlock(scope: !590, file: !366, line: 299, column: 4)
!598 = !DILocation(line: 299, column: 8, scope: !597)
!599 = !DILocation(line: 299, column: 21, scope: !590)
!600 = !DILocation(line: 298, scope: !590)
!601 = !DILocation(line: 300, column: 24, scope: !597)
!602 = !DILocation(line: 300, column: 4, scope: !597)
!603 = !DILocation(line: 301, column: 4, scope: !597)
!604 = !DILocation(line: 302, column: 1, scope: !590)
!605 = !DILocation(line: 302, scope: !590)
!606 = distinct !DISubprogram(name: "read<i32>", linkageName: "_ZN4core3ptr4read17h9abfa416eb00bc3aE", scope: !198, file: !366, line: 298, type: !607, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!607 = !DISubroutineType(types: !608)
!608 = !{!59, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const i32", baseType: !59, size: 64, align: 64)
!610 = !DILocalVariable(name: "src", arg: 1, scope: !606, file: !45, line: 1, type: !609)
!611 = !DILocation(line: 1, scope: !606)
!612 = !DILocalVariable(name: "tmp", scope: !613, file: !366, line: 299, type: !59, align: 4)
!613 = distinct !DILexicalBlock(scope: !606, file: !366, line: 299, column: 4)
!614 = !DILocation(line: 299, column: 8, scope: !613)
!615 = !DILocation(line: 299, column: 21, scope: !606)
!616 = !DILocation(line: 298, scope: !606)
!617 = !DILocation(line: 300, column: 24, scope: !613)
!618 = !DILocation(line: 300, column: 4, scope: !613)
!619 = !DILocation(line: 301, column: 4, scope: !613)
!620 = !DILocation(line: 302, column: 1, scope: !606)
!621 = !DILocation(line: 302, scope: !606)
!622 = distinct !DISubprogram(name: "write<usize>", linkageName: "_ZN4core3ptr5write17h09191f96ef1c1b2fE", scope: !198, file: !366, line: 375, type: !623, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !378, !100}
!625 = !DILocalVariable(name: "dst", arg: 1, scope: !622, file: !45, line: 1, type: !378)
!626 = !DILocation(line: 1, scope: !622)
!627 = !DILocalVariable(name: "src", arg: 2, scope: !622, file: !45, line: 1, type: !100)
!628 = !DILocation(line: 376, column: 30, scope: !622)
!629 = !DILocation(line: 376, column: 41, scope: !622)
!630 = !DILocation(line: 377, column: 1, scope: !622)
!631 = distinct !DISubprogram(name: "write<i32>", linkageName: "_ZN4core3ptr5write17h47ffc10d273a2535E", scope: !198, file: !366, line: 375, type: !632, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !405, !59}
!634 = !DILocalVariable(name: "dst", arg: 1, scope: !631, file: !45, line: 1, type: !405)
!635 = !DILocation(line: 1, scope: !631)
!636 = !DILocalVariable(name: "src", arg: 2, scope: !631, file: !45, line: 1, type: !59)
!637 = !DILocation(line: 376, column: 30, scope: !631)
!638 = !DILocation(line: 376, column: 41, scope: !631)
!639 = !DILocation(line: 377, column: 1, scope: !631)
!640 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f88036dff05aee3E", scope: !83, file: !82, line: 221, type: !641, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !649, retainedNodes: !4)
!641 = !DISubroutineType(types: !642)
!642 = !{!130, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !644, size: 64, align: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !645, file: !2, size: 128, align: 64, elements: !646, identifier: "ae1e0eec51a552d7ea6880761845a9be")
!645 = !DINamespace(name: "range", scope: !355)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !644, file: !2, baseType: !100, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !644, file: !2, baseType: !100, size: 64, align: 64, offset: 64)
!649 = !{!650}
!650 = !DITemplateTypeParameter(name: "A", type: !100)
!651 = !DILocalVariable(name: "self", arg: 1, scope: !640, file: !45, line: 1, type: !643)
!652 = !DILocation(line: 1, scope: !640)
!653 = !DILocalVariable(name: "n", scope: !654, file: !82, line: 227, type: !100, align: 8)
!654 = distinct !DILexicalBlock(scope: !640, file: !82, line: 227, column: 57)
!655 = !DILocation(line: 227, column: 24, scope: !654)
!656 = !DILocation(line: 222, column: 11, scope: !640)
!657 = !DILocation(line: 222, column: 24, scope: !640)
!658 = !DILocation(line: 221, column: 4, scope: !640)
!659 = !DILocation(line: 222, column: 8, scope: !640)
!660 = !DILocation(line: 227, column: 33, scope: !640)
!661 = !DILocation(line: 234, column: 12, scope: !640)
!662 = !DILocation(line: 227, column: 19, scope: !640)
!663 = !DILocation(line: 227, column: 24, scope: !640)
!664 = !DILocation(line: 228, column: 34, scope: !654)
!665 = !DILocation(line: 228, column: 16, scope: !654)
!666 = !DILocation(line: 231, column: 16, scope: !640)
!667 = !DILocation(line: 227, column: 12, scope: !640)
!668 = !DILocation(line: 229, column: 21, scope: !654)
!669 = !DILocation(line: 229, column: 16, scope: !654)
!670 = !DILocation(line: 232, column: 12, scope: !640)
!671 = !DILocation(line: 233, column: 8, scope: !640)
!672 = !DILocation(line: 236, column: 5, scope: !640)
!673 = distinct !DISubprogram(name: "next<i32>", linkageName: "_ZN4core4iter5range93_$LT$impl$u20$core..iter..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc27be20a3d2ac24bE", scope: !83, file: !82, line: 221, type: !674, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !681, retainedNodes: !4)
!674 = !DISubroutineType(types: !675)
!675 = !{!88, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<i32>", baseType: !677, size: 64, align: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<i32>", scope: !645, file: !2, size: 64, align: 32, elements: !678, identifier: "6f59edc10fe63531d3668fd63176f9c9")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !677, file: !2, baseType: !59, size: 32, align: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !677, file: !2, baseType: !59, size: 32, align: 32, offset: 32)
!681 = !{!682}
!682 = !DITemplateTypeParameter(name: "A", type: !59)
!683 = !DILocalVariable(name: "self", arg: 1, scope: !673, file: !45, line: 1, type: !676)
!684 = !DILocation(line: 1, scope: !673)
!685 = !DILocalVariable(name: "n", scope: !686, file: !82, line: 227, type: !59, align: 4)
!686 = distinct !DILexicalBlock(scope: !673, file: !82, line: 227, column: 57)
!687 = !DILocation(line: 227, column: 24, scope: !686)
!688 = !DILocation(line: 222, column: 11, scope: !673)
!689 = !DILocation(line: 222, column: 24, scope: !673)
!690 = !DILocation(line: 221, column: 4, scope: !673)
!691 = !DILocation(line: 222, column: 8, scope: !673)
!692 = !DILocation(line: 227, column: 33, scope: !673)
!693 = !DILocation(line: 234, column: 12, scope: !673)
!694 = !DILocation(line: 227, column: 19, scope: !673)
!695 = !DILocation(line: 227, column: 24, scope: !673)
!696 = !DILocation(line: 228, column: 34, scope: !686)
!697 = !DILocation(line: 228, column: 16, scope: !686)
!698 = !DILocation(line: 231, column: 16, scope: !673)
!699 = !DILocation(line: 227, column: 12, scope: !673)
!700 = !DILocation(line: 229, column: 21, scope: !686)
!701 = !DILocation(line: 229, column: 16, scope: !686)
!702 = !DILocation(line: 232, column: 12, scope: !673)
!703 = !DILocation(line: 233, column: 8, scope: !673)
!704 = !DILocation(line: 236, column: 5, scope: !673)
!705 = distinct !DISubprogram(name: "len<i32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hf81ff98b18a8349cE", scope: !707, file: !706, line: 87, type: !709, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !189, retainedNodes: !4)
!706 = !DIFile(filename: "libcore/slice/mod.rs", directory: "")
!707 = !DINamespace(name: "{{impl}}", scope: !708)
!708 = !DINamespace(name: "slice", scope: !18)
!709 = !DISubroutineType(types: !710)
!710 = !{!100, !711}
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[i32]", file: !2, size: 128, align: 64, elements: !712, identifier: "bf25fbe0c75019a97b091ef74bc225c3")
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !711, file: !2, baseType: !609, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !711, file: !2, baseType: !100, size: 64, align: 64, offset: 64)
!715 = !DILocalVariable(name: "self", arg: 1, scope: !705, file: !45, line: 1, type: !711)
!716 = !DILocation(line: 1, scope: !705)
!717 = !DILocation(line: 89, column: 25, scope: !718)
!718 = distinct !DILexicalBlock(scope: !705, file: !706, line: 88, column: 8)
!719 = !DILocation(line: 89, column: 12, scope: !718)
!720 = !DILocation(line: 91, column: 5, scope: !705)
!721 = distinct !DISubprogram(name: "from<usize>", linkageName: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h322debb998bfaf1aE", scope: !723, file: !722, line: 463, type: !725, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !182, retainedNodes: !4)
!722 = !DIFile(filename: "libcore/convert.rs", directory: "")
!723 = !DINamespace(name: "{{impl}}", scope: !724)
!724 = !DINamespace(name: "convert", scope: !18)
!725 = !DISubroutineType(types: !726)
!726 = !{!100, !100}
!727 = !DILocalVariable(name: "t", arg: 1, scope: !721, file: !45, line: 1, type: !100)
!728 = !DILocation(line: 1, scope: !721)
!729 = !DILocation(line: 463, column: 25, scope: !721)
!730 = !DILocation(line: 463, column: 28, scope: !721)
!731 = distinct !DISubprogram(name: "try_from<usize,usize>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17hbf730dd35793f61eE", scope: !723, file: !722, line: 484, type: !732, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !740, retainedNodes: !4)
!732 = !DISubroutineType(types: !733)
!733 = !{!734, !100}
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Result<usize, !>", scope: !26, file: !2, size: 64, align: 64, elements: !735, identifier: "7bbb51628d028a0786fc2c53642d3815")
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !2, baseType: !737, size: 64, align: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !26, file: !2, size: 64, align: 64, elements: !738, identifier: "7bbb51628d028a0786fc2c53642d3815::Ok")
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !737, file: !2, baseType: !100, size: 64, align: 64)
!740 = !{!183, !741}
!741 = !DITemplateTypeParameter(name: "U", type: !100)
!742 = !DILocalVariable(name: "value", arg: 1, scope: !731, file: !45, line: 1, type: !100)
!743 = !DILocation(line: 1, scope: !731)
!744 = !DILocation(line: 485, column: 19, scope: !731)
!745 = !DILocation(line: 485, column: 11, scope: !731)
!746 = !DILocation(line: 485, column: 8, scope: !731)
!747 = !DILocation(line: 486, column: 5, scope: !731)
!748 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h2ce349b3cfa04c0aE", scope: !750, file: !749, line: 1508, type: !752, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!749 = !DIFile(filename: "libstd/process.rs", directory: "")
!750 = !DINamespace(name: "{{impl}}", scope: !751)
!751 = !DINamespace(name: "process", scope: !34)
!752 = !DISubroutineType(types: !753)
!753 = !{!59, !43}
!754 = !DILocalVariable(name: "self", arg: 1, scope: !748, file: !45, line: 1, type: !43)
!755 = !DILocation(line: 1, scope: !748)
!756 = !DILocation(line: 1508, column: 29, scope: !748)
!757 = !DILocation(line: 1508, column: 57, scope: !748)
!758 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<i32>>", linkageName: "_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h02a6dedfd3046133E", scope: !760, file: !759, line: 259, type: !762, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !764, retainedNodes: !4)
!759 = !DIFile(filename: "libcore/iter/traits.rs", directory: "")
!760 = !DINamespace(name: "{{impl}}", scope: !761)
!761 = !DINamespace(name: "traits", scope: !85)
!762 = !DISubroutineType(types: !763)
!763 = !{!677, !677}
!764 = !{!765}
!765 = !DITemplateTypeParameter(name: "I", type: !677)
!766 = !DILocalVariable(name: "self", arg: 1, scope: !758, file: !45, line: 1, type: !677)
!767 = !DILocation(line: 1, scope: !758)
!768 = !DILocation(line: 260, column: 8, scope: !758)
!769 = !DILocation(line: 261, column: 5, scope: !758)
!770 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<usize>>", linkageName: "_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17h205222aaffd89832E", scope: !760, file: !759, line: 259, type: !771, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !773, retainedNodes: !4)
!771 = !DISubroutineType(types: !772)
!772 = !{!644, !644}
!773 = !{!774}
!774 = !DITemplateTypeParameter(name: "I", type: !644)
!775 = !DILocalVariable(name: "self", arg: 1, scope: !770, file: !45, line: 1, type: !644)
!776 = !DILocation(line: 1, scope: !770)
!777 = !DILocation(line: 260, column: 8, scope: !770)
!778 = !DILocation(line: 261, column: 5, scope: !770)
!779 = distinct !DISubprogram(name: "report", linkageName: "_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha17a028fb37daae9E", scope: !750, file: !749, line: 1538, type: !780, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!780 = !DISubroutineType(types: !781)
!781 = !{!59, !782}
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !751, file: !2, size: 8, align: 8, elements: !783, identifier: "dd61d10f0ea53ae2244dd64909fccd1")
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !782, file: !2, baseType: !67, size: 8, align: 8)
!785 = !DILocalVariable(name: "self", arg: 1, scope: !779, file: !45, line: 1, type: !782)
!786 = !DILocation(line: 1, scope: !779)
!787 = !DILocation(line: 1539, column: 8, scope: !779)
!788 = !DILocation(line: 1540, column: 5, scope: !779)
!789 = distinct !DISubprogram(name: "main", linkageName: "_ZN9perf_test4main17h8252daa33a2b63a8E", scope: !790, file: !14, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped | DIFlagMainSubprogram, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!790 = !DINamespace(name: "perf_test", scope: null)
!791 = !DILocation(line: 3, column: 4, scope: !789)
!792 = !DILocation(line: 4, column: 4, scope: !789)
!793 = !DILocation(line: 6, column: 1, scope: !789)
!794 = distinct !DISubprogram(name: "expensiveOP", linkageName: "_ZN9perf_test11expensiveOP17h0fd88b9e93310979E", scope: !790, file: !14, line: 9, type: !795, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!795 = !DISubroutineType(types: !796)
!796 = !{!59, !59}
!797 = !DILocalVariable(name: "n", arg: 1, scope: !794, file: !14, line: 1, type: !59)
!798 = !DILocation(line: 1, scope: !794)
!799 = !DILocation(line: 11, column: 7, scope: !794)
!800 = !DILocation(line: 11, column: 17, scope: !794)
!801 = !DILocation(line: 11, column: 4, scope: !794)
!802 = !DILocation(line: 12, column: 15, scope: !794)
!803 = !DILocation(line: 12, column: 8, scope: !794)
!804 = !DILocation(line: 14, column: 27, scope: !794)
!805 = !DILocation(line: 16, column: 1, scope: !794)
!806 = !DILocation(line: 14, column: 15, scope: !794)
!807 = !DILocation(line: 14, column: 46, scope: !794)
!808 = !DILocation(line: 14, column: 34, scope: !794)
!809 = !DILocation(line: 14, column: 8, scope: !794)
!810 = distinct !DISubprogram(name: "reduction", linkageName: "_ZN9perf_test9reduction17hec97ef8901011fa7E", scope: !790, file: !14, line: 18, type: !9, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!811 = !DILocalVariable(name: "iterations", scope: !812, file: !14, line: 20, type: !59, align: 4)
!812 = distinct !DILexicalBlock(scope: !810, file: !14, line: 20, column: 4)
!813 = !DILocation(line: 20, column: 8, scope: !812)
!814 = !DILocalVariable(name: "localArr", scope: !815, file: !14, line: 21, type: !816, align: 4)
!815 = distinct !DILexicalBlock(scope: !812, file: !14, line: 21, column: 4)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 320, align: 32, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 10)
!819 = !DILocation(line: 21, column: 8, scope: !815)
!820 = !DILocalVariable(name: "a", scope: !821, file: !14, line: 23, type: !59, align: 4)
!821 = distinct !DILexicalBlock(scope: !815, file: !14, line: 23, column: 4)
!822 = !DILocation(line: 23, column: 9, scope: !821)
!823 = !DILocalVariable(name: "b", scope: !821, file: !14, line: 23, type: !59, align: 4)
!824 = !DILocation(line: 23, column: 16, scope: !821)
!825 = !DILocalVariable(name: "c", scope: !821, file: !14, line: 23, type: !59, align: 4)
!826 = !DILocation(line: 23, column: 23, scope: !821)
!827 = !DILocalVariable(name: "_result", scope: !828, file: !14, line: 25, type: !43, align: 1)
!828 = distinct !DILexicalBlock(scope: !821, file: !14, line: 25, column: 4)
!829 = !DILocation(line: 25, column: 4, scope: !828)
!830 = !DILocalVariable(name: "iter", scope: !831, file: !14, line: 25, type: !677, align: 4)
!831 = distinct !DILexicalBlock(scope: !821, file: !14, line: 25, column: 4)
!832 = !DILocation(line: 25, column: 13, scope: !831)
!833 = !DILocalVariable(name: "__next", scope: !834, file: !14, line: 25, type: !59, align: 4)
!834 = distinct !DILexicalBlock(scope: !831, file: !14, line: 25, column: 13)
!835 = !DILocation(line: 25, column: 13, scope: !834)
!836 = !DILocalVariable(name: "val", scope: !837, file: !14, line: 25, type: !59, align: 4)
!837 = distinct !DILexicalBlock(scope: !834, file: !14, line: 25, column: 8)
!838 = !DILocation(line: 25, column: 8, scope: !837)
!839 = !DILocalVariable(name: "i", scope: !840, file: !14, line: 25, type: !59, align: 4)
!840 = distinct !DILexicalBlock(scope: !834, file: !14, line: 25, column: 13)
!841 = !DILocation(line: 25, column: 8, scope: !840)
!842 = !DILocalVariable(name: "localRes", scope: !843, file: !14, line: 31, type: !59, align: 4)
!843 = distinct !DILexicalBlock(scope: !821, file: !14, line: 31, column: 4)
!844 = !DILocation(line: 31, column: 8, scope: !843)
!845 = !DILocalVariable(name: "_result", scope: !846, file: !14, line: 32, type: !43, align: 1)
!846 = distinct !DILexicalBlock(scope: !843, file: !14, line: 32, column: 4)
!847 = !DILocation(line: 32, column: 4, scope: !846)
!848 = !DILocalVariable(name: "iter", scope: !849, file: !14, line: 32, type: !644, align: 8)
!849 = distinct !DILexicalBlock(scope: !843, file: !14, line: 32, column: 4)
!850 = !DILocation(line: 32, column: 13, scope: !849)
!851 = !DILocalVariable(name: "__next", scope: !852, file: !14, line: 32, type: !100, align: 8)
!852 = distinct !DILexicalBlock(scope: !849, file: !14, line: 32, column: 13)
!853 = !DILocation(line: 32, column: 13, scope: !852)
!854 = !DILocalVariable(name: "val", scope: !855, file: !14, line: 32, type: !100, align: 8)
!855 = distinct !DILexicalBlock(scope: !852, file: !14, line: 32, column: 8)
!856 = !DILocation(line: 32, column: 8, scope: !855)
!857 = !DILocalVariable(name: "i", scope: !858, file: !14, line: 32, type: !100, align: 8)
!858 = distinct !DILexicalBlock(scope: !852, file: !14, line: 32, column: 13)
!859 = !DILocation(line: 32, column: 8, scope: !858)
!860 = !DILocalVariable(name: "tmp", scope: !861, file: !14, line: 35, type: !59, align: 4)
!861 = distinct !DILexicalBlock(scope: !858, file: !14, line: 35, column: 8)
!862 = !DILocation(line: 35, column: 12, scope: !861)
!863 = !DILocalVariable(name: "arrSum", scope: !864, file: !14, line: 40, type: !59, align: 4)
!864 = distinct !DILexicalBlock(scope: !843, file: !14, line: 40, column: 4)
!865 = !DILocation(line: 40, column: 8, scope: !864)
!866 = !DILocalVariable(name: "arrMul", scope: !867, file: !14, line: 41, type: !59, align: 4)
!867 = distinct !DILexicalBlock(scope: !864, file: !14, line: 41, column: 4)
!868 = !DILocation(line: 41, column: 8, scope: !867)
!869 = !DILocalVariable(name: "_result", scope: !870, file: !14, line: 43, type: !43, align: 1)
!870 = distinct !DILexicalBlock(scope: !867, file: !14, line: 43, column: 4)
!871 = !DILocation(line: 43, column: 4, scope: !870)
!872 = !DILocalVariable(name: "iter", scope: !873, file: !14, line: 43, type: !644, align: 8)
!873 = distinct !DILexicalBlock(scope: !867, file: !14, line: 43, column: 4)
!874 = !DILocation(line: 43, column: 13, scope: !873)
!875 = !DILocalVariable(name: "__next", scope: !876, file: !14, line: 43, type: !100, align: 8)
!876 = distinct !DILexicalBlock(scope: !873, file: !14, line: 43, column: 13)
!877 = !DILocation(line: 43, column: 13, scope: !876)
!878 = !DILocalVariable(name: "val", scope: !879, file: !14, line: 43, type: !100, align: 8)
!879 = distinct !DILexicalBlock(scope: !876, file: !14, line: 43, column: 8)
!880 = !DILocation(line: 43, column: 8, scope: !879)
!881 = !DILocalVariable(name: "i", scope: !882, file: !14, line: 43, type: !100, align: 8)
!882 = distinct !DILexicalBlock(scope: !876, file: !14, line: 43, column: 13)
!883 = !DILocation(line: 43, column: 8, scope: !882)
!884 = !DILocalVariable(name: "_result", scope: !885, file: !14, line: 51, type: !43, align: 1)
!885 = distinct !DILexicalBlock(scope: !867, file: !14, line: 51, column: 4)
!886 = !DILocation(line: 51, column: 4, scope: !885)
!887 = !DILocalVariable(name: "iter", scope: !888, file: !14, line: 51, type: !677, align: 4)
!888 = distinct !DILexicalBlock(scope: !867, file: !14, line: 51, column: 4)
!889 = !DILocation(line: 51, column: 13, scope: !888)
!890 = !DILocalVariable(name: "__next", scope: !891, file: !14, line: 51, type: !59, align: 4)
!891 = distinct !DILexicalBlock(scope: !888, file: !14, line: 51, column: 13)
!892 = !DILocation(line: 51, column: 13, scope: !891)
!893 = !DILocalVariable(name: "val", scope: !894, file: !14, line: 51, type: !59, align: 4)
!894 = distinct !DILexicalBlock(scope: !891, file: !14, line: 51, column: 8)
!895 = !DILocation(line: 51, column: 8, scope: !894)
!896 = !DILocalVariable(name: "i", scope: !897, file: !14, line: 51, type: !59, align: 4)
!897 = distinct !DILexicalBlock(scope: !891, file: !14, line: 51, column: 13)
!898 = !DILocation(line: 51, column: 8, scope: !897)
!899 = !DILocation(line: 20, column: 26, scope: !810)
!900 = !DILocation(line: 21, column: 30, scope: !812)
!901 = !DILocation(line: 23, column: 49, scope: !815)
!902 = !DILocation(line: 23, column: 9, scope: !815)
!903 = !DILocation(line: 23, column: 16, scope: !815)
!904 = !DILocation(line: 23, column: 23, scope: !815)
!905 = !DILocation(line: 25, column: 16, scope: !821)
!906 = !DILocation(line: 25, column: 13, scope: !821)
!907 = !DILocation(line: 25, column: 8, scope: !834)
!908 = !DILocation(line: 31, column: 28, scope: !821)
!909 = !DILocation(line: 32, column: 16, scope: !843)
!910 = !DILocation(line: 57, column: 1, scope: !810)
!911 = !DILocation(line: 26, column: 12, scope: !840)
!912 = !DILocation(line: 26, column: 8, scope: !840)
!913 = !DILocation(line: 27, column: 12, scope: !840)
!914 = !DILocation(line: 27, column: 8, scope: !840)
!915 = !DILocation(line: 28, column: 12, scope: !840)
!916 = !DILocation(line: 28, column: 8, scope: !840)
!917 = !DILocation(line: 25, column: 4, scope: !831)
!918 = !DILocation(line: 32, column: 13, scope: !843)
!919 = !DILocation(line: 32, column: 8, scope: !852)
!920 = !DILocation(line: 40, column: 26, scope: !843)
!921 = !DILocation(line: 41, column: 26, scope: !864)
!922 = !DILocation(line: 43, column: 16, scope: !867)
!923 = !DILocation(line: 33, column: 12, scope: !858)
!924 = !DILocation(line: 33, column: 8, scope: !858)
!925 = !DILocation(line: 34, column: 12, scope: !858)
!926 = !DILocation(line: 34, column: 17, scope: !858)
!927 = !DILocation(line: 34, column: 16, scope: !858)
!928 = !DILocation(line: 34, column: 8, scope: !858)
!929 = !DILocation(line: 35, column: 18, scope: !858)
!930 = !DILocation(line: 36, column: 12, scope: !861)
!931 = !DILocation(line: 36, column: 19, scope: !861)
!932 = !DILocation(line: 36, column: 18, scope: !861)
!933 = !DILocation(line: 36, column: 8, scope: !861)
!934 = !DILocation(line: 37, column: 28, scope: !861)
!935 = !DILocation(line: 37, column: 19, scope: !861)
!936 = !DILocation(line: 37, column: 37, scope: !861)
!937 = !DILocation(line: 37, column: 8, scope: !861)
!938 = !DILocation(line: 32, column: 4, scope: !849)
!939 = !DILocation(line: 43, column: 13, scope: !867)
!940 = !DILocation(line: 43, column: 8, scope: !876)
!941 = !DILocation(line: 48, column: 4, scope: !867)
!942 = !DILocation(line: 49, column: 4, scope: !867)
!943 = !DILocation(line: 51, column: 13, scope: !867)
!944 = !DILocation(line: 44, column: 17, scope: !882)
!945 = !DILocation(line: 44, column: 35, scope: !882)
!946 = !DILocation(line: 44, column: 26, scope: !882)
!947 = !DILocation(line: 44, column: 8, scope: !882)
!948 = !DILocation(line: 45, column: 17, scope: !882)
!949 = !DILocation(line: 45, column: 35, scope: !882)
!950 = !DILocation(line: 45, column: 26, scope: !882)
!951 = !DILocation(line: 45, column: 8, scope: !882)
!952 = !DILocation(line: 43, column: 4, scope: !873)
!953 = !DILocation(line: 51, column: 8, scope: !891)
!954 = !DILocation(line: 52, column: 12, scope: !897)
!955 = !DILocation(line: 52, column: 28, scope: !897)
!956 = !DILocation(line: 52, column: 16, scope: !897)
!957 = !DILocation(line: 52, column: 8, scope: !897)
!958 = !DILocation(line: 53, column: 12, scope: !897)
!959 = !DILocation(line: 53, column: 28, scope: !897)
!960 = !DILocation(line: 53, column: 16, scope: !897)
!961 = !DILocation(line: 53, column: 8, scope: !897)
!962 = !DILocation(line: 51, column: 4, scope: !888)
!963 = distinct !DISubprogram(name: "do_all", linkageName: "_ZN9perf_test6do_all17hdc553eacfb8e3e31E", scope: !790, file: !14, line: 62, type: !9, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, templateParams: !4, retainedNodes: !4)
!964 = !DILocalVariable(name: "localarr", scope: !965, file: !14, line: 64, type: !816, align: 4)
!965 = distinct !DILexicalBlock(scope: !963, file: !14, line: 64, column: 4)
!966 = !DILocation(line: 64, column: 8, scope: !965)
!967 = !DILocalVariable(name: "arr", scope: !968, file: !14, line: 65, type: !816, align: 4)
!968 = distinct !DILexicalBlock(scope: !965, file: !14, line: 65, column: 4)
!969 = !DILocation(line: 65, column: 8, scope: !968)
!970 = !DILocalVariable(name: "_result", scope: !971, file: !14, line: 69, type: !43, align: 1)
!971 = distinct !DILexicalBlock(scope: !968, file: !14, line: 69, column: 4)
!972 = !DILocation(line: 69, column: 4, scope: !971)
!973 = !DILocalVariable(name: "iter", scope: !974, file: !14, line: 69, type: !644, align: 8)
!974 = distinct !DILexicalBlock(scope: !968, file: !14, line: 69, column: 4)
!975 = !DILocation(line: 69, column: 13, scope: !974)
!976 = !DILocalVariable(name: "__next", scope: !977, file: !14, line: 69, type: !100, align: 8)
!977 = distinct !DILexicalBlock(scope: !974, file: !14, line: 69, column: 13)
!978 = !DILocation(line: 69, column: 13, scope: !977)
!979 = !DILocalVariable(name: "val", scope: !980, file: !14, line: 69, type: !100, align: 8)
!980 = distinct !DILexicalBlock(scope: !977, file: !14, line: 69, column: 8)
!981 = !DILocation(line: 69, column: 8, scope: !980)
!982 = !DILocalVariable(name: "i", scope: !983, file: !14, line: 69, type: !100, align: 8)
!983 = distinct !DILexicalBlock(scope: !977, file: !14, line: 69, column: 13)
!984 = !DILocation(line: 69, column: 8, scope: !983)
!985 = !DILocalVariable(name: "_result", scope: !986, file: !14, line: 75, type: !43, align: 1)
!986 = distinct !DILexicalBlock(scope: !968, file: !14, line: 75, column: 5)
!987 = !DILocation(line: 75, column: 5, scope: !986)
!988 = !DILocalVariable(name: "iter", scope: !989, file: !14, line: 75, type: !644, align: 8)
!989 = distinct !DILexicalBlock(scope: !968, file: !14, line: 75, column: 5)
!990 = !DILocation(line: 75, column: 14, scope: !989)
!991 = !DILocalVariable(name: "__next", scope: !992, file: !14, line: 75, type: !100, align: 8)
!992 = distinct !DILexicalBlock(scope: !989, file: !14, line: 75, column: 14)
!993 = !DILocation(line: 75, column: 14, scope: !992)
!994 = !DILocalVariable(name: "val", scope: !995, file: !14, line: 75, type: !100, align: 8)
!995 = distinct !DILexicalBlock(scope: !992, file: !14, line: 75, column: 9)
!996 = !DILocation(line: 75, column: 9, scope: !995)
!997 = !DILocalVariable(name: "i", scope: !998, file: !14, line: 75, type: !100, align: 8)
!998 = distinct !DILexicalBlock(scope: !992, file: !14, line: 75, column: 14)
!999 = !DILocation(line: 75, column: 9, scope: !998)
!1000 = !DILocalVariable(name: "tmp", scope: !1001, file: !14, line: 77, type: !59, align: 4)
!1001 = distinct !DILexicalBlock(scope: !998, file: !14, line: 77, column: 8)
!1002 = !DILocation(line: 77, column: 12, scope: !1001)
!1003 = !DILocation(line: 64, column: 34, scope: !963)
!1004 = !DILocation(line: 65, column: 29, scope: !965)
!1005 = !DILocation(line: 69, column: 16, scope: !968)
!1006 = !DILocation(line: 69, column: 13, scope: !968)
!1007 = !DILocation(line: 69, column: 8, scope: !977)
!1008 = !DILocation(line: 75, column: 17, scope: !968)
!1009 = !DILocation(line: 83, column: 1, scope: !963)
!1010 = !DILocation(line: 70, column: 12, scope: !983)
!1011 = !DILocation(line: 70, column: 8, scope: !983)
!1012 = !DILocation(line: 69, column: 4, scope: !974)
!1013 = !DILocation(line: 75, column: 14, scope: !968)
!1014 = !DILocation(line: 75, column: 9, scope: !992)
!1015 = !DILocation(line: 77, column: 27, scope: !998)
!1016 = !DILocation(line: 77, column: 18, scope: !998)
!1017 = !DILocation(line: 78, column: 26, scope: !1001)
!1018 = !DILocation(line: 78, column: 22, scope: !1001)
!1019 = !DILocation(line: 78, column: 17, scope: !1001)
!1020 = !DILocation(line: 78, column: 8, scope: !1001)
!1021 = !DILocation(line: 79, column: 17, scope: !1001)
!1022 = !DILocation(line: 79, column: 12, scope: !1001)
!1023 = !DILocation(line: 79, column: 8, scope: !1001)
!1024 = !DILocation(line: 75, column: 5, scope: !989)
