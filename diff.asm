9,11c9,11
<     1004:	48 83 ec 08          	sub    $0x8,%rsp
<     1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
<     100f:	48 85 c0             	test   %rax,%rax
---
>     1004:	48 83 ec 08          	sub    rsp,0x8
>     1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
>     100f:	48 85 c0             	test   rax,rax
13,15c13,15
<     1014:	ff d0                	callq  *%rax
<     1016:	48 83 c4 08          	add    $0x8,%rsp
<     101a:	c3                   	retq   
---
>     1014:	ff d0                	call   rax
>     1016:	48 83 c4 08          	add    rsp,0x8
>     101a:	c3                   	ret    
20,22c20,22
<     1020:	ff 35 9a 2f 00 00    	pushq  0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
<     1026:	f2 ff 25 9b 2f 00 00 	bnd jmpq *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
<     102d:	0f 1f 00             	nopl   (%rax)
---
>     1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
>     1026:	f2 ff 25 9b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f9b]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
>     102d:	0f 1f 00             	nop    DWORD PTR [rax]
24,25c24,25
<     1034:	68 00 00 00 00       	pushq  $0x0
<     1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
---
>     1034:	68 00 00 00 00       	push   0x0
>     1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
32,33c32,33
<     1044:	f2 ff 25 ad 2f 00 00 	bnd jmpq *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
<     104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
---
>     1044:	f2 ff 25 ad 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fad]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
>     104b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
39,40c39,40
<     1054:	f2 ff 25 75 2f 00 00 	bnd jmpq *0x2f75(%rip)        # 3fd0 <puts@GLIBC_2.2.5>
<     105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
---
>     1054:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 3fd0 <puts@GLIBC_2.2.5>
>     105b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
46,56c46,56
<     1064:	31 ed                	xor    %ebp,%ebp
<     1066:	49 89 d1             	mov    %rdx,%r9
<     1069:	5e                   	pop    %rsi
<     106a:	48 89 e2             	mov    %rsp,%rdx
<     106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
<     1071:	50                   	push   %rax
<     1072:	54                   	push   %rsp
<     1073:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 11d0 <__libc_csu_fini>
<     107a:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 1160 <__libc_csu_init>
<     1081:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1149 <main>
<     1088:	ff 15 52 2f 00 00    	callq  *0x2f52(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
---
>     1064:	31 ed                	xor    ebp,ebp
>     1066:	49 89 d1             	mov    r9,rdx
>     1069:	5e                   	pop    rsi
>     106a:	48 89 e2             	mov    rdx,rsp
>     106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
>     1071:	50                   	push   rax
>     1072:	54                   	push   rsp
>     1073:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 11d0 <__libc_csu_fini>
>     107a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1160 <__libc_csu_init>
>     1081:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1149 <main>
>     1088:	ff 15 52 2f 00 00    	call   QWORD PTR [rip+0x2f52]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
61,63c61,63
<     1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
<     1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
<     109e:	48 39 f8             	cmp    %rdi,%rax
---
>     1090:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4010 <__TMC_END__>
>     1097:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4010 <__TMC_END__>
>     109e:	48 39 f8             	cmp    rax,rdi
65,66c65,66
<     10a3:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
<     10aa:	48 85 c0             	test   %rax,%rax
---
>     10a3:	48 8b 05 2e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f2e]        # 3fd8 <_ITM_deregisterTMCloneTable>
>     10aa:	48 85 c0             	test   rax,rax
68,71c68,71
<     10af:	ff e0                	jmpq   *%rax
<     10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
<     10b8:	c3                   	retq   
<     10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
---
>     10af:	ff e0                	jmp    rax
>     10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
>     10b8:	c3                   	ret    
>     10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
74,81c74,81
<     10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
<     10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
<     10ce:	48 29 fe             	sub    %rdi,%rsi
<     10d1:	48 89 f0             	mov    %rsi,%rax
<     10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
<     10d8:	48 c1 f8 03          	sar    $0x3,%rax
<     10dc:	48 01 c6             	add    %rax,%rsi
<     10df:	48 d1 fe             	sar    %rsi
---
>     10c0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4010 <__TMC_END__>
>     10c7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4010 <__TMC_END__>
>     10ce:	48 29 fe             	sub    rsi,rdi
>     10d1:	48 89 f0             	mov    rax,rsi
>     10d4:	48 c1 ee 3f          	shr    rsi,0x3f
>     10d8:	48 c1 f8 03          	sar    rax,0x3
>     10dc:	48 01 c6             	add    rsi,rax
>     10df:	48 d1 fe             	sar    rsi,1
83,84c83,84
<     10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
<     10eb:	48 85 c0             	test   %rax,%rax
---
>     10e4:	48 8b 05 05 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f05]        # 3ff0 <_ITM_registerTMCloneTable>
>     10eb:	48 85 c0             	test   rax,rax
86,89c86,89
<     10f0:	ff e0                	jmpq   *%rax
<     10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
<     10f8:	c3                   	retq   
<     10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
---
>     10f0:	ff e0                	jmp    rax
>     10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
>     10f8:	c3                   	ret    
>     10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
93c93
<     1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
---
>     1104:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4010 <__TMC_END__>
95,96c95,96
<     110d:	55                   	push   %rbp
<     110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
---
>     110d:	55                   	push   rbp
>     110e:	48 83 3d e2 2e 00 00 	cmp    QWORD PTR [rip+0x2ee2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
98c98
<     1116:	48 89 e5             	mov    %rsp,%rbp
---
>     1116:	48 89 e5             	mov    rbp,rsp
100,108c100,108
<     111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
<     1122:	e8 19 ff ff ff       	callq  1040 <__cxa_finalize@plt>
<     1127:	e8 64 ff ff ff       	callq  1090 <deregister_tm_clones>
<     112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
<     1133:	5d                   	pop    %rbp
<     1134:	c3                   	retq   
<     1135:	0f 1f 00             	nopl   (%rax)
<     1138:	c3                   	retq   
<     1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
---
>     111b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4008 <__dso_handle>
>     1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
>     1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
>     112c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4010 <__TMC_END__>
>     1133:	5d                   	pop    rbp
>     1134:	c3                   	ret    
>     1135:	0f 1f 00             	nop    DWORD PTR [rax]
>     1138:	c3                   	ret    
>     1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
112c112
<     1144:	e9 77 ff ff ff       	jmpq   10c0 <register_tm_clones>
---
>     1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>
116,119c116,119
<     114d:	55                   	push   %rbp
<     114e:	48 89 e5             	mov    %rsp,%rbp
<     1151:	48 8d 3d ac 0e 00 00 	lea    0xeac(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
<     1158:	e8 f3 fe ff ff       	callq  1050 <puts@plt>
---
>     114d:	55                   	push   rbp
>     114e:	48 89 e5             	mov    rbp,rsp
>     1151:	48 8d 3d ac 0e 00 00 	lea    rdi,[rip+0xeac]        # 2004 <_IO_stdin_used+0x4>
>     1158:	e8 f3 fe ff ff       	call   1050 <puts@plt>
121,122c121,122
<     115e:	5d                   	pop    %rbp
<     115f:	c3                   	retq   
---
>     115e:	5d                   	pop    rbp
>     115f:	c3                   	ret    
126,140c126,140
<     1164:	41 57                	push   %r15
<     1166:	4c 8d 3d 4b 2c 00 00 	lea    0x2c4b(%rip),%r15        # 3db8 <__frame_dummy_init_array_entry>
<     116d:	41 56                	push   %r14
<     116f:	49 89 d6             	mov    %rdx,%r14
<     1172:	41 55                	push   %r13
<     1174:	49 89 f5             	mov    %rsi,%r13
<     1177:	41 54                	push   %r12
<     1179:	41 89 fc             	mov    %edi,%r12d
<     117c:	55                   	push   %rbp
<     117d:	48 8d 2d 3c 2c 00 00 	lea    0x2c3c(%rip),%rbp        # 3dc0 <__do_global_dtors_aux_fini_array_entry>
<     1184:	53                   	push   %rbx
<     1185:	4c 29 fd             	sub    %r15,%rbp
<     1188:	48 83 ec 08          	sub    $0x8,%rsp
<     118c:	e8 6f fe ff ff       	callq  1000 <_init>
<     1191:	48 c1 fd 03          	sar    $0x3,%rbp
---
>     1164:	41 57                	push   r15
>     1166:	4c 8d 3d 4b 2c 00 00 	lea    r15,[rip+0x2c4b]        # 3db8 <__frame_dummy_init_array_entry>
>     116d:	41 56                	push   r14
>     116f:	49 89 d6             	mov    r14,rdx
>     1172:	41 55                	push   r13
>     1174:	49 89 f5             	mov    r13,rsi
>     1177:	41 54                	push   r12
>     1179:	41 89 fc             	mov    r12d,edi
>     117c:	55                   	push   rbp
>     117d:	48 8d 2d 3c 2c 00 00 	lea    rbp,[rip+0x2c3c]        # 3dc0 <__do_global_dtors_aux_fini_array_entry>
>     1184:	53                   	push   rbx
>     1185:	4c 29 fd             	sub    rbp,r15
>     1188:	48 83 ec 08          	sub    rsp,0x8
>     118c:	e8 6f fe ff ff       	call   1000 <_init>
>     1191:	48 c1 fd 03          	sar    rbp,0x3
142,149c142,149
<     1197:	31 db                	xor    %ebx,%ebx
<     1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
<     11a0:	4c 89 f2             	mov    %r14,%rdx
<     11a3:	4c 89 ee             	mov    %r13,%rsi
<     11a6:	44 89 e7             	mov    %r12d,%edi
<     11a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
<     11ad:	48 83 c3 01          	add    $0x1,%rbx
<     11b1:	48 39 dd             	cmp    %rbx,%rbp
---
>     1197:	31 db                	xor    ebx,ebx
>     1199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
>     11a0:	4c 89 f2             	mov    rdx,r14
>     11a3:	4c 89 ee             	mov    rsi,r13
>     11a6:	44 89 e7             	mov    edi,r12d
>     11a9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
>     11ad:	48 83 c3 01          	add    rbx,0x1
>     11b1:	48 39 dd             	cmp    rbp,rbx
151,159c151,159
<     11b6:	48 83 c4 08          	add    $0x8,%rsp
<     11ba:	5b                   	pop    %rbx
<     11bb:	5d                   	pop    %rbp
<     11bc:	41 5c                	pop    %r12
<     11be:	41 5d                	pop    %r13
<     11c0:	41 5e                	pop    %r14
<     11c2:	41 5f                	pop    %r15
<     11c4:	c3                   	retq   
<     11c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
---
>     11b6:	48 83 c4 08          	add    rsp,0x8
>     11ba:	5b                   	pop    rbx
>     11bb:	5d                   	pop    rbp
>     11bc:	41 5c                	pop    r12
>     11be:	41 5d                	pop    r13
>     11c0:	41 5e                	pop    r14
>     11c2:	41 5f                	pop    r15
>     11c4:	c3                   	ret    
>     11c5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
164c164
<     11d4:	c3                   	retq   
---
>     11d4:	c3                   	ret    
170,172c170,172
<     11dc:	48 83 ec 08          	sub    $0x8,%rsp
<     11e0:	48 83 c4 08          	add    $0x8,%rsp
<     11e4:	c3                   	retq   
---
>     11dc:	48 83 ec 08          	sub    rsp,0x8
>     11e0:	48 83 c4 08          	add    rsp,0x8
>     11e4:	c3 
