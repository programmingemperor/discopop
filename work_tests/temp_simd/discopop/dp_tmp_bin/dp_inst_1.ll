; ModuleID = 'dp_tmp_bin/dp_inst_1.ll'
source_filename = "/home/raynard/discopop/work_tests/temp_simd/test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"a.addr\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"b.addr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"result2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"result3\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.dp_bb_deps = private unnamed_addr constant [2404 x i8] c"0=1:4 INIT *|a,1:4 INIT *|b,1:5 RAW 1:4|a,1:5 RAW 1:4|b/1=1:10 INIT *|result2,1:11 INIT *|result3,1:13 INIT *|i,1:8 INIT *|retval,1:9 INIT *|result/2=1:13 RAW 1:13|i/3=1:14 INIT *|j/4=1:19 WAR 1:13|i/5=1:14 RAW 1:14|j/6=1:15 RAW 1:13|i,1:15 RAW 1:14|j,1:15 WAW 1:9|result/7=1:40 RAW 1:39|i,1:41 RAW 1:39|i/8=1:43 WAR 1:39|i/9=1:14 RAW 1:14|j,1:14 WAR 1:14|j/10=1:13 RAW 1:13|i,1:13 WAR 1:13|i/11=1:19 RAW 1:19|i/12=1:20 INIT *|j/13=1:27 WAR 1:19|i/14=1:20 RAW 1:20|j/15=1:21 INIT *|k/16=1:21 RAW 1:21|k/17=1:22 RAW 1:19|i,1:22 RAW 1:20|j,1:22 RAW 1:21|k,1:22 WAW 1:10|result2/18=1:21 RAW 1:21|k,1:21 WAR 1:21|k/19=1:20 RAW 1:20|j,1:20 WAR 1:20|j/20=1:19 RAW 1:19|i,1:19 WAR 1:19|i/21=1:27 RAW 1:27|i/22=1:28 INIT *|j/23=1:38 INIT *|sum,1:39 WAR 1:27|i/24=1:28 RAW 1:28|j/25=1:29 INIT *|temp,1:29 RAW 1:27|i,1:29 RAW 1:28|j,1:30 INIT *|k/26=1:30 RAW 1:30|k/27=1:31 RAW 1:29|temp,1:31 RAW 1:30|k,1:31 WAW 1:11|result3/28=1:30 RAW 1:30|k,1:30 WAR 1:30|k/29=1:28 RAW 1:28|j,1:28 WAR 1:28|j/30=1:27 RAW 1:27|i,1:27 WAR 1:27|i/31=1:39 RAW 1:39|i/32=1:39 RAW 1:39|i,1:39 WAR 1:39|i/33=1:43 RAW 1:43|i/34=1:44 INIT *|j/35=1:50 RAW 1:9|result,1:51 RAW 1:10|result2,1:52 RAW 1:11|result3,1:53 RAW 1:8|retval/36=1:44 RAW 1:44|j/37=1:45 RAW 1:43|i,1:45 RAW 1:44|j/38=1:44 RAW 1:44|j,1:44 WAR 1:44|j/39=1:43 RAW 1:43|i,1:43 WAR 1:43|i/40=1:14 WAR 1:14|j/41=1:20 WAR 1:14|j/42=1:28 WAR 1:14|j/43=1:44 WAR 1:14|j/44=1:15 WAW 1:15|result/45=1:50 RAW 1:15|result/46=1:14 RAW 1:14|j/47=1:15 RAW 1:14|j/48=1:14 RAW 1:14|j/49=1:13 RAW 1:13|i/50=1:15 RAW 1:13|i/51=1:13 RAW 1:13|i/52=1:20 WAR 1:20|j/53=1:28 WAR 1:20|j/54=1:44 WAR 1:20|j/55=1:21 WAR 1:21|k/56=1:30 WAR 1:21|k/57=1:22 WAW 1:22|result2/58=1:51 RAW 1:22|result2/59=1:21 RAW 1:21|k/60=1:22 RAW 1:21|k/61=1:21 RAW 1:21|k/62=1:20 RAW 1:20|j/63=1:22 RAW 1:20|j/64=1:20 RAW 1:20|j/65=1:19 RAW 1:19|i/66=1:22 RAW 1:19|i/67=1:19 RAW 1:19|i/68=1:28 WAR 1:28|j/69=1:44 WAR 1:28|j/70=1:29 WAW 1:29|temp/71=1:30 WAR 1:30|k/72=1:29 WAR 1:31|temp/73=1:31 WAW 1:31|result3/74=1:52 RAW 1:31|result3/75=1:30 RAW 1:30|k/76=1:31 RAW 1:30|k/77=1:30 RAW 1:30|k/78=1:28 RAW 1:28|j/79=1:29 RAW 1:28|j/80=1:28 RAW 1:28|j/81=1:27 RAW 1:27|i/82=1:29 RAW 1:27|i/83=1:27 RAW 1:27|i/84=1:40 RAW 1:39|i,1:41 RAW 1:39|i/85=1:39 RAW 1:39|i/86=1:39 RAW 1:39|i/87=1:44 WAR 1:44|j/88=1:44 RAW 1:44|j/89=1:45 RAW 1:44|j/90=1:44 RAW 1:44|j/91=1:43 RAW 1:43|i/92=1:45 RAW 1:43|i/93=1:43 RAW 1:43|i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc(i32 %a, i32 %b) #0 !dbg !7 {
entry:
  call void @__dp_func_entry(i32 16388, i32 0)
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %0 = ptrtoint i32* %a.addr to i64
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %1 = ptrtoint i32* %b.addr to i64
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %2 = ptrtoint i32* %a.addr to i64
  %3 = load i32, i32* %a.addr, align 4, !dbg !16
  %4 = ptrtoint i32* %b.addr to i64
  %5 = load i32, i32* %b.addr, align 4, !dbg !17
  %add = add nsw i32 %3, %5, !dbg !18
  call void @__dp_report_bb(i32 0)
  call void @__dp_func_exit(i32 16389, i32 0), !dbg !19
  ret i32 %add, !dbg !19
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  call void @__dp_func_entry(i32 16392, i32 1)
  %__dp_bb20 = alloca i32
  store i32 0, i32* %__dp_bb20
  %__dp_bb19 = alloca i32
  store i32 0, i32* %__dp_bb19
  %__dp_bb18 = alloca i32
  store i32 0, i32* %__dp_bb18
  %__dp_bb17 = alloca i32
  store i32 0, i32* %__dp_bb17
  %__dp_bb16 = alloca i32
  store i32 0, i32* %__dp_bb16
  %__dp_bb15 = alloca i32
  store i32 0, i32* %__dp_bb15
  %__dp_bb14 = alloca i32
  store i32 0, i32* %__dp_bb14
  %__dp_bb13 = alloca i32
  store i32 0, i32* %__dp_bb13
  %__dp_bb12 = alloca i32
  store i32 0, i32* %__dp_bb12
  %__dp_bb11 = alloca i32
  store i32 0, i32* %__dp_bb11
  %__dp_bb10 = alloca i32
  store i32 0, i32* %__dp_bb10
  %__dp_bb9 = alloca i32
  store i32 0, i32* %__dp_bb9
  %__dp_bb8 = alloca i32
  store i32 0, i32* %__dp_bb8
  %__dp_bb7 = alloca i32
  store i32 0, i32* %__dp_bb7
  %__dp_bb6 = alloca i32
  store i32 0, i32* %__dp_bb6
  %__dp_bb5 = alloca i32
  store i32 0, i32* %__dp_bb5
  %__dp_bb4 = alloca i32
  store i32 0, i32* %__dp_bb4
  %__dp_bb3 = alloca i32
  store i32 0, i32* %__dp_bb3
  %__dp_bb2 = alloca i32
  store i32 0, i32* %__dp_bb2
  %__dp_bb1 = alloca i32
  store i32 0, i32* %__dp_bb1
  %__dp_bb = alloca i32
  store i32 0, i32* %__dp_bb
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %result2 = alloca i32, align 4
  %result3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %b = alloca [10 x i32], align 16
  %sum = alloca i32, align 4
  %0 = ptrtoint i32* %retval to i64
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !23, metadata !DIExpression()), !dbg !24
  %1 = ptrtoint i32* %result to i64
  store i32 0, i32* %result, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %result2, metadata !25, metadata !DIExpression()), !dbg !26
  %2 = ptrtoint i32* %result2 to i64
  store i32 0, i32* %result2, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %result3, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = ptrtoint i32* %result3 to i64
  store i32 0, i32* %result3, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !DIExpression()), !dbg !34
  %4 = ptrtoint i32* %i to i64
  store i32 0, i32* %i, align 4, !dbg !35
  call void @__dp_report_bb(i32 1)
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc4, %entry
  call void @__dp_loop_entry(i32 16397, i32 0)
  %5 = ptrtoint i32* %i to i64
  %6 = load i32, i32* %i, align 4, !dbg !38
  %cmp = icmp slt i32 %6, 10, !dbg !40
  call void @__dp_report_bb(i32 2)
  %7 = load i32, i32* %__dp_bb3
  call void @__dp_report_bb_pair(i32 %7, i32 49)
  br i1 %cmp, label %for.body, label %for.end6, !dbg !41

