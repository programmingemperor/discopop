; ModuleID = '/home/raynard/discopop/work_tests/temp_simd/test.c'
source_filename = "/home/raynard/discopop/work_tests/temp_simd/test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc(i32 %a, i32 %b) #0 !dbg !7 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !12, metadata !DIExpression()), !dbg !13
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* %a.addr, align 4, !dbg !16
  %1 = load i32, i32* %b.addr, align 4, !dbg !17
  %add = add nsw i32 %0, %1, !dbg !18
  ret i32 %add, !dbg !19
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
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
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %result, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %result2, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %result2, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %result3, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %result3, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4, !dbg !38
  %cmp = icmp slt i32 %0, 10, !dbg !40
  br i1 %cmp, label %for.body, label %for.end6, !dbg !41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !42
  br label %for.cond1, !dbg !45

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !46
  %cmp2 = icmp slt i32 %1, 5, !dbg !48
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !49

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4, !dbg !50
  %3 = load i32, i32* %j, align 4, !dbg !52
  %call = call i32 @calc(i32 %2, i32 %3), !dbg !53
  store i32 %call, i32* %result, align 4, !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4, !dbg !56
  %inc = add nsw i32 %4, 1, !dbg !56
  store i32 %inc, i32* %j, align 4, !dbg !56
  br label %for.cond1, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  br label %for.inc4, !dbg !60

for.inc4:                                         ; preds = %for.end
  %5 = load i32, i32* %i, align 4, !dbg !61
  %inc5 = add nsw i32 %5, 1, !dbg !61
  store i32 %inc5, i32* %i, align 4, !dbg !61
  br label %for.cond, !dbg !62, !llvm.loop !63

for.end6:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !65
  br label %for.cond7, !dbg !67

for.cond7:                                        ; preds = %for.inc23, %for.end6
  %6 = load i32, i32* %i, align 4, !dbg !68
  %cmp8 = icmp slt i32 %6, 10, !dbg !70
  br i1 %cmp8, label %for.body9, label %for.end25, !dbg !71

for.body9:                                        ; preds = %for.cond7
  store i32 0, i32* %j, align 4, !dbg !72
  br label %for.cond10, !dbg !75

for.cond10:                                       ; preds = %for.inc20, %for.body9
  %7 = load i32, i32* %j, align 4, !dbg !76
  %cmp11 = icmp slt i32 %7, 5, !dbg !78
  br i1 %cmp11, label %for.body12, label %for.end22, !dbg !79

for.body12:                                       ; preds = %for.cond10
  store i32 0, i32* %k, align 4, !dbg !80
  br label %for.cond13, !dbg !83

for.cond13:                                       ; preds = %for.inc17, %for.body12
  %8 = load i32, i32* %k, align 4, !dbg !84
  %cmp14 = icmp slt i32 %8, 7, !dbg !86
  br i1 %cmp14, label %for.body15, label %for.end19, !dbg !87

for.body15:                                       ; preds = %for.cond13
  %9 = load i32, i32* %i, align 4, !dbg !88
  %10 = load i32, i32* %j, align 4, !dbg !90
  %add = add nsw i32 %9, %10, !dbg !91
  %11 = load i32, i32* %k, align 4, !dbg !92
  %add16 = add nsw i32 %add, %11, !dbg !93
  store i32 %add16, i32* %result2, align 4, !dbg !94
  br label %for.inc17, !dbg !95

for.inc17:                                        ; preds = %for.body15
  %12 = load i32, i32* %k, align 4, !dbg !96
  %inc18 = add nsw i32 %12, 1, !dbg !96
  store i32 %inc18, i32* %k, align 4, !dbg !96
  br label %for.cond13, !dbg !97, !llvm.loop !98

for.end19:                                        ; preds = %for.cond13
  br label %for.inc20, !dbg !100

for.inc20:                                        ; preds = %for.end19
  %13 = load i32, i32* %j, align 4, !dbg !101
  %inc21 = add nsw i32 %13, 1, !dbg !101
  store i32 %inc21, i32* %j, align 4, !dbg !101
  br label %for.cond10, !dbg !102, !llvm.loop !103