for.body:                                         ; preds = %for.cond
  %8 = ptrtoint i32* %j to i64
  store i32 0, i32* %j, align 4, !dbg !42
  call void @__dp_report_bb(i32 3)
  %9 = load i32, i32* %__dp_bb
  call void @__dp_report_bb_pair(i32 %9, i32 40)
  br label %for.cond1, !dbg !45

for.cond1:                                        ; preds = %for.inc, %for.body
  call void @__dp_loop_entry(i32 16398, i32 1)
  %10 = ptrtoint i32* %j to i64
  %11 = load i32, i32* %j, align 4, !dbg !46
  %cmp2 = icmp slt i32 %11, 5, !dbg !48
  call void @__dp_report_bb(i32 5)
  store i32 1, i32* %__dp_bb
  %12 = load i32, i32* %__dp_bb2
  call void @__dp_report_bb_pair(i32 %12, i32 46)
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !49

for.body3:                                        ; preds = %for.cond1
  %13 = ptrtoint i32* %i to i64
  %14 = load i32, i32* %i, align 4, !dbg !50
  %15 = ptrtoint i32* %j to i64
  %16 = load i32, i32* %j, align 4, !dbg !52
  call void @__dp_call(i32 16399), !dbg !53
  %call = call i32 @calc(i32 %14, i32 %16), !dbg !53
  %17 = ptrtoint i32* %result to i64
  store i32 %call, i32* %result, align 4, !dbg !54
  call void @__dp_report_bb(i32 6)
  %18 = load i32, i32* %__dp_bb1
  call void @__dp_report_bb_pair(i32 %18, i32 44)
  store i32 1, i32* %__dp_bb1
  %19 = load i32, i32* %__dp_bb2
  call void @__dp_report_bb_pair(i32 %19, i32 47)
  %20 = load i32, i32* %__dp_bb3
  call void @__dp_report_bb_pair(i32 %20, i32 50)
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body3
  %21 = ptrtoint i32* %j to i64
  %22 = load i32, i32* %j, align 4, !dbg !56
  %inc = add nsw i32 %22, 1, !dbg !56
  %23 = ptrtoint i32* %j to i64
  store i32 %inc, i32* %j, align 4, !dbg !56
  call void @__dp_report_bb(i32 9)
  %24 = load i32, i32* %__dp_bb2
  call void @__dp_report_bb_pair(i32 %24, i32 48)
  store i32 1, i32* %__dp_bb2
  br label %for.cond1, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  call void @__dp_loop_exit(i32 16401, i32 1)
  br label %for.inc4, !dbg !60

for.inc4:                                         ; preds = %for.end
  %25 = ptrtoint i32* %i to i64
  %26 = load i32, i32* %i, align 4, !dbg !61
  %inc5 = add nsw i32 %26, 1, !dbg !61
  %27 = ptrtoint i32* %i to i64
  store i32 %inc5, i32* %i, align 4, !dbg !61
  call void @__dp_report_bb(i32 10)
  %28 = load i32, i32* %__dp_bb3
  call void @__dp_report_bb_pair(i32 %28, i32 51)
  store i32 1, i32* %__dp_bb3
  br label %for.cond, !dbg !62, !llvm.loop !63

for.end6:                                         ; preds = %for.cond
  call void @__dp_loop_exit(i32 16403, i32 0)
  %29 = ptrtoint i32* %i to i64
  store i32 0, i32* %i, align 4, !dbg !65
  call void @__dp_report_bb(i32 4)
  br label %for.cond7, !dbg !67

for.cond7:                                        ; preds = %for.inc23, %for.end6
  call void @__dp_loop_entry(i32 16403, i32 2)
  %30 = ptrtoint i32* %i to i64
  %31 = load i32, i32* %i, align 4, !dbg !68
  %cmp8 = icmp slt i32 %31, 10, !dbg !70
  call void @__dp_report_bb(i32 11)
  %32 = load i32, i32* %__dp_bb9
  call void @__dp_report_bb_pair(i32 %32, i32 65)
  br i1 %cmp8, label %for.body9, label %for.end25, !dbg !71

for.body9:                                        ; preds = %for.cond7
  %33 = ptrtoint i32* %j to i64
  store i32 0, i32* %j, align 4, !dbg !72
  call void @__dp_report_bb(i32 12)
  %34 = load i32, i32* %__dp_bb
  call void @__dp_report_bb_pair(i32 %34, i32 41)
  %35 = load i32, i32* %__dp_bb4
  call void @__dp_report_bb_pair(i32 %35, i32 52)
  br label %for.cond10, !dbg !75

for.cond10:                                       ; preds = %for.inc20, %for.body9
  call void @__dp_loop_entry(i32 16404, i32 3)
  %36 = ptrtoint i32* %j to i64
  %37 = load i32, i32* %j, align 4, !dbg !76
  %cmp11 = icmp slt i32 %37, 5, !dbg !78
  call void @__dp_report_bb(i32 14)
  store i32 1, i32* %__dp_bb4
  %38 = load i32, i32* %__dp_bb8
  call void @__dp_report_bb_pair(i32 %38, i32 62)
  br i1 %cmp11, label %for.body12, label %for.end22, !dbg !79

for.body12:                                       ; preds = %for.cond10
  %39 = ptrtoint i32* %k to i64
  store i32 0, i32* %k, align 4, !dbg !80
  call void @__dp_report_bb(i32 15)
  %40 = load i32, i32* %__dp_bb5
  call void @__dp_report_bb_pair(i32 %40, i32 55)
  br label %for.cond13, !dbg !83

for.cond13:                                       ; preds = %for.inc17, %for.body12
  call void @__dp_loop_entry(i32 16405, i32 4)
  %41 = ptrtoint i32* %k to i64
  %42 = load i32, i32* %k, align 4, !dbg !84
  %cmp14 = icmp slt i32 %42, 7, !dbg !86
  call void @__dp_report_bb(i32 16)
  store i32 1, i32* %__dp_bb5
  %43 = load i32, i32* %__dp_bb7
  call void @__dp_report_bb_pair(i32 %43, i32 59)
  br i1 %cmp14, label %for.body15, label %for.end19, !dbg !87

for.body15:                                       ; preds = %for.cond13
  %44 = ptrtoint i32* %i to i64
  %45 = load i32, i32* %i, align 4, !dbg !88
  %46 = ptrtoint i32* %j to i64
  %47 = load i32, i32* %j, align 4, !dbg !90
  %add = add nsw i32 %45, %47, !dbg !91
  %48 = ptrtoint i32* %k to i64
  %49 = load i32, i32* %k, align 4, !dbg !92
  %add16 = add nsw i32 %add, %49, !dbg !93
  %50 = ptrtoint i32* %result2 to i64
  store i32 %add16, i32* %result2, align 4, !dbg !94
  call void @__dp_report_bb(i32 17)
  %51 = load i32, i32* %__dp_bb6
  call void @__dp_report_bb_pair(i32 %51, i32 57)
  store i32 1, i32* %__dp_bb6
  %52 = load i32, i32* %__dp_bb7
  call void @__dp_report_bb_pair(i32 %52, i32 60)
  %53 = load i32, i32* %__dp_bb8
  call void @__dp_report_bb_pair(i32 %53, i32 63)
  %54 = load i32, i32* %__dp_bb9
  call void @__dp_report_bb_pair(i32 %54, i32 66)
  br label %for.inc17, !dbg !95

for.inc17:                                        ; preds = %for.body15
  %55 = ptrtoint i32* %k to i64
  %56 = load i32, i32* %k, align 4, !dbg !96
  %inc18 = add nsw i32 %56, 1, !dbg !96
  %57 = ptrtoint i32* %k to i64
  store i32 %inc18, i32* %k, align 4, !dbg !96
  call void @__dp_report_bb(i32 18)
  %58 = load i32, i32* %__dp_bb7
  call void @__dp_report_bb_pair(i32 %58, i32 61)
  store i32 1, i32* %__dp_bb7
  br label %for.cond13, !dbg !97, !llvm.loop !98

for.end19:                                        ; preds = %for.cond13
  call void @__dp_loop_exit(i32 16408, i32 4)
  br label %for.inc20, !dbg !100

for.inc20:                                        ; preds = %for.end19
  %59 = ptrtoint i32* %j to i64
  %60 = load i32, i32* %j, align 4, !dbg !101
  %inc21 = add nsw i32 %60, 1, !dbg !101
  %61 = ptrtoint i32* %j to i64
  store i32 %inc21, i32* %j, align 4, !dbg !101
  call void @__dp_report_bb(i32 19)
  %62 = load i32, i32* %__dp_bb8
  call void @__dp_report_bb_pair(i32 %62, i32 64)
  store i32 1, i32* %__dp_bb8
  br label %for.cond10, !dbg !102, !llvm.loop !103

for.end22:                                        ; preds = %for.cond10
  call void @__dp_loop_exit(i32 16409, i32 3)
  br label %for.inc23, !dbg !105

for.inc23:                                        ; preds = %for.end22
  %63 = ptrtoint i32* %i to i64
  %64 = load i32, i32* %i, align 4, !dbg !106
  %inc24 = add nsw i32 %64, 1, !dbg !106
  %65 = ptrtoint i32* %i to i64
  store i32 %inc24, i32* %i, align 4, !dbg !106
  call void @__dp_report_bb(i32 20)
  %66 = load i32, i32* %__dp_bb9
  call void @__dp_report_bb_pair(i32 %66, i32 67)
  store i32 1, i32* %__dp_bb9
  br label %for.cond7, !dbg !107, !llvm.loop !108