for.end22:                                        ; preds = %for.cond10
  br label %for.inc23, !dbg !105

for.inc23:                                        ; preds = %for.end22
  %14 = load i32, i32* %i, align 4, !dbg !106
  %inc24 = add nsw i32 %14, 1, !dbg !106
  store i32 %inc24, i32* %i, align 4, !dbg !106
  br label %for.cond7, !dbg !107, !llvm.loop !108

for.end25:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4, !dbg !110
  br label %for.cond26, !dbg !112

for.cond26:                                       ; preds = %for.inc43, %for.end25
  %15 = load i32, i32* %i, align 4, !dbg !113
  %cmp27 = icmp slt i32 %15, 10, !dbg !115
  br i1 %cmp27, label %for.body28, label %for.end45, !dbg !116

for.body28:                                       ; preds = %for.cond26
  store i32 0, i32* %j, align 4, !dbg !117
  br label %for.cond29, !dbg !120

for.cond29:                                       ; preds = %for.inc40, %for.body28
  %16 = load i32, i32* %j, align 4, !dbg !121
  %cmp30 = icmp slt i32 %16, 5, !dbg !123
  br i1 %cmp30, label %for.body31, label %for.end42, !dbg !124

for.body31:                                       ; preds = %for.cond29
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !125, metadata !DIExpression()), !dbg !127
  %17 = load i32, i32* %i, align 4, !dbg !128
  %18 = load i32, i32* %j, align 4, !dbg !129
  %add32 = add nsw i32 %17, %18, !dbg !130
  store i32 %add32, i32* %temp, align 4, !dbg !127
  store i32 0, i32* %k, align 4, !dbg !131
  br label %for.cond33, !dbg !133

for.cond33:                                       ; preds = %for.inc37, %for.body31
  %19 = load i32, i32* %k, align 4, !dbg !134
  %cmp34 = icmp slt i32 %19, 7, !dbg !136
  br i1 %cmp34, label %for.body35, label %for.end39, !dbg !137

for.body35:                                       ; preds = %for.cond33
  %20 = load i32, i32* %temp, align 4, !dbg !138
  %21 = load i32, i32* %k, align 4, !dbg !140
  %add36 = add nsw i32 %20, %21, !dbg !141
  store i32 %add36, i32* %result3, align 4, !dbg !142
  br label %for.inc37, !dbg !143

for.inc37:                                        ; preds = %for.body35
  %22 = load i32, i32* %k, align 4, !dbg !144
  %inc38 = add nsw i32 %22, 1, !dbg !144
  store i32 %inc38, i32* %k, align 4, !dbg !144
  br label %for.cond33, !dbg !145, !llvm.loop !146

for.end39:                                        ; preds = %for.cond33
  br label %for.inc40, !dbg !148

for.inc40:                                        ; preds = %for.end39
  %23 = load i32, i32* %j, align 4, !dbg !149
  %inc41 = add nsw i32 %23, 1, !dbg !149
  store i32 %inc41, i32* %j, align 4, !dbg !149
  br label %for.cond29, !dbg !150, !llvm.loop !151

for.end42:                                        ; preds = %for.cond29
  br label %for.inc43, !dbg !153

for.inc43:                                        ; preds = %for.end42
  %24 = load i32, i32* %i, align 4, !dbg !154
  %inc44 = add nsw i32 %24, 1, !dbg !154
  store i32 %inc44, i32* %i, align 4, !dbg !154
  br label %for.cond26, !dbg !155, !llvm.loop !156

for.end45:                                        ; preds = %for.cond26
  call void @llvm.dbg.declare(metadata [10 x i32]* %a, metadata !158, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [10 x i32]* %b, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !165, metadata !DIExpression()), !dbg !166
  store i32 0, i32* %sum, align 4, !dbg !166
  store i32 0, i32* %i, align 4, !dbg !167
  br label %for.cond46, !dbg !169

for.cond46:                                       ; preds = %for.inc52, %for.end45
  %25 = load i32, i32* %i, align 4, !dbg !170
  %cmp47 = icmp slt i32 %25, 10, !dbg !172
  br i1 %cmp47, label %for.body48, label %for.end54, !dbg !173