for.end25:                                        ; preds = %for.cond7
  call void @__dp_loop_exit(i32 16411, i32 2)
  %67 = ptrtoint i32* %i to i64
  store i32 0, i32* %i, align 4, !dbg !110
  call void @__dp_report_bb(i32 13)
  br label %for.cond26, !dbg !112

for.cond26:                                       ; preds = %for.inc43, %for.end25
  call void @__dp_loop_entry(i32 16411, i32 5)
  %68 = ptrtoint i32* %i to i64
  %69 = load i32, i32* %i, align 4, !dbg !113
  %cmp27 = icmp slt i32 %69, 10, !dbg !115
  call void @__dp_report_bb(i32 21)
  %70 = load i32, i32* %__dp_bb16
  call void @__dp_report_bb_pair(i32 %70, i32 81)
  br i1 %cmp27, label %for.body28, label %for.end45, !dbg !116

for.body28:                                       ; preds = %for.cond26
  %71 = ptrtoint i32* %j to i64
  store i32 0, i32* %j, align 4, !dbg !117
  call void @__dp_report_bb(i32 22)
  %72 = load i32, i32* %__dp_bb
  call void @__dp_report_bb_pair(i32 %72, i32 42)
  %73 = load i32, i32* %__dp_bb4
  call void @__dp_report_bb_pair(i32 %73, i32 53)
  %74 = load i32, i32* %__dp_bb10
  call void @__dp_report_bb_pair(i32 %74, i32 68)
  br label %for.cond29, !dbg !120

for.cond29:                                       ; preds = %for.inc40, %for.body28
  call void @__dp_loop_entry(i32 16412, i32 6)
  %75 = ptrtoint i32* %j to i64
  %76 = load i32, i32* %j, align 4, !dbg !121
  %cmp30 = icmp slt i32 %76, 5, !dbg !123
  call void @__dp_report_bb(i32 24)
  store i32 1, i32* %__dp_bb10
  %77 = load i32, i32* %__dp_bb15
  call void @__dp_report_bb_pair(i32 %77, i32 78)
  br i1 %cmp30, label %for.body31, label %for.end42, !dbg !124

for.body31:                                       ; preds = %for.cond29
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !125, metadata !DIExpression()), !dbg !127
  %78 = ptrtoint i32* %i to i64
  %79 = load i32, i32* %i, align 4, !dbg !128
  %80 = ptrtoint i32* %j to i64
  %81 = load i32, i32* %j, align 4, !dbg !129
  %add32 = add nsw i32 %79, %81, !dbg !130
  %82 = ptrtoint i32* %temp to i64
  store i32 %add32, i32* %temp, align 4, !dbg !127
  %83 = ptrtoint i32* %k to i64
  store i32 0, i32* %k, align 4, !dbg !131
  call void @__dp_report_bb(i32 25)
  %84 = load i32, i32* %__dp_bb5
  call void @__dp_report_bb_pair(i32 %84, i32 56)
  %85 = load i32, i32* %__dp_bb11
  call void @__dp_report_bb_pair(i32 %85, i32 70)
  store i32 1, i32* %__dp_bb11
  %86 = load i32, i32* %__dp_bb12
  call void @__dp_report_bb_pair(i32 %86, i32 71)
  %87 = load i32, i32* %__dp_bb13
  call void @__dp_report_bb_pair(i32 %87, i32 72)
  %88 = load i32, i32* %__dp_bb15
  call void @__dp_report_bb_pair(i32 %88, i32 79)
  %89 = load i32, i32* %__dp_bb16
  call void @__dp_report_bb_pair(i32 %89, i32 82)
  br label %for.cond33, !dbg !133

for.cond33:                                       ; preds = %for.inc37, %for.body31
  call void @__dp_loop_entry(i32 16414, i32 7)
  %90 = ptrtoint i32* %k to i64
  %91 = load i32, i32* %k, align 4, !dbg !134
  %cmp34 = icmp slt i32 %91, 7, !dbg !136
  call void @__dp_report_bb(i32 26)
  store i32 1, i32* %__dp_bb12
  %92 = load i32, i32* %__dp_bb14
  call void @__dp_report_bb_pair(i32 %92, i32 75)
  br i1 %cmp34, label %for.body35, label %for.end39, !dbg !137

for.body35:                                       ; preds = %for.cond33
  %93 = ptrtoint i32* %temp to i64
  %94 = load i32, i32* %temp, align 4, !dbg !138
  %95 = ptrtoint i32* %k to i64
  %96 = load i32, i32* %k, align 4, !dbg !140
  %add36 = add nsw i32 %94, %96, !dbg !141
  %97 = ptrtoint i32* %result3 to i64
  store i32 %add36, i32* %result3, align 4, !dbg !142
  call void @__dp_report_bb(i32 27)
  %98 = load i32, i32* %__dp_bb13
  call void @__dp_report_bb_pair(i32 %98, i32 73)
  store i32 1, i32* %__dp_bb13
  %99 = load i32, i32* %__dp_bb14
  call void @__dp_report_bb_pair(i32 %99, i32 76)
  br label %for.inc37, !dbg !143

for.inc37:                                        ; preds = %for.body35
  %100 = ptrtoint i32* %k to i64
  %101 = load i32, i32* %k, align 4, !dbg !144
  %inc38 = add nsw i32 %101, 1, !dbg !144
  %102 = ptrtoint i32* %k to i64
  store i32 %inc38, i32* %k, align 4, !dbg !144
  call void @__dp_report_bb(i32 28)
  %103 = load i32, i32* %__dp_bb14
  call void @__dp_report_bb_pair(i32 %103, i32 77)
  store i32 1, i32* %__dp_bb14
  br label %for.cond33, !dbg !145, !llvm.loop !146

for.end39:                                        ; preds = %for.cond33
  call void @__dp_loop_exit(i32 16417, i32 7)
  br label %for.inc40, !dbg !148

for.inc40:                                        ; preds = %for.end39
  %104 = ptrtoint i32* %j to i64
  %105 = load i32, i32* %j, align 4, !dbg !149
  %inc41 = add nsw i32 %105, 1, !dbg !149
  %106 = ptrtoint i32* %j to i64
  store i32 %inc41, i32* %j, align 4, !dbg !149
  call void @__dp_report_bb(i32 29)
  %107 = load i32, i32* %__dp_bb15
  call void @__dp_report_bb_pair(i32 %107, i32 80)
  store i32 1, i32* %__dp_bb15
  br label %for.cond29, !dbg !150, !llvm.loop !151

for.end42:                                        ; preds = %for.cond29
  call void @__dp_loop_exit(i32 16418, i32 6)
  br label %for.inc43, !dbg !153

for.inc43:                                        ; preds = %for.end42
  %108 = ptrtoint i32* %i to i64
  %109 = load i32, i32* %i, align 4, !dbg !154
  %inc44 = add nsw i32 %109, 1, !dbg !154
  %110 = ptrtoint i32* %i to i64
  store i32 %inc44, i32* %i, align 4, !dbg !154
  call void @__dp_report_bb(i32 30)
  %111 = load i32, i32* %__dp_bb16
  call void @__dp_report_bb_pair(i32 %111, i32 83)
  store i32 1, i32* %__dp_bb16
  br label %for.cond26, !dbg !155, !llvm.loop !156

for.end45:                                        ; preds = %for.cond26
  call void @__dp_loop_exit(i32 16420, i32 5)
  call void @llvm.dbg.declare(metadata [10 x i32]* %a, metadata !158, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !165, metadata !DIExpression()), !dbg !166
  %112 = ptrtoint i32* %sum to i64
  store i32 0, i32* %sum, align 4, !dbg !166
  %113 = ptrtoint i32* %i to i64
  store i32 0, i32* %i, align 4, !dbg !167
  call void @__dp_report_bb(i32 23)
  br label %for.cond46, !dbg !169

for.cond46:                                       ; preds = %for.inc52, %for.end45
  call void @__dp_loop_entry(i32 16423, i32 8)
  %114 = ptrtoint i32* %i to i64
  %115 = load i32, i32* %i, align 4, !dbg !170
  %cmp47 = icmp slt i32 %115, 10, !dbg !172
  call void @__dp_report_bb(i32 31)
  %116 = load i32, i32* %__dp_bb17
  call void @__dp_report_bb_pair(i32 %116, i32 85)
  br i1 %cmp47, label %for.body48, label %for.end54, !dbg !173