for.body48:                                       ; preds = %for.cond46
  %26 = load i32, i32* %i, align 4, !dbg !174
  %27 = load i32, i32* %i, align 4, !dbg !176
  %idxprom = sext i32 %27 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom, !dbg !177
  store i32 %26, i32* %arrayidx, align 4, !dbg !178
  %28 = load i32, i32* %i, align 4, !dbg !179
  %add49 = add nsw i32 %28, 1, !dbg !180
  %29 = load i32, i32* %i, align 4, !dbg !181
  %idxprom50 = sext i32 %29 to i64, !dbg !182
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 %idxprom50, !dbg !182
  store i32 %add49, i32* %arrayidx51, align 4, !dbg !183
  br label %for.inc52, !dbg !184

for.inc52:                                        ; preds = %for.body48
  %30 = load i32, i32* %i, align 4, !dbg !185
  %inc53 = add nsw i32 %30, 1, !dbg !185
  store i32 %inc53, i32* %i, align 4, !dbg !185
  br label %for.cond46, !dbg !186, !llvm.loop !187

for.end54:                                        ; preds = %for.cond46
  store i32 0, i32* %i, align 4, !dbg !189
  br label %for.cond55, !dbg !191

for.cond55:                                       ; preds = %for.inc72, %for.end54
  %31 = load i32, i32* %i, align 4, !dbg !192
  %cmp56 = icmp slt i32 %31, 10, !dbg !194
  br i1 %cmp56, label %for.body57, label %for.end74, !dbg !195

for.body57:                                       ; preds = %for.cond55
  store i32 0, i32* %j, align 4, !dbg !196
  br label %for.cond58, !dbg !199

for.cond58:                                       ; preds = %for.inc69, %for.body57
  %32 = load i32, i32* %j, align 4, !dbg !200
  %cmp59 = icmp slt i32 %32, 10, !dbg !202
  br i1 %cmp59, label %for.body60, label %for.end71, !dbg !203

for.body60:                                       ; preds = %for.cond58
  %33 = load i32, i32* %j, align 4, !dbg !204
  %add61 = add nsw i32 %33, 1, !dbg !206
  %idxprom62 = sext i32 %add61 to i64, !dbg !207
  %arrayidx63 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom62, !dbg !207
  %34 = load i32, i32* %arrayidx63, align 4, !dbg !207
  %35 = load i32, i32* %i, align 4, !dbg !208
  %idxprom64 = sext i32 %35 to i64, !dbg !209
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %b, i64 0, i64 %idxprom64, !dbg !209
  %36 = load i32, i32* %arrayidx65, align 4, !dbg !209
  %add66 = add nsw i32 %34, %36, !dbg !210
  %37 = load i32, i32* %j, align 4, !dbg !211
  %idxprom67 = sext i32 %37 to i64, !dbg !212
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom67, !dbg !212
  store i32 %add66, i32* %arrayidx68, align 4, !dbg !213
  br label %for.inc69, !dbg !214

for.inc69:                                        ; preds = %for.body60
  %38 = load i32, i32* %j, align 4, !dbg !215
  %inc70 = add nsw i32 %38, 1, !dbg !215
  store i32 %inc70, i32* %j, align 4, !dbg !215
  br label %for.cond58, !dbg !216, !llvm.loop !217

for.end71:                                        ; preds = %for.cond58
  br label %for.inc72, !dbg !219

for.inc72:                                        ; preds = %for.end71
  %39 = load i32, i32* %i, align 4, !dbg !220
  %inc73 = add nsw i32 %39, 1, !dbg !220
  store i32 %inc73, i32* %i, align 4, !dbg !220
  br label %for.cond55, !dbg !221, !llvm.loop !222

for.end74:                                        ; preds = %for.cond55
  %40 = load i32, i32* %result, align 4, !dbg !224
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %40), !dbg !225
  %41 = load i32, i32* %result2, align 4, !dbg !226
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %41), !dbg !227
  %42 = load i32, i32* %result3, align 4, !dbg !228
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %42), !dbg !229
  %43 = load i32, i32* %retval, align 4, !dbg !230
  ret i32 %43, !dbg !230
}

declare dso_local i32 @printf(i8*, ...) #2

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