for.body48:                                       ; preds = %for.cond46
  %117 = ptrtoint i32* %i to i64
  %118 = load i32, i32* %i, align 4, !dbg !174
  %119 = ptrtoint i32* %i to i64
  %120 = load i32, i32* %i, align 4, !dbg !176
  %idxprom = sext i32 %120 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom, !dbg !177
  %121 = ptrtoint i32* %arrayidx to i64
  call void @__dp_write(i32 16424, i64 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i32 %118, i32* %arrayidx, align 4, !dbg !178
  %122 = ptrtoint i32* %i to i64
  %123 = load i32, i32* %i, align 4, !dbg !179
  %add49 = add nsw i32 %123, 1, !dbg !180
  %124 = ptrtoint i32* %i to i64
  %125 = load i32, i32* %i, align 4, !dbg !181
  %idxprom50 = sext i32 %125 to i64, !dbg !182
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 %idxprom50, !dbg !182
  %126 = ptrtoint i32* %arrayidx51 to i64
  call void @__dp_write(i32 16425, i64 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i32 %add49, i32* %arrayidx51, align 4, !dbg !183
  call void @__dp_report_bb(i32 7)
  %127 = load i32, i32* %__dp_bb17
  call void @__dp_report_bb_pair(i32 %127, i32 84)
  br label %for.inc52, !dbg !184

for.inc52:                                        ; preds = %for.body48
  %128 = ptrtoint i32* %i to i64
  %129 = load i32, i32* %i, align 4, !dbg !185
  %inc53 = add nsw i32 %129, 1, !dbg !185
  %130 = ptrtoint i32* %i to i64
  store i32 %inc53, i32* %i, align 4, !dbg !185
  call void @__dp_report_bb(i32 32)
  %131 = load i32, i32* %__dp_bb17
  call void @__dp_report_bb_pair(i32 %131, i32 86)
  store i32 1, i32* %__dp_bb17
  br label %for.cond46, !dbg !186, !llvm.loop !187

for.end54:                                        ; preds = %for.cond46
  call void @__dp_loop_exit(i32 16427, i32 8)
  %132 = ptrtoint i32* %i to i64
  store i32 0, i32* %i, align 4, !dbg !189
  call void @__dp_report_bb(i32 8)
  br label %for.cond55, !dbg !191

for.cond55:                                       ; preds = %for.inc72, %for.end54
  call void @__dp_loop_entry(i32 16427, i32 9)
  %133 = ptrtoint i32* %i to i64
  %134 = load i32, i32* %i, align 4, !dbg !192
  %cmp56 = icmp slt i32 %134, 10, !dbg !194
  call void @__dp_report_bb(i32 33)
  %135 = load i32, i32* %__dp_bb20
  call void @__dp_report_bb_pair(i32 %135, i32 91)
  br i1 %cmp56, label %for.body57, label %for.end74, !dbg !195

for.body57:                                       ; preds = %for.cond55
  %136 = ptrtoint i32* %j to i64
  store i32 0, i32* %j, align 4, !dbg !196
  call void @__dp_report_bb(i32 34)
  %137 = load i32, i32* %__dp_bb
  call void @__dp_report_bb_pair(i32 %137, i32 43)
  %138 = load i32, i32* %__dp_bb4
  call void @__dp_report_bb_pair(i32 %138, i32 54)
  %139 = load i32, i32* %__dp_bb10
  call void @__dp_report_bb_pair(i32 %139, i32 69)
  %140 = load i32, i32* %__dp_bb18
  call void @__dp_report_bb_pair(i32 %140, i32 87)
  br label %for.cond58, !dbg !199

for.cond58:                                       ; preds = %for.inc69, %for.body57
  call void @__dp_loop_entry(i32 16428, i32 10)
  %141 = ptrtoint i32* %j to i64
  %142 = load i32, i32* %j, align 4, !dbg !200
  %cmp59 = icmp slt i32 %142, 10, !dbg !202
  call void @__dp_report_bb(i32 36)
  store i32 1, i32* %__dp_bb18
  %143 = load i32, i32* %__dp_bb19
  call void @__dp_report_bb_pair(i32 %143, i32 88)
  br i1 %cmp59, label %for.body60, label %for.end71, !dbg !203

for.body60:                                       ; preds = %for.cond58
  %144 = ptrtoint i32* %j to i64
  %145 = load i32, i32* %j, align 4, !dbg !204
  %add61 = add nsw i32 %145, 1, !dbg !206
  %idxprom62 = sext i32 %add61 to i64, !dbg !207
  %arrayidx63 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom62, !dbg !207
  %146 = ptrtoint i32* %arrayidx63 to i64
  call void @__dp_read(i32 16429, i64 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %147 = load i32, i32* %arrayidx63, align 4, !dbg !207
  %148 = ptrtoint i32* %i to i64
  %149 = load i32, i32* %i, align 4, !dbg !208
  %idxprom64 = sext i32 %149 to i64, !dbg !209
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 %idxprom64, !dbg !209
  %150 = ptrtoint i32* %arrayidx65 to i64
  call void @__dp_read(i32 16429, i64 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %151 = load i32, i32* %arrayidx65, align 4, !dbg !209
  %add66 = add nsw i32 %147, %151, !dbg !210
  %152 = ptrtoint i32* %j to i64
  %153 = load i32, i32* %j, align 4, !dbg !211
  %idxprom67 = sext i32 %153 to i64, !dbg !212
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom67, !dbg !212
  %154 = ptrtoint i32* %arrayidx68 to i64
  call void @__dp_write(i32 16429, i64 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i32 %add66, i32* %arrayidx68, align 4, !dbg !213
  call void @__dp_report_bb(i32 37)
  %155 = load i32, i32* %__dp_bb19
  call void @__dp_report_bb_pair(i32 %155, i32 89)
  %156 = load i32, i32* %__dp_bb20
  call void @__dp_report_bb_pair(i32 %156, i32 92)
  br label %for.inc69, !dbg !214

for.inc69:                                        ; preds = %for.body60
  %157 = ptrtoint i32* %j to i64
  %158 = load i32, i32* %j, align 4, !dbg !215
  %inc70 = add nsw i32 %158, 1, !dbg !215
  %159 = ptrtoint i32* %j to i64
  store i32 %inc70, i32* %j, align 4, !dbg !215
  call void @__dp_report_bb(i32 38)
  %160 = load i32, i32* %__dp_bb19
  call void @__dp_report_bb_pair(i32 %160, i32 90)
  store i32 1, i32* %__dp_bb19
  br label %for.cond58, !dbg !216, !llvm.loop !217

for.end71:                                        ; preds = %for.cond58
  call void @__dp_loop_exit(i32 16431, i32 10)
  br label %for.inc72, !dbg !219

for.inc72:                                        ; preds = %for.end71
  %161 = ptrtoint i32* %i to i64
  %162 = load i32, i32* %i, align 4, !dbg !220
  %inc73 = add nsw i32 %162, 1, !dbg !220
  %163 = ptrtoint i32* %i to i64
  store i32 %inc73, i32* %i, align 4, !dbg !220
  call void @__dp_report_bb(i32 39)
  %164 = load i32, i32* %__dp_bb20
  call void @__dp_report_bb_pair(i32 %164, i32 93)
  store i32 1, i32* %__dp_bb20
  br label %for.cond55, !dbg !221, !llvm.loop !222

for.end74:                                        ; preds = %for.cond55
  call void @__dp_loop_exit(i32 16434, i32 9)
  %165 = ptrtoint i32* %result to i64
  %166 = load i32, i32* %result, align 4, !dbg !224
  call void @__dp_call(i32 16434), !dbg !225
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %166), !dbg !225
  %167 = ptrtoint i32* %result2 to i64
  %168 = load i32, i32* %result2, align 4, !dbg !226
  call void @__dp_call(i32 16435), !dbg !227
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %168), !dbg !227
  %169 = ptrtoint i32* %result3 to i64
  %170 = load i32, i32* %result3, align 4, !dbg !228
  call void @__dp_call(i32 16436), !dbg !229
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %170), !dbg !229
  %171 = ptrtoint i32* %retval to i64
  %172 = load i32, i32* %retval, align 4, !dbg !230
  call void @__dp_report_bb(i32 35)
  %173 = load i32, i32* %__dp_bb1
  call void @__dp_report_bb_pair(i32 %173, i32 45)
  %174 = load i32, i32* %__dp_bb6
  call void @__dp_report_bb_pair(i32 %174, i32 58)
  %175 = load i32, i32* %__dp_bb13
  call void @__dp_report_bb_pair(i32 %175, i32 74)
  call void @__dp_add_bb_deps(i8* getelementptr inbounds ([2404 x i8], [2404 x i8]* @.dp_bb_deps, i32 0, i32 0))
  call void @__dp_finalize(i32 16437), !dbg !230
  ret i32 %172, !dbg !230
}

declare dso_local i32 @printf(i8*, ...) #2

declare void @__dp_init(i32, i32, i32)

declare void @__dp_finalize(i32)

declare void @__dp_read(i32, i64, i8*)

declare void @__dp_write(i32, i64, i8*)

declare void @__dp_call(i32)

declare void @__dp_func_entry(i32, i32)

declare void @__dp_func_exit(i32, i32)

declare void @__dp_loop_entry(i32, i32)

declare void @__dp_loop_exit(i32, i32)

declare void @__dp_report_bb(i32)

declare void @__dp_report_bb_pair(i32, i32)

declare void @__dp_add_bb_deps(i8*)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.1 (tags/RELEASE_801/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/home/raynard/discopop/work_tests/temp_simd/test.c", directory: "/home/raynard/discopop/work_tests/temp_simd/discopop")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!7 = distinct !DISubprogram(name: "calc", scope: !8, file: !8, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "test.c", directory: "/home/raynard/discopop/work_tests/temp_simd")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !8, line: 4, type: !11)
!13 = !DILocation(line: 4, column: 14, scope: !7)
!14 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !8, line: 4, type: !11)
!15 = !DILocation(line: 4, column: 21, scope: !7)
!16 = !DILocation(line: 5, column: 12, scope: !7)
!17 = !DILocation(line: 5, column: 16, scope: !7)
!18 = !DILocation(line: 5, column: 14, scope: !7)
!19 = !DILocation(line: 5, column: 5, scope: !7)
!20 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 8, type: !21, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!11}
!23 = !DILocalVariable(name: "result", scope: !20, file: !8, line: 9, type: !11)
!24 = !DILocation(line: 9, column: 9, scope: !20)
!25 = !DILocalVariable(name: "result2", scope: !20, file: !8, line: 10, type: !11)
!26 = !DILocation(line: 10, column: 9, scope: !20)
!27 = !DILocalVariable(name: "result3", scope: !20, file: !8, line: 11, type: !11)
!28 = !DILocation(line: 11, column: 9, scope: !20)
!29 = !DILocalVariable(name: "i", scope: !20, file: !8, line: 12, type: !11)
!30 = !DILocation(line: 12, column: 9, scope: !20)
!31 = !DILocalVariable(name: "j", scope: !20, file: !8, line: 12, type: !11)
!32 = !DILocation(line: 12, column: 12, scope: !20)
!33 = !DILocalVariable(name: "k", scope: !20, file: !8, line: 12, type: !11)
!34 = !DILocation(line: 12, column: 15, scope: !20)
!35 = !DILocation(line: 13, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !20, file: !8, line: 13, column: 5)
!37 = !DILocation(line: 13, column: 10, scope: !36)
!38 = !DILocation(line: 13, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !8, line: 13, column: 5)
!40 = !DILocation(line: 13, column: 19, scope: !39)
!41 = !DILocation(line: 13, column: 5, scope: !36)
!42 = !DILocation(line: 14, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !8, line: 14, column: 9)
!44 = distinct !DILexicalBlock(scope: !39, file: !8, line: 13, column: 29)
!45 = !DILocation(line: 14, column: 14, scope: !43)
!46 = !DILocation(line: 14, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !8, line: 14, column: 9)
!48 = !DILocation(line: 14, column: 23, scope: !47)
!49 = !DILocation(line: 14, column: 9, scope: !43)
!50 = !DILocation(line: 15, column: 27, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !8, line: 14, column: 32)
!52 = !DILocation(line: 15, column: 29, scope: !51)
!53 = !DILocation(line: 15, column: 22, scope: !51)
!54 = !DILocation(line: 15, column: 20, scope: !51)
!55 = !DILocation(line: 16, column: 9, scope: !51)
!56 = !DILocation(line: 14, column: 29, scope: !47)
!57 = !DILocation(line: 14, column: 9, scope: !47)
!58 = distinct !{!58, !49, !59}
!59 = !DILocation(line: 16, column: 9, scope: !43)
!60 = !DILocation(line: 17, column: 5, scope: !44)
!61 = !DILocation(line: 13, column: 26, scope: !39)
!62 = !DILocation(line: 13, column: 5, scope: !39)
!63 = distinct !{!63, !41, !64}
!64 = !DILocation(line: 17, column: 5, scope: !36)
!65 = !DILocation(line: 19, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !20, file: !8, line: 19, column: 5)
!67 = !DILocation(line: 19, column: 10, scope: !66)
!68 = !DILocation(line: 19, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !8, line: 19, column: 5)
!70 = !DILocation(line: 19, column: 19, scope: !69)
!71 = !DILocation(line: 19, column: 5, scope: !66)
!72 = !DILocation(line: 20, column: 16, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !8, line: 20, column: 9)
!74 = distinct !DILexicalBlock(scope: !69, file: !8, line: 19, column: 29)
!75 = !DILocation(line: 20, column: 14, scope: !73)
!76 = !DILocation(line: 20, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !8, line: 20, column: 9)
!78 = !DILocation(line: 20, column: 23, scope: !77)
!79 = !DILocation(line: 20, column: 9, scope: !73)
!80 = !DILocation(line: 21, column: 20, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !8, line: 21, column: 13)
!82 = distinct !DILexicalBlock(scope: !77, file: !8, line: 20, column: 32)
!83 = !DILocation(line: 21, column: 18, scope: !81)
!84 = !DILocation(line: 21, column: 25, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !8, line: 21, column: 13)
!86 = !DILocation(line: 21, column: 27, scope: !85)
!87 = !DILocation(line: 21, column: 13, scope: !81)
!88 = !DILocation(line: 22, column: 27, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !8, line: 21, column: 36)
!90 = !DILocation(line: 22, column: 31, scope: !89)
!91 = !DILocation(line: 22, column: 29, scope: !89)
!92 = !DILocation(line: 22, column: 35, scope: !89)
!93 = !DILocation(line: 22, column: 33, scope: !89)
!94 = !DILocation(line: 22, column: 25, scope: !89)
!95 = !DILocation(line: 23, column: 13, scope: !89)
!96 = !DILocation(line: 21, column: 33, scope: !85)
!97 = !DILocation(line: 21, column: 13, scope: !85)
!98 = distinct !{!98, !87, !99}
!99 = !DILocation(line: 23, column: 13, scope: !81)
!100 = !DILocation(line: 24, column: 9, scope: !82)
!101 = !DILocation(line: 20, column: 29, scope: !77)
!102 = !DILocation(line: 20, column: 9, scope: !77)
!103 = distinct !{!103, !79, !104}
!104 = !DILocation(line: 24, column: 9, scope: !73)
!105 = !DILocation(line: 25, column: 5, scope: !74)
!106 = !DILocation(line: 19, column: 26, scope: !69)
!107 = !DILocation(line: 19, column: 5, scope: !69)
!108 = distinct !{!108, !71, !109}
!109 = !DILocation(line: 25, column: 5, scope: !66)
!110 = !DILocation(line: 27, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !20, file: !8, line: 27, column: 5)
!112 = !DILocation(line: 27, column: 10, scope: !111)
!113 = !DILocation(line: 27, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !8, line: 27, column: 5)
!115 = !DILocation(line: 27, column: 19, scope: !114)
!116 = !DILocation(line: 27, column: 5, scope: !111)
!117 = !DILocation(line: 28, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !8, line: 28, column: 9)
!119 = distinct !DILexicalBlock(scope: !114, file: !8, line: 27, column: 29)
!120 = !DILocation(line: 28, column: 14, scope: !118)
!121 = !DILocation(line: 28, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !8, line: 28, column: 9)
!123 = !DILocation(line: 28, column: 23, scope: !122)
!124 = !DILocation(line: 28, column: 9, scope: !118)
!125 = !DILocalVariable(name: "temp", scope: !126, file: !8, line: 29, type: !11)
!126 = distinct !DILexicalBlock(scope: !122, file: !8, line: 28, column: 32)
!127 = !DILocation(line: 29, column: 17, scope: !126)
!128 = !DILocation(line: 29, column: 24, scope: !126)
!129 = !DILocation(line: 29, column: 28, scope: !126)
!130 = !DILocation(line: 29, column: 26, scope: !126)
!131 = !DILocation(line: 30, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !8, line: 30, column: 13)
!133 = !DILocation(line: 30, column: 18, scope: !132)
!134 = !DILocation(line: 30, column: 25, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !8, line: 30, column: 13)
!136 = !DILocation(line: 30, column: 27, scope: !135)
!137 = !DILocation(line: 30, column: 13, scope: !132)
!138 = !DILocation(line: 31, column: 27, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !8, line: 30, column: 36)
!140 = !DILocation(line: 31, column: 34, scope: !139)
!141 = !DILocation(line: 31, column: 32, scope: !139)
!142 = !DILocation(line: 31, column: 25, scope: !139)
!143 = !DILocation(line: 32, column: 13, scope: !139)
!144 = !DILocation(line: 30, column: 33, scope: !135)
!145 = !DILocation(line: 30, column: 13, scope: !135)
!146 = distinct !{!146, !137, !147}
!147 = !DILocation(line: 32, column: 13, scope: !132)
!148 = !DILocation(line: 33, column: 9, scope: !126)
!149 = !DILocation(line: 28, column: 29, scope: !122)
!150 = !DILocation(line: 28, column: 9, scope: !122)
!151 = distinct !{!151, !124, !152}
!152 = !DILocation(line: 33, column: 9, scope: !118)
!153 = !DILocation(line: 34, column: 5, scope: !119)
!154 = !DILocation(line: 27, column: 26, scope: !114)
!155 = !DILocation(line: 27, column: 5, scope: !114)
!156 = distinct !{!156, !116, !157}
!157 = !DILocation(line: 34, column: 5, scope: !111)
!158 = !DILocalVariable(name: "a", scope: !20, file: !8, line: 36, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DILocation(line: 36, column: 9, scope: !20)
!163 = !DILocalVariable(name: "b", scope: !20, file: !8, line: 37, type: !159)
!164 = !DILocation(line: 37, column: 9, scope: !20)
!165 = !DILocalVariable(name: "sum", scope: !20, file: !8, line: 38, type: !11)
!166 = !DILocation(line: 38, column: 9, scope: !20)
!167 = !DILocation(line: 39, column: 11, scope: !168)
!168 = distinct !DILexicalBlock(scope: !20, file: !8, line: 39, column: 5)
!169 = !DILocation(line: 39, column: 10, scope: !168)
!170 = !DILocation(line: 39, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !8, line: 39, column: 5)
!172 = !DILocation(line: 39, column: 15, scope: !171)
!173 = !DILocation(line: 39, column: 5, scope: !168)
!174 = !DILocation(line: 40, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !8, line: 39, column: 23)
!176 = !DILocation(line: 40, column: 11, scope: !175)
!177 = !DILocation(line: 40, column: 9, scope: !175)
!178 = !DILocation(line: 40, column: 13, scope: !175)
!179 = !DILocation(line: 41, column: 14, scope: !175)
!180 = !DILocation(line: 41, column: 15, scope: !175)
!181 = !DILocation(line: 41, column: 11, scope: !175)
!182 = !DILocation(line: 41, column: 9, scope: !175)
!183 = !DILocation(line: 41, column: 13, scope: !175)
!184 = !DILocation(line: 42, column: 5, scope: !175)
!185 = !DILocation(line: 39, column: 20, scope: !171)
!186 = !DILocation(line: 39, column: 5, scope: !171)
!187 = distinct !{!187, !173, !188}
!188 = !DILocation(line: 42, column: 5, scope: !168)
!189 = !DILocation(line: 43, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !20, file: !8, line: 43, column: 5)
!191 = !DILocation(line: 43, column: 10, scope: !190)
!192 = !DILocation(line: 43, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !8, line: 43, column: 5)
!194 = !DILocation(line: 43, column: 15, scope: !193)
!195 = !DILocation(line: 43, column: 5, scope: !190)
!196 = !DILocation(line: 44, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !8, line: 44, column: 9)
!198 = distinct !DILexicalBlock(scope: !193, file: !8, line: 43, column: 23)
!199 = !DILocation(line: 44, column: 14, scope: !197)
!200 = !DILocation(line: 44, column: 19, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !8, line: 44, column: 9)
!202 = !DILocation(line: 44, column: 20, scope: !201)
!203 = !DILocation(line: 44, column: 9, scope: !197)
!204 = !DILocation(line: 45, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !8, line: 44, column: 29)
!206 = !DILocation(line: 45, column: 21, scope: !205)
!207 = !DILocation(line: 45, column: 18, scope: !205)
!208 = !DILocation(line: 45, column: 29, scope: !205)
!209 = !DILocation(line: 45, column: 27, scope: !205)
!210 = !DILocation(line: 45, column: 25, scope: !205)
!211 = !DILocation(line: 45, column: 15, scope: !205)
!212 = !DILocation(line: 45, column: 13, scope: !205)
!213 = !DILocation(line: 45, column: 17, scope: !205)
!214 = !DILocation(line: 46, column: 9, scope: !205)
!215 = !DILocation(line: 44, column: 26, scope: !201)
!216 = !DILocation(line: 44, column: 9, scope: !201)
!217 = distinct !{!217, !203, !218}
!218 = !DILocation(line: 46, column: 9, scope: !197)
!219 = !DILocation(line: 47, column: 5, scope: !198)
!220 = !DILocation(line: 43, column: 20, scope: !193)
!221 = !DILocation(line: 43, column: 5, scope: !193)
!222 = distinct !{!222, !195, !223}
!223 = !DILocation(line: 47, column: 5, scope: !190)
!224 = !DILocation(line: 50, column: 29, scope: !20)
!225 = !DILocation(line: 50, column: 5, scope: !20)
!226 = !DILocation(line: 51, column: 29, scope: !20)
!227 = !DILocation(line: 51, column: 5, scope: !20)
!228 = !DILocation(line: 52, column: 29, scope: !20)
!229 = !DILocation(line: 52, column: 5, scope: !20)
!230 = !DILocation(line: 53, column: 1, scope: !20)
