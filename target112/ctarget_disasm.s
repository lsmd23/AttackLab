
./ctarget：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    ebp,ebp
  808002:	49 89 d1             	mov    r9,rdx
  808005:	5e                   	pop    rsi
  808006:	48 89 e2             	mov    rdx,rsp
  808009:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  80800d:	50                   	push   rax
  80800e:	54                   	push   rsp
  80800f:	49 c7 c0 b0 a0 80 00 	mov    r8,0x80a0b0
  808016:	48 c7 c1 40 a0 80 00 	mov    rcx,0x80a040
  80801d:	48 c7 c7 81 82 80 00 	mov    rdi,0x808281
  808024:	ff 15 c6 3f 20 00    	call   QWORD PTR [rip+0x203fc6]        # a0bff0 <__libc_start_main@GLIBC_2.2.5>
  80802a:	f4                   	hlt    
  80802b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000808030 <_dl_relocate_static_pie>:
  808030:	f3 c3                	repz ret 
  808032:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  808039:	00 00 00 
  80803c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000808040 <deregister_tm_clones>:
  808040:	55                   	push   rbp
  808041:	b8 98 c4 a0 00       	mov    eax,0xa0c498
  808046:	48 3d 98 c4 a0 00    	cmp    rax,0xa0c498
  80804c:	48 89 e5             	mov    rbp,rsp
  80804f:	74 17                	je     808068 <deregister_tm_clones+0x28>
  808051:	b8 00 00 00 00       	mov    eax,0x0
  808056:	48 85 c0             	test   rax,rax
  808059:	74 0d                	je     808068 <deregister_tm_clones+0x28>
  80805b:	5d                   	pop    rbp
  80805c:	bf 98 c4 a0 00       	mov    edi,0xa0c498
  808061:	ff e0                	jmp    rax
  808063:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  808068:	5d                   	pop    rbp
  808069:	c3                   	ret    
  80806a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000808070 <register_tm_clones>:
  808070:	be 98 c4 a0 00       	mov    esi,0xa0c498
  808075:	55                   	push   rbp
  808076:	48 81 ee 98 c4 a0 00 	sub    rsi,0xa0c498
  80807d:	48 89 e5             	mov    rbp,rsp
  808080:	48 c1 fe 03          	sar    rsi,0x3
  808084:	48 89 f0             	mov    rax,rsi
  808087:	48 c1 e8 3f          	shr    rax,0x3f
  80808b:	48 01 c6             	add    rsi,rax
  80808e:	48 d1 fe             	sar    rsi,1
  808091:	74 15                	je     8080a8 <register_tm_clones+0x38>
  808093:	b8 00 00 00 00       	mov    eax,0x0
  808098:	48 85 c0             	test   rax,rax
  80809b:	74 0b                	je     8080a8 <register_tm_clones+0x38>
  80809d:	5d                   	pop    rbp
  80809e:	bf 98 c4 a0 00       	mov    edi,0xa0c498
  8080a3:	ff e0                	jmp    rax
  8080a5:	0f 1f 00             	nop    DWORD PTR [rax]
  8080a8:	5d                   	pop    rbp
  8080a9:	c3                   	ret    
  8080aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000008080b0 <__do_global_dtors_aux>:
  8080b0:	80 3d 11 44 20 00 00 	cmp    BYTE PTR [rip+0x204411],0x0        # a0c4c8 <completed.7698>
  8080b7:	75 17                	jne    8080d0 <__do_global_dtors_aux+0x20>
  8080b9:	55                   	push   rbp
  8080ba:	48 89 e5             	mov    rbp,rsp
  8080bd:	e8 7e ff ff ff       	call   808040 <deregister_tm_clones>
  8080c2:	c6 05 ff 43 20 00 01 	mov    BYTE PTR [rip+0x2043ff],0x1        # a0c4c8 <completed.7698>
  8080c9:	5d                   	pop    rbp
  8080ca:	c3                   	ret    
  8080cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  8080d0:	f3 c3                	repz ret 
  8080d2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8080d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  8080dd:	00 00 00 

00000000008080e0 <frame_dummy>:
  8080e0:	55                   	push   rbp
  8080e1:	48 89 e5             	mov    rbp,rsp
  8080e4:	5d                   	pop    rbp
  8080e5:	eb 89                	jmp    808070 <register_tm_clones>

00000000008080e7 <usage>:
  8080e7:	48 83 ec 08          	sub    rsp,0x8
  8080eb:	48 89 fa             	mov    rdx,rdi
  8080ee:	83 3d 13 44 20 00 00 	cmp    DWORD PTR [rip+0x204413],0x0        # a0c508 <is_checker>
  8080f5:	74 50                	je     808147 <usage+0x60>
  8080f7:	48 8d 35 ca 1f 00 00 	lea    rsi,[rip+0x1fca]        # 80a0c8 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    edi,0x1
  808103:	b8 00 00 00 00       	mov    eax,0x0
  808108:	e8 d3 8c bf ff       	call   400de0 <__printf_chk@plt>
  80810d:	48 8d 3d ec 1f 00 00 	lea    rdi,[rip+0x1fec]        # 80a100 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	call   400cc0 <puts@plt>
  808119:	48 8d 3d e0 20 00 00 	lea    rdi,[rip+0x20e0]        # 80a200 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	call   400cc0 <puts@plt>
  808125:	48 8d 3d fc 1f 00 00 	lea    rdi,[rip+0x1ffc]        # 80a128 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	call   400cc0 <puts@plt>
  808131:	48 8d 3d e2 20 00 00 	lea    rdi,[rip+0x20e2]        # 80a21a <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	call   400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    edi,0x0
  808142:	e8 d9 8c bf ff       	call   400e20 <exit@plt>
  808147:	48 8d 35 e8 20 00 00 	lea    rsi,[rip+0x20e8]        # 80a236 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    edi,0x1
  808153:	b8 00 00 00 00       	mov    eax,0x0
  808158:	e8 83 8c bf ff       	call   400de0 <__printf_chk@plt>
  80815d:	48 8d 3d ec 1f 00 00 	lea    rdi,[rip+0x1fec]        # 80a150 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	call   400cc0 <puts@plt>
  808169:	48 8d 3d 08 20 00 00 	lea    rdi,[rip+0x2008]        # 80a178 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	call   400cc0 <puts@plt>
  808175:	48 8d 3d d8 20 00 00 	lea    rdi,[rip+0x20d8]        # 80a254 <_IO_stdin_used+0x194>
  80817c:	e8 3f 8b bf ff       	call   400cc0 <puts@plt>
  808181:	eb ba                	jmp    80813d <usage+0x56>

0000000000808183 <initialize_target>:
  808183:	55                   	push   rbp
  808184:	53                   	push   rbx
  808185:	48 81 ec 18 20 00 00 	sub    rsp,0x2018
  80818c:	89 f5                	mov    ebp,esi
  80818e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  808195:	00 00 
  808197:	48 89 84 24 08 20 00 	mov    QWORD PTR [rsp+0x2008],rax
  80819e:	00 
  80819f:	31 c0                	xor    eax,eax
  8081a1:	89 3d 51 43 20 00    	mov    DWORD PTR [rip+0x204351],edi        # a0c4f8 <check_level>
  8081a7:	8b 3d 83 3f 20 00    	mov    edi,DWORD PTR [rip+0x203f83]        # a0c130 <target_id>
  8081ad:	e8 62 1e 00 00       	call   80a014 <gencookie>
  8081b2:	89 05 4c 43 20 00    	mov    DWORD PTR [rip+0x20434c],eax        # a0c504 <cookie>
  8081b8:	89 c7                	mov    edi,eax
  8081ba:	e8 55 1e 00 00       	call   80a014 <gencookie>
  8081bf:	89 05 3b 43 20 00    	mov    DWORD PTR [rip+0x20433b],eax        # a0c500 <authkey>
  8081c5:	8b 05 65 3f 20 00    	mov    eax,DWORD PTR [rip+0x203f65]        # a0c130 <target_id>
  8081cb:	8d 78 01             	lea    edi,[rax+0x1]
  8081ce:	e8 bd 8a bf ff       	call   400c90 <srandom@plt>
  8081d3:	e8 c8 8b bf ff       	call   400da0 <random@plt>
  8081d8:	89 c7                	mov    edi,eax
  8081da:	e8 8d 02 00 00       	call   80846c <scramble>
  8081df:	89 c3                	mov    ebx,eax
  8081e1:	85 ed                	test   ebp,ebp
  8081e3:	75 50                	jne    808235 <initialize_target+0xb2>
  8081e5:	b8 00 00 00 00       	mov    eax,0x0
  8081ea:	01 d8                	add    eax,ebx
  8081ec:	0f b7 c0             	movzx  eax,ax
  8081ef:	8d 04 c5 00 01 00 00 	lea    eax,[rax*8+0x100]
  8081f6:	89 c0                	mov    eax,eax
  8081f8:	48 89 05 91 42 20 00 	mov    QWORD PTR [rip+0x204291],rax        # a0c490 <buf_offset>
  8081ff:	c6 05 2a 4f 20 00 63 	mov    BYTE PTR [rip+0x204f2a],0x63        # a0d130 <target_prefix>
  808206:	83 3d 7b 42 20 00 00 	cmp    DWORD PTR [rip+0x20427b],0x0        # a0c488 <notify>
  80820d:	74 09                	je     808218 <initialize_target+0x95>
  80820f:	83 3d f2 42 20 00 00 	cmp    DWORD PTR [rip+0x2042f2],0x0        # a0c508 <is_checker>
  808216:	74 35                	je     80824d <initialize_target+0xca>
  808218:	48 8b 84 24 08 20 00 	mov    rax,QWORD PTR [rsp+0x2008]
  80821f:	00 
  808220:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  808227:	00 00 
  808229:	75 51                	jne    80827c <initialize_target+0xf9>
  80822b:	48 81 c4 18 20 00 00 	add    rsp,0x2018
  808232:	5b                   	pop    rbx
  808233:	5d                   	pop    rbp
  808234:	c3                   	ret    
  808235:	bf 00 00 00 00       	mov    edi,0x0
  80823a:	e8 51 8b bf ff       	call   400d90 <time@plt>
  80823f:	89 c7                	mov    edi,eax
  808241:	e8 4a 8a bf ff       	call   400c90 <srandom@plt>
  808246:	e8 55 8b bf ff       	call   400da0 <random@plt>
  80824b:	eb 9d                	jmp    8081ea <initialize_target+0x67>
  80824d:	48 89 e7             	mov    rdi,rsp
  808250:	e8 ef 1a 00 00       	call   809d44 <init_driver>
  808255:	85 c0                	test   eax,eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    rdx,rsp
  80825c:	48 8d 35 45 1f 00 00 	lea    rsi,[rip+0x1f45]        # 80a1a8 <_IO_stdin_used+0xe8>
  808263:	bf 01 00 00 00       	mov    edi,0x1
  808268:	b8 00 00 00 00       	mov    eax,0x0
  80826d:	e8 6e 8b bf ff       	call   400de0 <__printf_chk@plt>
  808272:	bf 08 00 00 00       	mov    edi,0x8
  808277:	e8 a4 8b bf ff       	call   400e20 <exit@plt>
  80827c:	e8 5f 8a bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808281 <main>:
  808281:	41 56                	push   r14
  808283:	41 55                	push   r13
  808285:	41 54                	push   r12
  808287:	55                   	push   rbp
  808288:	53                   	push   rbx
  808289:	41 89 fc             	mov    r12d,edi
  80828c:	48 89 f3             	mov    rbx,rsi
  80828f:	48 c7 c6 4b 90 80 00 	mov    rsi,0x80904b
  808296:	bf 0b 00 00 00       	mov    edi,0xb
  80829b:	e8 a0 8a bf ff       	call   400d40 <signal@plt>
  8082a0:	48 c7 c6 f7 8f 80 00 	mov    rsi,0x808ff7
  8082a7:	bf 07 00 00 00       	mov    edi,0x7
  8082ac:	e8 8f 8a bf ff       	call   400d40 <signal@plt>
  8082b1:	48 c7 c6 9f 90 80 00 	mov    rsi,0x80909f
  8082b8:	bf 04 00 00 00       	mov    edi,0x4
  8082bd:	e8 7e 8a bf ff       	call   400d40 <signal@plt>
  8082c2:	83 3d 3f 42 20 00 00 	cmp    DWORD PTR [rip+0x20423f],0x0        # a0c508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d 9b 1f 00 00 	lea    rbp,[rip+0x1f9b]        # 80a26d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 41 20 00 	mov    rax,QWORD PTR [rip+0x2041c7]        # a0c4a0 <stdin@@GLIBC_2.2.5>
  8082d9:	48 89 05 10 42 20 00 	mov    QWORD PTR [rip+0x204210],rax        # a0c4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    r13d,0x0
  8082e6:	41 be 00 00 00 00    	mov    r14d,0x0
  8082ec:	e9 8d 00 00 00       	jmp    80837e <main+0xfd>
  8082f1:	48 c7 c6 f3 90 80 00 	mov    rsi,0x8090f3
  8082f8:	bf 0e 00 00 00       	mov    edi,0xe
  8082fd:	e8 3e 8a bf ff       	call   400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    edi,0x5
  808307:	e8 04 8a bf ff       	call   400d10 <alarm@plt>
  80830c:	48 8d 2d 5f 1f 00 00 	lea    rbp,[rip+0x1f5f]        # 80a272 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  808318:	e8 ca fd ff ff       	call   8080e7 <usage>
  80831d:	48 8d 35 c1 21 00 00 	lea    rsi,[rip+0x21c1]        # 80a4e5 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 41 20 00 	mov    rdi,QWORD PTR [rip+0x20417d]        # a0c4a8 <optarg@@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	call   400df0 <fopen@plt>
  808330:	48 89 05 b9 41 20 00 	mov    QWORD PTR [rip+0x2041b9],rax        # a0c4f0 <infile>
  808337:	48 85 c0             	test   rax,rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 41 20 00 	mov    rcx,QWORD PTR [rip+0x204165]        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808343:	48 8d 15 30 1f 00 00 	lea    rdx,[rip+0x1f30]        # 80a27a <_IO_stdin_used+0x1ba>
  80834a:	be 01 00 00 00       	mov    esi,0x1
  80834f:	48 8b 3d 6a 41 20 00 	mov    rdi,QWORD PTR [rip+0x20416a]        # a0c4c0 <stderr@@GLIBC_2.2.5>
  808356:	e8 e5 8a bf ff       	call   400e40 <__fprintf_chk@plt>
  80835b:	b8 01 00 00 00       	mov    eax,0x1
  808360:	e9 d9 00 00 00       	jmp    80843e <main+0x1bd>
  808365:	ba 10 00 00 00       	mov    edx,0x10
  80836a:	be 00 00 00 00       	mov    esi,0x0
  80836f:	48 8b 3d 32 41 20 00 	mov    rdi,QWORD PTR [rip+0x204132]        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808376:	e8 95 8a bf ff       	call   400e10 <strtoul@plt>
  80837b:	41 89 c6             	mov    r14d,eax
  80837e:	48 89 ea             	mov    rdx,rbp
  808381:	48 89 de             	mov    rsi,rbx
  808384:	44 89 e7             	mov    edi,r12d
  808387:	e8 74 8a bf ff       	call   400e00 <getopt@plt>
  80838c:	3c ff                	cmp    al,0xff
  80838e:	74 62                	je     8083f2 <main+0x171>
  808390:	0f be d0             	movsx  edx,al
  808393:	83 e8 61             	sub    eax,0x61
  808396:	3c 10                	cmp    al,0x10
  808398:	77 3a                	ja     8083d4 <main+0x153>
  80839a:	0f b6 c0             	movzx  eax,al
  80839d:	48 8d 0d 14 1f 00 00 	lea    rcx,[rip+0x1f14]        # 80a2b8 <_IO_stdin_used+0x1f8>
  8083a4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  8083a8:	48 01 c8             	add    rax,rcx
  8083ab:	ff e0                	jmp    rax
  8083ad:	ba 0a 00 00 00       	mov    edx,0xa
  8083b2:	be 00 00 00 00       	mov    esi,0x0
  8083b7:	48 8b 3d ea 40 20 00 	mov    rdi,QWORD PTR [rip+0x2040ea]        # a0c4a8 <optarg@@GLIBC_2.2.5>
  8083be:	e8 ad 89 bf ff       	call   400d70 <strtol@plt>
  8083c3:	41 89 c5             	mov    r13d,eax
  8083c6:	eb b6                	jmp    80837e <main+0xfd>
  8083c8:	c7 05 b6 40 20 00 00 	mov    DWORD PTR [rip+0x2040b6],0x0        # a0c488 <notify>
  8083cf:	00 00 00 
  8083d2:	eb aa                	jmp    80837e <main+0xfd>
  8083d4:	48 8d 35 bc 1e 00 00 	lea    rsi,[rip+0x1ebc]        # 80a297 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    edi,0x1
  8083e0:	b8 00 00 00 00       	mov    eax,0x0
  8083e5:	e8 f6 89 bf ff       	call   400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  8083ed:	e8 f5 fc ff ff       	call   8080e7 <usage>
  8083f2:	be 00 00 00 00       	mov    esi,0x0
  8083f7:	44 89 ef             	mov    edi,r13d
  8083fa:	e8 84 fd ff ff       	call   808183 <initialize_target>
  8083ff:	83 3d 02 41 20 00 00 	cmp    DWORD PTR [rip+0x204102],0x0        # a0c508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 40 20 00 	cmp    DWORD PTR [rip+0x2040f1],r14d        # a0c500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 40 20 00    	mov    edx,DWORD PTR [rip+0x2040ed]        # a0c504 <cookie>
  808417:	48 8d 35 8c 1e 00 00 	lea    rsi,[rip+0x1e8c]        # 80a2aa <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    edi,0x1
  808423:	b8 00 00 00 00       	mov    eax,0x0
  808428:	e8 b3 89 bf ff       	call   400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 40 20 00 	mov    rdi,QWORD PTR [rip+0x20405c]        # a0c490 <buf_offset>
  808434:	e8 c6 0d 00 00       	call   8091ff <stable_launch>
  808439:	b8 00 00 00 00       	mov    eax,0x0
  80843e:	5b                   	pop    rbx
  80843f:	5d                   	pop    rbp
  808440:	41 5c                	pop    r12
  808442:	41 5d                	pop    r13
  808444:	41 5e                	pop    r14
  808446:	c3                   	ret    
  808447:	44 89 f2             	mov    edx,r14d
  80844a:	48 8d 35 7f 1d 00 00 	lea    rsi,[rip+0x1d7f]        # 80a1d0 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    edi,0x1
  808456:	b8 00 00 00 00       	mov    eax,0x0
  80845b:	e8 80 89 bf ff       	call   400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    eax,0x0
  808465:	e8 e6 07 00 00       	call   808c50 <check_fail>
  80846a:	eb a5                	jmp    808411 <main+0x190>

000000000080846c <scramble>:
  80846c:	48 83 ec 38          	sub    rsp,0x38
  808470:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  808477:	00 00 
  808479:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  80847e:	31 c0                	xor    eax,eax
  808480:	eb 10                	jmp    808492 <scramble+0x26>
  808482:	69 d0 23 b4 00 00    	imul   edx,eax,0xb423
  808488:	01 fa                	add    edx,edi
  80848a:	89 c1                	mov    ecx,eax
  80848c:	89 14 8c             	mov    DWORD PTR [rsp+rcx*4],edx
  80848f:	83 c0 01             	add    eax,0x1
  808492:	83 f8 09             	cmp    eax,0x9
  808495:	76 eb                	jbe    808482 <scramble+0x16>
  808497:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  80849a:	69 c0 06 b4 00 00    	imul   eax,eax,0xb406
  8084a0:	89 04 24             	mov    DWORD PTR [rsp],eax
  8084a3:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  8084a7:	69 c0 f5 89 00 00    	imul   eax,eax,0x89f5
  8084ad:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  8084b1:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  8084b5:	69 c0 26 3c 00 00    	imul   eax,eax,0x3c26
  8084bb:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  8084bf:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  8084c3:	69 c0 3e 6a 00 00    	imul   eax,eax,0x6a3e
  8084c9:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  8084cd:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8084d0:	69 c0 7b 18 00 00    	imul   eax,eax,0x187b
  8084d6:	89 04 24             	mov    DWORD PTR [rsp],eax
  8084d9:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  8084dd:	69 c0 da b6 00 00    	imul   eax,eax,0xb6da
  8084e3:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  8084e7:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  8084eb:	69 c0 98 cb 00 00    	imul   eax,eax,0xcb98
  8084f1:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  8084f5:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  8084f9:	69 c0 6c cd 00 00    	imul   eax,eax,0xcd6c
  8084ff:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  808503:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  808507:	69 c0 d6 3c 00 00    	imul   eax,eax,0x3cd6
  80850d:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  808511:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808514:	69 c0 cc bf 00 00    	imul   eax,eax,0xbfcc
  80851a:	89 04 24             	mov    DWORD PTR [rsp],eax
  80851d:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  808521:	69 c0 4c a2 00 00    	imul   eax,eax,0xa24c
  808527:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  80852b:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  80852f:	69 c0 86 55 00 00    	imul   eax,eax,0x5586
  808535:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  808539:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  80853d:	69 c0 30 54 00 00    	imul   eax,eax,0x5430
  808543:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  808547:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  80854b:	69 c0 8f ac 00 00    	imul   eax,eax,0xac8f
  808551:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808555:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  808559:	69 c0 eb d0 00 00    	imul   eax,eax,0xd0eb
  80855f:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  808563:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  808567:	69 c0 a0 a6 00 00    	imul   eax,eax,0xa6a0
  80856d:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  808571:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808575:	69 c0 46 b3 00 00    	imul   eax,eax,0xb346
  80857b:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  80857f:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  808583:	69 c0 55 21 00 00    	imul   eax,eax,0x2155
  808589:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  80858d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808591:	69 c0 b5 7c 00 00    	imul   eax,eax,0x7cb5
  808597:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  80859b:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  80859f:	69 c0 6d c8 00 00    	imul   eax,eax,0xc86d
  8085a5:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  8085a9:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  8085ad:	69 c0 f8 e4 00 00    	imul   eax,eax,0xe4f8
  8085b3:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  8085b7:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  8085bb:	69 c0 be 48 00 00    	imul   eax,eax,0x48be
  8085c1:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  8085c5:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  8085c9:	69 c0 cc b2 00 00    	imul   eax,eax,0xb2cc
  8085cf:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  8085d3:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  8085d7:	69 c0 78 ad 00 00    	imul   eax,eax,0xad78
  8085dd:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  8085e1:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8085e5:	69 c0 37 eb 00 00    	imul   eax,eax,0xeb37
  8085eb:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8085ef:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  8085f3:	69 c0 6b af 00 00    	imul   eax,eax,0xaf6b
  8085f9:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  8085fd:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  808601:	69 c0 96 ae 00 00    	imul   eax,eax,0xae96
  808607:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  80860b:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  80860f:	69 c0 71 47 00 00    	imul   eax,eax,0x4771
  808615:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  808619:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  80861d:	69 c0 df a7 00 00    	imul   eax,eax,0xa7df
  808623:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  808627:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  80862b:	69 c0 43 f5 00 00    	imul   eax,eax,0xf543
  808631:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  808635:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808639:	69 c0 07 bd 00 00    	imul   eax,eax,0xbd07
  80863f:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  808643:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  808647:	69 c0 bc fd 00 00    	imul   eax,eax,0xfdbc
  80864d:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808651:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  808655:	69 c0 7a cc 00 00    	imul   eax,eax,0xcc7a
  80865b:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  80865f:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  808663:	69 c0 ba 5f 00 00    	imul   eax,eax,0x5fba
  808669:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  80866d:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  808671:	69 c0 a6 aa 00 00    	imul   eax,eax,0xaaa6
  808677:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  80867b:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  80867f:	69 c0 5f de 00 00    	imul   eax,eax,0xde5f
  808685:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  808689:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  80868d:	69 c0 6f a7 00 00    	imul   eax,eax,0xa76f
  808693:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  808697:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  80869b:	69 c0 2f 40 00 00    	imul   eax,eax,0x402f
  8086a1:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  8086a5:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8086a8:	69 c0 48 3d 00 00    	imul   eax,eax,0x3d48
  8086ae:	89 04 24             	mov    DWORD PTR [rsp],eax
  8086b1:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8086b4:	69 c0 df 49 00 00    	imul   eax,eax,0x49df
  8086ba:	89 04 24             	mov    DWORD PTR [rsp],eax
  8086bd:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8086c0:	69 c0 ed 5a 00 00    	imul   eax,eax,0x5aed
  8086c6:	89 04 24             	mov    DWORD PTR [rsp],eax
  8086c9:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  8086cd:	69 c0 03 b6 00 00    	imul   eax,eax,0xb603
  8086d3:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  8086d7:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8086da:	69 c0 3b fe 00 00    	imul   eax,eax,0xfe3b
  8086e0:	89 04 24             	mov    DWORD PTR [rsp],eax
  8086e3:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  8086e7:	69 c0 4a 0c 00 00    	imul   eax,eax,0xc4a
  8086ed:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  8086f1:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8086f5:	69 c0 75 f1 00 00    	imul   eax,eax,0xf175
  8086fb:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8086ff:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  808703:	69 c0 e4 1e 00 00    	imul   eax,eax,0x1ee4
  808709:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  80870d:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  808711:	69 c0 71 9d 00 00    	imul   eax,eax,0x9d71
  808717:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  80871b:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  80871f:	69 c0 c9 1e 00 00    	imul   eax,eax,0x1ec9
  808725:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  808729:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  80872d:	69 c0 b3 3b 00 00    	imul   eax,eax,0x3bb3
  808733:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  808737:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  80873b:	69 c0 1a b3 00 00    	imul   eax,eax,0xb31a
  808741:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808745:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808749:	69 c0 ab a6 00 00    	imul   eax,eax,0xa6ab
  80874f:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  808753:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808756:	69 c0 f7 75 00 00    	imul   eax,eax,0x75f7
  80875c:	89 04 24             	mov    DWORD PTR [rsp],eax
  80875f:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  808763:	69 c0 98 b8 00 00    	imul   eax,eax,0xb898
  808769:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  80876d:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808770:	69 c0 56 a8 00 00    	imul   eax,eax,0xa856
  808776:	89 04 24             	mov    DWORD PTR [rsp],eax
  808779:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  80877d:	69 c0 cf a3 00 00    	imul   eax,eax,0xa3cf
  808783:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  808787:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  80878b:	69 c0 60 1e 00 00    	imul   eax,eax,0x1e60
  808791:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  808795:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808798:	69 c0 7f eb 00 00    	imul   eax,eax,0xeb7f
  80879e:	89 04 24             	mov    DWORD PTR [rsp],eax
  8087a1:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  8087a5:	69 c0 3f 08 00 00    	imul   eax,eax,0x83f
  8087ab:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  8087af:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8087b3:	69 c0 d8 d1 00 00    	imul   eax,eax,0xd1d8
  8087b9:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8087bd:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8087c1:	69 c0 d4 8f 00 00    	imul   eax,eax,0x8fd4
  8087c7:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8087cb:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8087cf:	69 c0 17 16 00 00    	imul   eax,eax,0x1617
  8087d5:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8087d9:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  8087dd:	69 c0 c9 71 00 00    	imul   eax,eax,0x71c9
  8087e3:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  8087e7:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  8087eb:	69 c0 5a cb 00 00    	imul   eax,eax,0xcb5a
  8087f1:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  8087f5:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  8087f9:	69 c0 74 1d 00 00    	imul   eax,eax,0x1d74
  8087ff:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808803:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808806:	69 c0 16 0f 00 00    	imul   eax,eax,0xf16
  80880c:	89 04 24             	mov    DWORD PTR [rsp],eax
  80880f:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  808813:	69 c0 66 ed 00 00    	imul   eax,eax,0xed66
  808819:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  80881d:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  808821:	69 c0 08 62 00 00    	imul   eax,eax,0x6208
  808827:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  80882b:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  80882f:	69 c0 dc 03 00 00    	imul   eax,eax,0x3dc
  808835:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  808839:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  80883d:	69 c0 84 19 00 00    	imul   eax,eax,0x1984
  808843:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  808847:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  80884b:	69 c0 81 10 00 00    	imul   eax,eax,0x1081
  808851:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  808855:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  808859:	69 c0 68 9e 00 00    	imul   eax,eax,0x9e68
  80885f:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808863:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  808867:	69 c0 0f bc 00 00    	imul   eax,eax,0xbc0f
  80886d:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  808871:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  808875:	69 c0 45 03 00 00    	imul   eax,eax,0x345
  80887b:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  80887f:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  808883:	69 c0 a2 73 00 00    	imul   eax,eax,0x73a2
  808889:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  80888d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808891:	69 c0 d8 d8 00 00    	imul   eax,eax,0xd8d8
  808897:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  80889b:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  80889f:	69 c0 6b 98 00 00    	imul   eax,eax,0x986b
  8088a5:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  8088a9:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8088ad:	69 c0 2f b2 00 00    	imul   eax,eax,0xb22f
  8088b3:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8088b7:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8088bb:	69 c0 78 a2 00 00    	imul   eax,eax,0xa278
  8088c1:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8088c5:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8088c8:	69 c0 c8 9a 00 00    	imul   eax,eax,0x9ac8
  8088ce:	89 04 24             	mov    DWORD PTR [rsp],eax
  8088d1:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  8088d5:	69 c0 96 84 00 00    	imul   eax,eax,0x8496
  8088db:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  8088df:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8088e2:	69 c0 7a 90 00 00    	imul   eax,eax,0x907a
  8088e8:	89 04 24             	mov    DWORD PTR [rsp],eax
  8088eb:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  8088ef:	69 c0 a0 5f 00 00    	imul   eax,eax,0x5fa0
  8088f5:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  8088f9:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  8088fc:	69 c0 5a d5 00 00    	imul   eax,eax,0xd55a
  808902:	89 04 24             	mov    DWORD PTR [rsp],eax
  808905:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  808909:	69 c0 23 0d 00 00    	imul   eax,eax,0xd23
  80890f:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  808913:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808916:	69 c0 ae 0f 00 00    	imul   eax,eax,0xfae
  80891c:	89 04 24             	mov    DWORD PTR [rsp],eax
  80891f:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  808923:	69 c0 32 ac 00 00    	imul   eax,eax,0xac32
  808929:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  80892d:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  808931:	69 c0 86 4c 00 00    	imul   eax,eax,0x4c86
  808937:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  80893b:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  80893f:	69 c0 fe 37 00 00    	imul   eax,eax,0x37fe
  808945:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808949:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  80894c:	69 c0 90 2c 00 00    	imul   eax,eax,0x2c90
  808952:	89 04 24             	mov    DWORD PTR [rsp],eax
  808955:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  808959:	69 c0 e9 24 00 00    	imul   eax,eax,0x24e9
  80895f:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  808963:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  808967:	69 c0 16 af 00 00    	imul   eax,eax,0xaf16
  80896d:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  808971:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  808974:	69 c0 58 f4 00 00    	imul   eax,eax,0xf458
  80897a:	89 04 24             	mov    DWORD PTR [rsp],eax
  80897d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  808981:	69 c0 8a c7 00 00    	imul   eax,eax,0xc78a
  808987:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  80898b:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  80898e:	69 c0 cf de 00 00    	imul   eax,eax,0xdecf
  808994:	89 04 24             	mov    DWORD PTR [rsp],eax
  808997:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  80899b:	69 c0 bc 56 00 00    	imul   eax,eax,0x56bc
  8089a1:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  8089a5:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  8089a9:	69 c0 30 0c 00 00    	imul   eax,eax,0xc30
  8089af:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  8089b3:	ba 00 00 00 00       	mov    edx,0x0
  8089b8:	b8 00 00 00 00       	mov    eax,0x0
  8089bd:	eb 0a                	jmp    8089c9 <scramble+0x55d>
  8089bf:	89 d1                	mov    ecx,edx
  8089c1:	8b 0c 8c             	mov    ecx,DWORD PTR [rsp+rcx*4]
  8089c4:	01 c8                	add    eax,ecx
  8089c6:	83 c2 01             	add    edx,0x1
  8089c9:	83 fa 09             	cmp    edx,0x9
  8089cc:	76 f1                	jbe    8089bf <scramble+0x553>
  8089ce:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  8089d3:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  8089da:	00 00 
  8089dc:	75 05                	jne    8089e3 <scramble+0x577>
  8089de:	48 83 c4 38          	add    rsp,0x38
  8089e2:	c3                   	ret    
  8089e3:	e8 f8 82 bf ff       	call   400ce0 <__stack_chk_fail@plt>

00000000008089e8 <getbuf>:
  8089e8:	48 83 ec 28          	sub    rsp,0x28
  8089ec:	48 89 e7             	mov    rdi,rsp
  8089ef:	e8 94 02 00 00       	call   808c88 <Gets>
  8089f4:	b8 01 00 00 00       	mov    eax,0x1
  8089f9:	48 83 c4 28          	add    rsp,0x28
  8089fd:	c3                   	ret    

00000000008089fe <touch1>:
  8089fe:	48 83 ec 08          	sub    rsp,0x8
  808a02:	c7 05 f0 3a 20 00 01 	mov    DWORD PTR [rip+0x203af0],0x1        # a0c4fc <vlevel>
  808a09:	00 00 00 
  808a0c:	48 8d 3d 28 19 00 00 	lea    rdi,[rip+0x1928]        # 80a33b <_IO_stdin_used+0x27b>
  808a13:	e8 a8 82 bf ff       	call   400cc0 <puts@plt>
  808a18:	bf 01 00 00 00       	mov    edi,0x1
  808a1d:	e8 dd 04 00 00       	call   808eff <validate>
  808a22:	bf 00 00 00 00       	mov    edi,0x0
  808a27:	e8 f4 83 bf ff       	call   400e20 <exit@plt>

0000000000808a2c <touch2>:
  808a2c:	48 83 ec 08          	sub    rsp,0x8
  808a30:	89 fa                	mov    edx,edi
  808a32:	c7 05 c0 3a 20 00 02 	mov    DWORD PTR [rip+0x203ac0],0x2        # a0c4fc <vlevel>
  808a39:	00 00 00 
  808a3c:	39 3d c2 3a 20 00    	cmp    DWORD PTR [rip+0x203ac2],edi        # a0c504 <cookie>
  808a42:	74 2a                	je     808a6e <touch2+0x42>
  808a44:	48 8d 35 3d 19 00 00 	lea    rsi,[rip+0x193d]        # 80a388 <_IO_stdin_used+0x2c8>
  808a4b:	bf 01 00 00 00       	mov    edi,0x1
  808a50:	b8 00 00 00 00       	mov    eax,0x0
  808a55:	e8 86 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a5a:	bf 02 00 00 00       	mov    edi,0x2
  808a5f:	e8 6b 05 00 00       	call   808fcf <fail>
  808a64:	bf 00 00 00 00       	mov    edi,0x0
  808a69:	e8 b2 83 bf ff       	call   400e20 <exit@plt>
  808a6e:	48 8d 35 eb 18 00 00 	lea    rsi,[rip+0x18eb]        # 80a360 <_IO_stdin_used+0x2a0>
  808a75:	bf 01 00 00 00       	mov    edi,0x1
  808a7a:	b8 00 00 00 00       	mov    eax,0x0
  808a7f:	e8 5c 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a84:	bf 02 00 00 00       	mov    edi,0x2
  808a89:	e8 71 04 00 00       	call   808eff <validate>
  808a8e:	eb d4                	jmp    808a64 <touch2+0x38>

0000000000808a90 <hexmatch>:
  808a90:	41 54                	push   r12
  808a92:	55                   	push   rbp
  808a93:	53                   	push   rbx
  808a94:	48 83 c4 80          	add    rsp,0xffffffffffffff80
  808a98:	89 fd                	mov    ebp,edi
  808a9a:	48 89 f3             	mov    rbx,rsi
  808a9d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  808aa4:	00 00 
  808aa6:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  808aab:	31 c0                	xor    eax,eax
  808aad:	e8 ee 82 bf ff       	call   400da0 <random@plt>
  808ab2:	48 89 c1             	mov    rcx,rax
  808ab5:	48 ba 0b d7 a3 70 3d 	movabs rdx,0xa3d70a3d70a3d70b
  808abc:	0a d7 a3 
  808abf:	48 f7 ea             	imul   rdx
  808ac2:	48 01 ca             	add    rdx,rcx
  808ac5:	48 c1 fa 06          	sar    rdx,0x6
  808ac9:	48 89 c8             	mov    rax,rcx
  808acc:	48 c1 f8 3f          	sar    rax,0x3f
  808ad0:	48 29 c2             	sub    rdx,rax
  808ad3:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  808ad7:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  808adb:	48 8d 04 95 00 00 00 	lea    rax,[rdx*4+0x0]
  808ae2:	00 
  808ae3:	48 29 c1             	sub    rcx,rax
  808ae6:	4c 8d 24 0c          	lea    r12,[rsp+rcx*1]
  808aea:	41 89 e8             	mov    r8d,ebp
  808aed:	48 8d 0d 64 18 00 00 	lea    rcx,[rip+0x1864]        # 80a358 <_IO_stdin_used+0x298>
  808af4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
  808afb:	be 01 00 00 00       	mov    esi,0x1
  808b00:	4c 89 e7             	mov    rdi,r12
  808b03:	b8 00 00 00 00       	mov    eax,0x0
  808b08:	e8 43 83 bf ff       	call   400e50 <__sprintf_chk@plt>
  808b0d:	ba 09 00 00 00       	mov    edx,0x9
  808b12:	4c 89 e6             	mov    rsi,r12
  808b15:	48 89 df             	mov    rdi,rbx
  808b18:	e8 83 81 bf ff       	call   400ca0 <strncmp@plt>
  808b1d:	85 c0                	test   eax,eax
  808b1f:	0f 94 c0             	sete   al
  808b22:	48 8b 5c 24 78       	mov    rbx,QWORD PTR [rsp+0x78]
  808b27:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  808b2e:	00 00 
  808b30:	75 0c                	jne    808b3e <hexmatch+0xae>
  808b32:	0f b6 c0             	movzx  eax,al
  808b35:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
  808b39:	5b                   	pop    rbx
  808b3a:	5d                   	pop    rbp
  808b3b:	41 5c                	pop    r12
  808b3d:	c3                   	ret    
  808b3e:	e8 9d 81 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808b43 <touch3>:
  808b43:	53                   	push   rbx
  808b44:	48 89 fb             	mov    rbx,rdi
  808b47:	c7 05 ab 39 20 00 03 	mov    DWORD PTR [rip+0x2039ab],0x3        # a0c4fc <vlevel>
  808b4e:	00 00 00 
  808b51:	48 89 fe             	mov    rsi,rdi
  808b54:	8b 3d aa 39 20 00    	mov    edi,DWORD PTR [rip+0x2039aa]        # a0c504 <cookie>
  808b5a:	e8 31 ff ff ff       	call   808a90 <hexmatch>
  808b5f:	85 c0                	test   eax,eax
  808b61:	74 2d                	je     808b90 <touch3+0x4d>
  808b63:	48 89 da             	mov    rdx,rbx
  808b66:	48 8d 35 43 18 00 00 	lea    rsi,[rip+0x1843]        # 80a3b0 <_IO_stdin_used+0x2f0>
  808b6d:	bf 01 00 00 00       	mov    edi,0x1
  808b72:	b8 00 00 00 00       	mov    eax,0x0
  808b77:	e8 64 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b7c:	bf 03 00 00 00       	mov    edi,0x3
  808b81:	e8 79 03 00 00       	call   808eff <validate>
  808b86:	bf 00 00 00 00       	mov    edi,0x0
  808b8b:	e8 90 82 bf ff       	call   400e20 <exit@plt>
  808b90:	48 89 da             	mov    rdx,rbx
  808b93:	48 8d 35 3e 18 00 00 	lea    rsi,[rip+0x183e]        # 80a3d8 <_IO_stdin_used+0x318>
  808b9a:	bf 01 00 00 00       	mov    edi,0x1
  808b9f:	b8 00 00 00 00       	mov    eax,0x0
  808ba4:	e8 37 82 bf ff       	call   400de0 <__printf_chk@plt>
  808ba9:	bf 03 00 00 00       	mov    edi,0x3
  808bae:	e8 1c 04 00 00       	call   808fcf <fail>
  808bb3:	eb d1                	jmp    808b86 <touch3+0x43>

0000000000808bb5 <test>:
  808bb5:	48 83 ec 08          	sub    rsp,0x8
  808bb9:	b8 00 00 00 00       	mov    eax,0x0
  808bbe:	e8 25 fe ff ff       	call   8089e8 <getbuf>
  808bc3:	89 c2                	mov    edx,eax
  808bc5:	48 8d 35 34 18 00 00 	lea    rsi,[rip+0x1834]        # 80a400 <_IO_stdin_used+0x340>
  808bcc:	bf 01 00 00 00       	mov    edi,0x1
  808bd1:	b8 00 00 00 00       	mov    eax,0x0
  808bd6:	e8 05 82 bf ff       	call   400de0 <__printf_chk@plt>
  808bdb:	48 83 c4 08          	add    rsp,0x8
  808bdf:	c3                   	ret    

0000000000808be0 <save_char>:
  808be0:	8b 05 3e 45 20 00    	mov    eax,DWORD PTR [rip+0x20453e]        # a0d124 <gets_cnt>
  808be6:	3d ff 03 00 00       	cmp    eax,0x3ff
  808beb:	7f 4a                	jg     808c37 <save_char+0x57>
  808bed:	89 f9                	mov    ecx,edi
  808bef:	c0 e9 04             	shr    cl,0x4
  808bf2:	8d 14 40             	lea    edx,[rax+rax*2]
  808bf5:	4c 8d 05 24 1b 00 00 	lea    r8,[rip+0x1b24]        # 80a720 <trans_char>
  808bfc:	83 e1 0f             	and    ecx,0xf
  808bff:	45 0f b6 0c 08       	movzx  r9d,BYTE PTR [r8+rcx*1]
  808c04:	48 8d 0d 15 39 20 00 	lea    rcx,[rip+0x203915]        # a0c520 <gets_buf>
  808c0b:	48 63 f2             	movsxd rsi,edx
  808c0e:	44 88 0c 31          	mov    BYTE PTR [rcx+rsi*1],r9b
  808c12:	8d 72 01             	lea    esi,[rdx+0x1]
  808c15:	83 e7 0f             	and    edi,0xf
  808c18:	41 0f b6 3c 38       	movzx  edi,BYTE PTR [r8+rdi*1]
  808c1d:	48 63 f6             	movsxd rsi,esi
  808c20:	40 88 3c 31          	mov    BYTE PTR [rcx+rsi*1],dil
  808c24:	83 c2 02             	add    edx,0x2
  808c27:	48 63 d2             	movsxd rdx,edx
  808c2a:	c6 04 11 20          	mov    BYTE PTR [rcx+rdx*1],0x20
  808c2e:	83 c0 01             	add    eax,0x1
  808c31:	89 05 ed 44 20 00    	mov    DWORD PTR [rip+0x2044ed],eax        # a0d124 <gets_cnt>
  808c37:	f3 c3                	repz ret 

0000000000808c39 <save_term>:
  808c39:	8b 05 e5 44 20 00    	mov    eax,DWORD PTR [rip+0x2044e5]        # a0d124 <gets_cnt>
  808c3f:	8d 04 40             	lea    eax,[rax+rax*2]
  808c42:	48 98                	cdqe   
  808c44:	48 8d 15 d5 38 20 00 	lea    rdx,[rip+0x2038d5]        # a0c520 <gets_buf>
  808c4b:	c6 04 02 00          	mov    BYTE PTR [rdx+rax*1],0x0
  808c4f:	c3                   	ret    

0000000000808c50 <check_fail>:
  808c50:	48 83 ec 08          	sub    rsp,0x8
  808c54:	0f be 15 d5 44 20 00 	movsx  edx,BYTE PTR [rip+0x2044d5]        # a0d130 <target_prefix>
  808c5b:	4c 8d 05 be 38 20 00 	lea    r8,[rip+0x2038be]        # a0c520 <gets_buf>
  808c62:	8b 0d 90 38 20 00    	mov    ecx,DWORD PTR [rip+0x203890]        # a0c4f8 <check_level>
  808c68:	48 8d 35 b4 17 00 00 	lea    rsi,[rip+0x17b4]        # 80a423 <_IO_stdin_used+0x363>
  808c6f:	bf 01 00 00 00       	mov    edi,0x1
  808c74:	b8 00 00 00 00       	mov    eax,0x0
  808c79:	e8 62 81 bf ff       	call   400de0 <__printf_chk@plt>
  808c7e:	bf 01 00 00 00       	mov    edi,0x1
  808c83:	e8 98 81 bf ff       	call   400e20 <exit@plt>

0000000000808c88 <Gets>:
  808c88:	41 54                	push   r12
  808c8a:	55                   	push   rbp
  808c8b:	53                   	push   rbx
  808c8c:	49 89 fc             	mov    r12,rdi
  808c8f:	c7 05 8b 44 20 00 00 	mov    DWORD PTR [rip+0x20448b],0x0        # a0d124 <gets_cnt>
  808c96:	00 00 00 
  808c99:	48 89 fb             	mov    rbx,rdi
  808c9c:	eb 11                	jmp    808caf <Gets+0x27>
  808c9e:	48 8d 6b 01          	lea    rbp,[rbx+0x1]
  808ca2:	88 03                	mov    BYTE PTR [rbx],al
  808ca4:	0f b6 f8             	movzx  edi,al
  808ca7:	e8 34 ff ff ff       	call   808be0 <save_char>
  808cac:	48 89 eb             	mov    rbx,rbp
  808caf:	48 8b 3d 3a 38 20 00 	mov    rdi,QWORD PTR [rip+0x20383a]        # a0c4f0 <infile>
  808cb6:	e8 f5 80 bf ff       	call   400db0 <_IO_getc@plt>
  808cbb:	83 f8 ff             	cmp    eax,0xffffffff
  808cbe:	74 05                	je     808cc5 <Gets+0x3d>
  808cc0:	83 f8 0a             	cmp    eax,0xa
  808cc3:	75 d9                	jne    808c9e <Gets+0x16>
  808cc5:	c6 03 00             	mov    BYTE PTR [rbx],0x0
  808cc8:	b8 00 00 00 00       	mov    eax,0x0
  808ccd:	e8 67 ff ff ff       	call   808c39 <save_term>
  808cd2:	4c 89 e0             	mov    rax,r12
  808cd5:	5b                   	pop    rbx
  808cd6:	5d                   	pop    rbp
  808cd7:	41 5c                	pop    r12
  808cd9:	c3                   	ret    

0000000000808cda <notify_server>:
  808cda:	55                   	push   rbp
  808cdb:	53                   	push   rbx
  808cdc:	48 81 ec 18 40 00 00 	sub    rsp,0x4018
  808ce3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  808cea:	00 00 
  808cec:	48 89 84 24 08 40 00 	mov    QWORD PTR [rsp+0x4008],rax
  808cf3:	00 
  808cf4:	31 c0                	xor    eax,eax
  808cf6:	83 3d 0b 38 20 00 00 	cmp    DWORD PTR [rip+0x20380b],0x0        # a0c508 <is_checker>
  808cfd:	0f 85 d9 00 00 00    	jne    808ddc <notify_server+0x102>
  808d03:	89 fb                	mov    ebx,edi
  808d05:	8b 05 19 44 20 00    	mov    eax,DWORD PTR [rip+0x204419]        # a0d124 <gets_cnt>
  808d0b:	83 c0 64             	add    eax,0x64
  808d0e:	3d 00 20 00 00       	cmp    eax,0x2000
  808d13:	0f 8f e4 00 00 00    	jg     808dfd <notify_server+0x123>
  808d19:	0f be 05 10 44 20 00 	movsx  eax,BYTE PTR [rip+0x204410]        # a0d130 <target_prefix>
  808d20:	83 3d 61 37 20 00 00 	cmp    DWORD PTR [rip+0x203761],0x0        # a0c488 <notify>
  808d27:	0f 84 f0 00 00 00    	je     808e1d <notify_server+0x143>
  808d2d:	8b 15 cd 37 20 00    	mov    edx,DWORD PTR [rip+0x2037cd]        # a0c500 <authkey>
  808d33:	85 db                	test   ebx,ebx
  808d35:	0f 84 ec 00 00 00    	je     808e27 <notify_server+0x14d>
  808d3b:	48 8d 2d f7 16 00 00 	lea    rbp,[rip+0x16f7]        # 80a439 <_IO_stdin_used+0x379>
  808d42:	48 89 e7             	mov    rdi,rsp
  808d45:	48 83 ec 08          	sub    rsp,0x8
  808d49:	48 8d 0d d0 37 20 00 	lea    rcx,[rip+0x2037d0]        # a0c520 <gets_buf>
  808d50:	51                   	push   rcx
  808d51:	56                   	push   rsi
  808d52:	50                   	push   rax
  808d53:	52                   	push   rdx
  808d54:	55                   	push   rbp
  808d55:	44 8b 0d d4 33 20 00 	mov    r9d,DWORD PTR [rip+0x2033d4]        # a0c130 <target_id>
  808d5c:	4c 8d 05 e0 16 00 00 	lea    r8,[rip+0x16e0]        # 80a443 <_IO_stdin_used+0x383>
  808d63:	b9 00 20 00 00       	mov    ecx,0x2000
  808d68:	ba 01 00 00 00       	mov    edx,0x1
  808d6d:	be 00 20 00 00       	mov    esi,0x2000
  808d72:	b8 00 00 00 00       	mov    eax,0x0
  808d77:	e8 f4 7e bf ff       	call   400c70 <__snprintf_chk@plt>
  808d7c:	48 83 c4 30          	add    rsp,0x30
  808d80:	83 3d 01 37 20 00 00 	cmp    DWORD PTR [rip+0x203701],0x0        # a0c488 <notify>
  808d87:	0f 84 df 00 00 00    	je     808e6c <notify_server+0x192>
  808d8d:	85 db                	test   ebx,ebx
  808d8f:	0f 84 c6 00 00 00    	je     808e5b <notify_server+0x181>
  808d95:	48 89 e1             	mov    rcx,rsp
  808d98:	4c 8d 8c 24 00 20 00 	lea    r9,[rsp+0x2000]
  808d9f:	00 
  808da0:	41 b8 00 00 00 00    	mov    r8d,0x0
  808da6:	48 8b 15 9b 33 20 00 	mov    rdx,QWORD PTR [rip+0x20339b]        # a0c148 <lab>
  808dad:	48 8b 35 cc 36 20 00 	mov    rsi,QWORD PTR [rip+0x2036cc]        # a0c480 <course>
  808db4:	48 8b 3d 85 33 20 00 	mov    rdi,QWORD PTR [rip+0x203385]        # a0c140 <user_id>
  808dbb:	e8 af 11 00 00       	call   809f6f <driver_post>
  808dc0:	85 c0                	test   eax,eax
  808dc2:	78 6f                	js     808e33 <notify_server+0x159>
  808dc4:	48 8d 3d bd 17 00 00 	lea    rdi,[rip+0x17bd]        # 80a588 <_IO_stdin_used+0x4c8>
  808dcb:	e8 f0 7e bf ff       	call   400cc0 <puts@plt>
  808dd0:	48 8d 3d 94 16 00 00 	lea    rdi,[rip+0x1694]        # 80a46b <_IO_stdin_used+0x3ab>
  808dd7:	e8 e4 7e bf ff       	call   400cc0 <puts@plt>
  808ddc:	48 8b 84 24 08 40 00 	mov    rax,QWORD PTR [rsp+0x4008]
  808de3:	00 
  808de4:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  808deb:	00 00 
  808ded:	0f 85 07 01 00 00    	jne    808efa <notify_server+0x220>
  808df3:	48 81 c4 18 40 00 00 	add    rsp,0x4018
  808dfa:	5b                   	pop    rbx
  808dfb:	5d                   	pop    rbp
  808dfc:	c3                   	ret    
  808dfd:	48 8d 35 54 17 00 00 	lea    rsi,[rip+0x1754]        # 80a558 <_IO_stdin_used+0x498>
  808e04:	bf 01 00 00 00       	mov    edi,0x1
  808e09:	b8 00 00 00 00       	mov    eax,0x0
  808e0e:	e8 cd 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e13:	bf 01 00 00 00       	mov    edi,0x1
  808e18:	e8 03 80 bf ff       	call   400e20 <exit@plt>
  808e1d:	ba ff ff ff ff       	mov    edx,0xffffffff
  808e22:	e9 0c ff ff ff       	jmp    808d33 <notify_server+0x59>
  808e27:	48 8d 2d 10 16 00 00 	lea    rbp,[rip+0x1610]        # 80a43e <_IO_stdin_used+0x37e>
  808e2e:	e9 0f ff ff ff       	jmp    808d42 <notify_server+0x68>
  808e33:	48 8d 94 24 00 20 00 	lea    rdx,[rsp+0x2000]
  808e3a:	00 
  808e3b:	48 8d 35 1d 16 00 00 	lea    rsi,[rip+0x161d]        # 80a45f <_IO_stdin_used+0x39f>
  808e42:	bf 01 00 00 00       	mov    edi,0x1
  808e47:	b8 00 00 00 00       	mov    eax,0x0
  808e4c:	e8 8f 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e51:	bf 01 00 00 00       	mov    edi,0x1
  808e56:	e8 c5 7f bf ff       	call   400e20 <exit@plt>
  808e5b:	48 8d 3d 13 16 00 00 	lea    rdi,[rip+0x1613]        # 80a475 <_IO_stdin_used+0x3b5>
  808e62:	e8 59 7e bf ff       	call   400cc0 <puts@plt>
  808e67:	e9 70 ff ff ff       	jmp    808ddc <notify_server+0x102>
  808e6c:	48 89 ea             	mov    rdx,rbp
  808e6f:	48 8d 35 4a 17 00 00 	lea    rsi,[rip+0x174a]        # 80a5c0 <_IO_stdin_used+0x500>
  808e76:	bf 01 00 00 00       	mov    edi,0x1
  808e7b:	b8 00 00 00 00       	mov    eax,0x0
  808e80:	e8 5b 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e85:	48 8b 15 b4 32 20 00 	mov    rdx,QWORD PTR [rip+0x2032b4]        # a0c140 <user_id>
  808e8c:	48 8d 35 e9 15 00 00 	lea    rsi,[rip+0x15e9]        # 80a47c <_IO_stdin_used+0x3bc>
  808e93:	bf 01 00 00 00       	mov    edi,0x1
  808e98:	b8 00 00 00 00       	mov    eax,0x0
  808e9d:	e8 3e 7f bf ff       	call   400de0 <__printf_chk@plt>
  808ea2:	48 8b 15 d7 35 20 00 	mov    rdx,QWORD PTR [rip+0x2035d7]        # a0c480 <course>
  808ea9:	48 8d 35 d9 15 00 00 	lea    rsi,[rip+0x15d9]        # 80a489 <_IO_stdin_used+0x3c9>
  808eb0:	bf 01 00 00 00       	mov    edi,0x1
  808eb5:	b8 00 00 00 00       	mov    eax,0x0
  808eba:	e8 21 7f bf ff       	call   400de0 <__printf_chk@plt>
  808ebf:	48 8b 15 82 32 20 00 	mov    rdx,QWORD PTR [rip+0x203282]        # a0c148 <lab>
  808ec6:	48 8d 35 c8 15 00 00 	lea    rsi,[rip+0x15c8]        # 80a495 <_IO_stdin_used+0x3d5>
  808ecd:	bf 01 00 00 00       	mov    edi,0x1
  808ed2:	b8 00 00 00 00       	mov    eax,0x0
  808ed7:	e8 04 7f bf ff       	call   400de0 <__printf_chk@plt>
  808edc:	48 89 e2             	mov    rdx,rsp
  808edf:	48 8d 35 b8 15 00 00 	lea    rsi,[rip+0x15b8]        # 80a49e <_IO_stdin_used+0x3de>
  808ee6:	bf 01 00 00 00       	mov    edi,0x1
  808eeb:	b8 00 00 00 00       	mov    eax,0x0
  808ef0:	e8 eb 7e bf ff       	call   400de0 <__printf_chk@plt>
  808ef5:	e9 e2 fe ff ff       	jmp    808ddc <notify_server+0x102>
  808efa:	e8 e1 7d bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808eff <validate>:
  808eff:	53                   	push   rbx
  808f00:	89 fb                	mov    ebx,edi
  808f02:	83 3d ff 35 20 00 00 	cmp    DWORD PTR [rip+0x2035ff],0x0        # a0c508 <is_checker>
  808f09:	74 72                	je     808f7d <validate+0x7e>
  808f0b:	39 3d eb 35 20 00    	cmp    DWORD PTR [rip+0x2035eb],edi        # a0c4fc <vlevel>
  808f11:	75 32                	jne    808f45 <validate+0x46>
  808f13:	8b 15 df 35 20 00    	mov    edx,DWORD PTR [rip+0x2035df]        # a0c4f8 <check_level>
  808f19:	39 fa                	cmp    edx,edi
  808f1b:	75 3e                	jne    808f5b <validate+0x5c>
  808f1d:	0f be 15 0c 42 20 00 	movsx  edx,BYTE PTR [rip+0x20420c]        # a0d130 <target_prefix>
  808f24:	4c 8d 05 f5 35 20 00 	lea    r8,[rip+0x2035f5]        # a0c520 <gets_buf>
  808f2b:	89 f9                	mov    ecx,edi
  808f2d:	48 8d 35 94 15 00 00 	lea    rsi,[rip+0x1594]        # 80a4c8 <_IO_stdin_used+0x408>
  808f34:	bf 01 00 00 00       	mov    edi,0x1
  808f39:	b8 00 00 00 00       	mov    eax,0x0
  808f3e:	e8 9d 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f43:	5b                   	pop    rbx
  808f44:	c3                   	ret    
  808f45:	48 8d 3d 5e 15 00 00 	lea    rdi,[rip+0x155e]        # 80a4aa <_IO_stdin_used+0x3ea>
  808f4c:	e8 6f 7d bf ff       	call   400cc0 <puts@plt>
  808f51:	b8 00 00 00 00       	mov    eax,0x0
  808f56:	e8 f5 fc ff ff       	call   808c50 <check_fail>
  808f5b:	89 f9                	mov    ecx,edi
  808f5d:	48 8d 35 84 16 00 00 	lea    rsi,[rip+0x1684]        # 80a5e8 <_IO_stdin_used+0x528>
  808f64:	bf 01 00 00 00       	mov    edi,0x1
  808f69:	b8 00 00 00 00       	mov    eax,0x0
  808f6e:	e8 6d 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f73:	b8 00 00 00 00       	mov    eax,0x0
  808f78:	e8 d3 fc ff ff       	call   808c50 <check_fail>
  808f7d:	39 3d 79 35 20 00    	cmp    DWORD PTR [rip+0x203579],edi        # a0c4fc <vlevel>
  808f83:	74 1a                	je     808f9f <validate+0xa0>
  808f85:	48 8d 3d 1e 15 00 00 	lea    rdi,[rip+0x151e]        # 80a4aa <_IO_stdin_used+0x3ea>
  808f8c:	e8 2f 7d bf ff       	call   400cc0 <puts@plt>
  808f91:	89 de                	mov    esi,ebx
  808f93:	bf 00 00 00 00       	mov    edi,0x0
  808f98:	e8 3d fd ff ff       	call   808cda <notify_server>
  808f9d:	eb a4                	jmp    808f43 <validate+0x44>
  808f9f:	0f be 0d 8a 41 20 00 	movsx  ecx,BYTE PTR [rip+0x20418a]        # a0d130 <target_prefix>
  808fa6:	89 fa                	mov    edx,edi
  808fa8:	48 8d 35 61 16 00 00 	lea    rsi,[rip+0x1661]        # 80a610 <_IO_stdin_used+0x550>
  808faf:	bf 01 00 00 00       	mov    edi,0x1
  808fb4:	b8 00 00 00 00       	mov    eax,0x0
  808fb9:	e8 22 7e bf ff       	call   400de0 <__printf_chk@plt>
  808fbe:	89 de                	mov    esi,ebx
  808fc0:	bf 01 00 00 00       	mov    edi,0x1
  808fc5:	e8 10 fd ff ff       	call   808cda <notify_server>
  808fca:	e9 74 ff ff ff       	jmp    808f43 <validate+0x44>

0000000000808fcf <fail>:
  808fcf:	48 83 ec 08          	sub    rsp,0x8
  808fd3:	83 3d 2e 35 20 00 00 	cmp    DWORD PTR [rip+0x20352e],0x0        # a0c508 <is_checker>
  808fda:	75 11                	jne    808fed <fail+0x1e>
  808fdc:	89 fe                	mov    esi,edi
  808fde:	bf 00 00 00 00       	mov    edi,0x0
  808fe3:	e8 f2 fc ff ff       	call   808cda <notify_server>
  808fe8:	48 83 c4 08          	add    rsp,0x8
  808fec:	c3                   	ret    
  808fed:	b8 00 00 00 00       	mov    eax,0x0
  808ff2:	e8 59 fc ff ff       	call   808c50 <check_fail>

0000000000808ff7 <bushandler>:
  808ff7:	48 83 ec 08          	sub    rsp,0x8
  808ffb:	83 3d 06 35 20 00 00 	cmp    DWORD PTR [rip+0x203506],0x0        # a0c508 <is_checker>
  809002:	74 16                	je     80901a <bushandler+0x23>
  809004:	48 8d 3d d2 14 00 00 	lea    rdi,[rip+0x14d2]        # 80a4dd <_IO_stdin_used+0x41d>
  80900b:	e8 b0 7c bf ff       	call   400cc0 <puts@plt>
  809010:	b8 00 00 00 00       	mov    eax,0x0
  809015:	e8 36 fc ff ff       	call   808c50 <check_fail>
  80901a:	48 8d 3d 27 16 00 00 	lea    rdi,[rip+0x1627]        # 80a648 <_IO_stdin_used+0x588>
  809021:	e8 9a 7c bf ff       	call   400cc0 <puts@plt>
  809026:	48 8d 3d ba 14 00 00 	lea    rdi,[rip+0x14ba]        # 80a4e7 <_IO_stdin_used+0x427>
  80902d:	e8 8e 7c bf ff       	call   400cc0 <puts@plt>
  809032:	be 00 00 00 00       	mov    esi,0x0
  809037:	bf 00 00 00 00       	mov    edi,0x0
  80903c:	e8 99 fc ff ff       	call   808cda <notify_server>
  809041:	bf 01 00 00 00       	mov    edi,0x1
  809046:	e8 d5 7d bf ff       	call   400e20 <exit@plt>

000000000080904b <seghandler>:
  80904b:	48 83 ec 08          	sub    rsp,0x8
  80904f:	83 3d b2 34 20 00 00 	cmp    DWORD PTR [rip+0x2034b2],0x0        # a0c508 <is_checker>
  809056:	74 16                	je     80906e <seghandler+0x23>
  809058:	48 8d 3d 9e 14 00 00 	lea    rdi,[rip+0x149e]        # 80a4fd <_IO_stdin_used+0x43d>
  80905f:	e8 5c 7c bf ff       	call   400cc0 <puts@plt>
  809064:	b8 00 00 00 00       	mov    eax,0x0
  809069:	e8 e2 fb ff ff       	call   808c50 <check_fail>
  80906e:	48 8d 3d f3 15 00 00 	lea    rdi,[rip+0x15f3]        # 80a668 <_IO_stdin_used+0x5a8>
  809075:	e8 46 7c bf ff       	call   400cc0 <puts@plt>
  80907a:	48 8d 3d 66 14 00 00 	lea    rdi,[rip+0x1466]        # 80a4e7 <_IO_stdin_used+0x427>
  809081:	e8 3a 7c bf ff       	call   400cc0 <puts@plt>
  809086:	be 00 00 00 00       	mov    esi,0x0
  80908b:	bf 00 00 00 00       	mov    edi,0x0
  809090:	e8 45 fc ff ff       	call   808cda <notify_server>
  809095:	bf 01 00 00 00       	mov    edi,0x1
  80909a:	e8 81 7d bf ff       	call   400e20 <exit@plt>

000000000080909f <illegalhandler>:
  80909f:	48 83 ec 08          	sub    rsp,0x8
  8090a3:	83 3d 5e 34 20 00 00 	cmp    DWORD PTR [rip+0x20345e],0x0        # a0c508 <is_checker>
  8090aa:	74 16                	je     8090c2 <illegalhandler+0x23>
  8090ac:	48 8d 3d 5d 14 00 00 	lea    rdi,[rip+0x145d]        # 80a510 <_IO_stdin_used+0x450>
  8090b3:	e8 08 7c bf ff       	call   400cc0 <puts@plt>
  8090b8:	b8 00 00 00 00       	mov    eax,0x0
  8090bd:	e8 8e fb ff ff       	call   808c50 <check_fail>
  8090c2:	48 8d 3d c7 15 00 00 	lea    rdi,[rip+0x15c7]        # 80a690 <_IO_stdin_used+0x5d0>
  8090c9:	e8 f2 7b bf ff       	call   400cc0 <puts@plt>
  8090ce:	48 8d 3d 12 14 00 00 	lea    rdi,[rip+0x1412]        # 80a4e7 <_IO_stdin_used+0x427>
  8090d5:	e8 e6 7b bf ff       	call   400cc0 <puts@plt>
  8090da:	be 00 00 00 00       	mov    esi,0x0
  8090df:	bf 00 00 00 00       	mov    edi,0x0
  8090e4:	e8 f1 fb ff ff       	call   808cda <notify_server>
  8090e9:	bf 01 00 00 00       	mov    edi,0x1
  8090ee:	e8 2d 7d bf ff       	call   400e20 <exit@plt>

00000000008090f3 <sigalrmhandler>:
  8090f3:	48 83 ec 08          	sub    rsp,0x8
  8090f7:	83 3d 0a 34 20 00 00 	cmp    DWORD PTR [rip+0x20340a],0x0        # a0c508 <is_checker>
  8090fe:	74 16                	je     809116 <sigalrmhandler+0x23>
  809100:	48 8d 3d 1d 14 00 00 	lea    rdi,[rip+0x141d]        # 80a524 <_IO_stdin_used+0x464>
  809107:	e8 b4 7b bf ff       	call   400cc0 <puts@plt>
  80910c:	b8 00 00 00 00       	mov    eax,0x0
  809111:	e8 3a fb ff ff       	call   808c50 <check_fail>
  809116:	ba 05 00 00 00       	mov    edx,0x5
  80911b:	48 8d 35 9e 15 00 00 	lea    rsi,[rip+0x159e]        # 80a6c0 <_IO_stdin_used+0x600>
  809122:	bf 01 00 00 00       	mov    edi,0x1
  809127:	b8 00 00 00 00       	mov    eax,0x0
  80912c:	e8 af 7c bf ff       	call   400de0 <__printf_chk@plt>
  809131:	be 00 00 00 00       	mov    esi,0x0
  809136:	bf 00 00 00 00       	mov    edi,0x0
  80913b:	e8 9a fb ff ff       	call   808cda <notify_server>
  809140:	bf 01 00 00 00       	mov    edi,0x1
  809145:	e8 d6 7c bf ff       	call   400e20 <exit@plt>

000000000080914a <launch>:
  80914a:	55                   	push   rbp
  80914b:	48 89 e5             	mov    rbp,rsp
  80914e:	48 83 ec 10          	sub    rsp,0x10
  809152:	48 89 fa             	mov    rdx,rdi
  809155:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  80915c:	00 00 
  80915e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  809162:	31 c0                	xor    eax,eax
  809164:	48 8d 47 1e          	lea    rax,[rdi+0x1e]
  809168:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
  80916c:	48 29 c4             	sub    rsp,rax
  80916f:	48 8d 7c 24 0f       	lea    rdi,[rsp+0xf]
  809174:	48 83 e7 f0          	and    rdi,0xfffffffffffffff0
  809178:	be f4 00 00 00       	mov    esi,0xf4
  80917d:	e8 7e 7b bf ff       	call   400d00 <memset@plt>
  809182:	48 8b 05 17 33 20 00 	mov    rax,QWORD PTR [rip+0x203317]        # a0c4a0 <stdin@@GLIBC_2.2.5>
  809189:	48 39 05 60 33 20 00 	cmp    QWORD PTR [rip+0x203360],rax        # a0c4f0 <infile>
  809190:	74 3a                	je     8091cc <launch+0x82>
  809192:	c7 05 60 33 20 00 00 	mov    DWORD PTR [rip+0x203360],0x0        # a0c4fc <vlevel>
  809199:	00 00 00 
  80919c:	b8 00 00 00 00       	mov    eax,0x0
  8091a1:	e8 0f fa ff ff       	call   808bb5 <test>
  8091a6:	83 3d 5b 33 20 00 00 	cmp    DWORD PTR [rip+0x20335b],0x0        # a0c508 <is_checker>
  8091ad:	75 35                	jne    8091e4 <launch+0x9a>
  8091af:	48 8d 3d 8e 13 00 00 	lea    rdi,[rip+0x138e]        # 80a544 <_IO_stdin_used+0x484>
  8091b6:	e8 05 7b bf ff       	call   400cc0 <puts@plt>
  8091bb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  8091bf:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  8091c6:	00 00 
  8091c8:	75 30                	jne    8091fa <launch+0xb0>
  8091ca:	c9                   	leave  
  8091cb:	c3                   	ret    
  8091cc:	48 8d 35 59 13 00 00 	lea    rsi,[rip+0x1359]        # 80a52c <_IO_stdin_used+0x46c>
  8091d3:	bf 01 00 00 00       	mov    edi,0x1
  8091d8:	b8 00 00 00 00       	mov    eax,0x0
  8091dd:	e8 fe 7b bf ff       	call   400de0 <__printf_chk@plt>
  8091e2:	eb ae                	jmp    809192 <launch+0x48>
  8091e4:	48 8d 3d 4e 13 00 00 	lea    rdi,[rip+0x134e]        # 80a539 <_IO_stdin_used+0x479>
  8091eb:	e8 d0 7a bf ff       	call   400cc0 <puts@plt>
  8091f0:	b8 00 00 00 00       	mov    eax,0x0
  8091f5:	e8 56 fa ff ff       	call   808c50 <check_fail>
  8091fa:	e8 e1 7a bf ff       	call   400ce0 <__stack_chk_fail@plt>

00000000008091ff <stable_launch>:
  8091ff:	53                   	push   rbx
  809200:	48 89 3d e1 32 20 00 	mov    QWORD PTR [rip+0x2032e1],rdi        # a0c4e8 <global_offset>
  809207:	41 b9 00 00 00 00    	mov    r9d,0x0
  80920d:	41 b8 00 00 00 00    	mov    r8d,0x0
  809213:	b9 32 01 00 00       	mov    ecx,0x132
  809218:	ba 07 00 00 00       	mov    edx,0x7
  80921d:	be 00 00 10 00       	mov    esi,0x100000
  809222:	bf 00 60 58 55       	mov    edi,0x55586000
  809227:	e8 c4 7a bf ff       	call   400cf0 <mmap@plt>
  80922c:	48 89 c3             	mov    rbx,rax
  80922f:	48 3d 00 60 58 55    	cmp    rax,0x55586000
  809235:	75 43                	jne    80927a <stable_launch+0x7b>
  809237:	48 8d 90 f8 ff 0f 00 	lea    rdx,[rax+0xffff8]
  80923e:	48 89 15 e3 3e 20 00 	mov    QWORD PTR [rip+0x203ee3],rdx        # a0d128 <stack_top>
  809245:	48 89 e0             	mov    rax,rsp
  809248:	48 89 d4             	mov    rsp,rdx
  80924b:	48 89 c2             	mov    rdx,rax
  80924e:	48 89 15 8b 32 20 00 	mov    QWORD PTR [rip+0x20328b],rdx        # a0c4e0 <global_save_stack>
  809255:	48 8b 3d 8c 32 20 00 	mov    rdi,QWORD PTR [rip+0x20328c]        # a0c4e8 <global_offset>
  80925c:	e8 e9 fe ff ff       	call   80914a <launch>
  809261:	48 8b 05 78 32 20 00 	mov    rax,QWORD PTR [rip+0x203278]        # a0c4e0 <global_save_stack>
  809268:	48 89 c4             	mov    rsp,rax
  80926b:	be 00 00 10 00       	mov    esi,0x100000
  809270:	48 89 df             	mov    rdi,rbx
  809273:	e8 58 7b bf ff       	call   400dd0 <munmap@plt>
  809278:	5b                   	pop    rbx
  809279:	c3                   	ret    
  80927a:	be 00 00 10 00       	mov    esi,0x100000
  80927f:	48 89 c7             	mov    rdi,rax
  809282:	e8 49 7b bf ff       	call   400dd0 <munmap@plt>
  809287:	b9 00 60 58 55       	mov    ecx,0x55586000
  80928c:	48 8d 15 65 14 00 00 	lea    rdx,[rip+0x1465]        # 80a6f8 <_IO_stdin_used+0x638>
  809293:	be 01 00 00 00       	mov    esi,0x1
  809298:	48 8b 3d 21 32 20 00 	mov    rdi,QWORD PTR [rip+0x203221]        # a0c4c0 <stderr@@GLIBC_2.2.5>
  80929f:	b8 00 00 00 00       	mov    eax,0x0
  8092a4:	e8 97 7b bf ff       	call   400e40 <__fprintf_chk@plt>
  8092a9:	bf 01 00 00 00       	mov    edi,0x1
  8092ae:	e8 6d 7b bf ff       	call   400e20 <exit@plt>

00000000008092b3 <rio_readinitb>:
  8092b3:	89 37                	mov    DWORD PTR [rdi],esi
  8092b5:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
  8092bc:	48 8d 47 10          	lea    rax,[rdi+0x10]
  8092c0:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  8092c4:	c3                   	ret    

00000000008092c5 <sigalrm_handler>:
  8092c5:	48 83 ec 08          	sub    rsp,0x8
  8092c9:	b9 00 00 00 00       	mov    ecx,0x0
  8092ce:	48 8d 15 5b 14 00 00 	lea    rdx,[rip+0x145b]        # 80a730 <trans_char+0x10>
  8092d5:	be 01 00 00 00       	mov    esi,0x1
  8092da:	48 8b 3d df 31 20 00 	mov    rdi,QWORD PTR [rip+0x2031df]        # a0c4c0 <stderr@@GLIBC_2.2.5>
  8092e1:	b8 00 00 00 00       	mov    eax,0x0
  8092e6:	e8 55 7b bf ff       	call   400e40 <__fprintf_chk@plt>
  8092eb:	bf 01 00 00 00       	mov    edi,0x1
  8092f0:	e8 2b 7b bf ff       	call   400e20 <exit@plt>

00000000008092f5 <rio_writen>:
  8092f5:	41 55                	push   r13
  8092f7:	41 54                	push   r12
  8092f9:	55                   	push   rbp
  8092fa:	53                   	push   rbx
  8092fb:	48 83 ec 08          	sub    rsp,0x8
  8092ff:	41 89 fc             	mov    r12d,edi
  809302:	48 89 f5             	mov    rbp,rsi
  809305:	49 89 d5             	mov    r13,rdx
  809308:	48 89 d3             	mov    rbx,rdx
  80930b:	eb 06                	jmp    809313 <rio_writen+0x1e>
  80930d:	48 29 c3             	sub    rbx,rax
  809310:	48 01 c5             	add    rbp,rax
  809313:	48 85 db             	test   rbx,rbx
  809316:	74 24                	je     80933c <rio_writen+0x47>
  809318:	48 89 da             	mov    rdx,rbx
  80931b:	48 89 ee             	mov    rsi,rbp
  80931e:	44 89 e7             	mov    edi,r12d
  809321:	e8 aa 79 bf ff       	call   400cd0 <write@plt>
  809326:	48 85 c0             	test   rax,rax
  809329:	7f e2                	jg     80930d <rio_writen+0x18>
  80932b:	e8 50 79 bf ff       	call   400c80 <__errno_location@plt>
  809330:	83 38 04             	cmp    DWORD PTR [rax],0x4
  809333:	75 15                	jne    80934a <rio_writen+0x55>
  809335:	b8 00 00 00 00       	mov    eax,0x0
  80933a:	eb d1                	jmp    80930d <rio_writen+0x18>
  80933c:	4c 89 e8             	mov    rax,r13
  80933f:	48 83 c4 08          	add    rsp,0x8
  809343:	5b                   	pop    rbx
  809344:	5d                   	pop    rbp
  809345:	41 5c                	pop    r12
  809347:	41 5d                	pop    r13
  809349:	c3                   	ret    
  80934a:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  809351:	eb ec                	jmp    80933f <rio_writen+0x4a>

0000000000809353 <rio_read>:
  809353:	41 55                	push   r13
  809355:	41 54                	push   r12
  809357:	55                   	push   rbp
  809358:	53                   	push   rbx
  809359:	48 83 ec 08          	sub    rsp,0x8
  80935d:	48 89 fb             	mov    rbx,rdi
  809360:	49 89 f5             	mov    r13,rsi
  809363:	49 89 d4             	mov    r12,rdx
  809366:	eb 0a                	jmp    809372 <rio_read+0x1f>
  809368:	e8 13 79 bf ff       	call   400c80 <__errno_location@plt>
  80936d:	83 38 04             	cmp    DWORD PTR [rax],0x4
  809370:	75 5c                	jne    8093ce <rio_read+0x7b>
  809372:	8b 6b 04             	mov    ebp,DWORD PTR [rbx+0x4]
  809375:	85 ed                	test   ebp,ebp
  809377:	7f 24                	jg     80939d <rio_read+0x4a>
  809379:	48 8d 6b 10          	lea    rbp,[rbx+0x10]
  80937d:	8b 3b                	mov    edi,DWORD PTR [rbx]
  80937f:	ba 00 20 00 00       	mov    edx,0x2000
  809384:	48 89 ee             	mov    rsi,rbp
  809387:	e8 a4 79 bf ff       	call   400d30 <read@plt>
  80938c:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
  80938f:	85 c0                	test   eax,eax
  809391:	78 d5                	js     809368 <rio_read+0x15>
  809393:	85 c0                	test   eax,eax
  809395:	74 40                	je     8093d7 <rio_read+0x84>
  809397:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
  80939b:	eb d5                	jmp    809372 <rio_read+0x1f>
  80939d:	89 e8                	mov    eax,ebp
  80939f:	4c 39 e0             	cmp    rax,r12
  8093a2:	72 03                	jb     8093a7 <rio_read+0x54>
  8093a4:	44 89 e5             	mov    ebp,r12d
  8093a7:	4c 63 e5             	movsxd r12,ebp
  8093aa:	48 8b 73 08          	mov    rsi,QWORD PTR [rbx+0x8]
  8093ae:	4c 89 e2             	mov    rdx,r12
  8093b1:	4c 89 ef             	mov    rdi,r13
  8093b4:	e8 c7 79 bf ff       	call   400d80 <memcpy@plt>
  8093b9:	4c 01 63 08          	add    QWORD PTR [rbx+0x8],r12
  8093bd:	29 6b 04             	sub    DWORD PTR [rbx+0x4],ebp
  8093c0:	4c 89 e0             	mov    rax,r12
  8093c3:	48 83 c4 08          	add    rsp,0x8
  8093c7:	5b                   	pop    rbx
  8093c8:	5d                   	pop    rbp
  8093c9:	41 5c                	pop    r12
  8093cb:	41 5d                	pop    r13
  8093cd:	c3                   	ret    
  8093ce:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  8093d5:	eb ec                	jmp    8093c3 <rio_read+0x70>
  8093d7:	b8 00 00 00 00       	mov    eax,0x0
  8093dc:	eb e5                	jmp    8093c3 <rio_read+0x70>

00000000008093de <rio_readlineb>:
  8093de:	41 55                	push   r13
  8093e0:	41 54                	push   r12
  8093e2:	55                   	push   rbp
  8093e3:	53                   	push   rbx
  8093e4:	48 83 ec 18          	sub    rsp,0x18
  8093e8:	49 89 fd             	mov    r13,rdi
  8093eb:	48 89 f5             	mov    rbp,rsi
  8093ee:	49 89 d4             	mov    r12,rdx
  8093f1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  8093f8:	00 00 
  8093fa:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  8093ff:	31 c0                	xor    eax,eax
  809401:	bb 01 00 00 00       	mov    ebx,0x1
  809406:	4c 39 e3             	cmp    rbx,r12
  809409:	73 47                	jae    809452 <rio_readlineb+0x74>
  80940b:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  809410:	ba 01 00 00 00       	mov    edx,0x1
  809415:	4c 89 ef             	mov    rdi,r13
  809418:	e8 36 ff ff ff       	call   809353 <rio_read>
  80941d:	83 f8 01             	cmp    eax,0x1
  809420:	75 1c                	jne    80943e <rio_readlineb+0x60>
  809422:	48 8d 45 01          	lea    rax,[rbp+0x1]
  809426:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  80942b:	88 55 00             	mov    BYTE PTR [rbp+0x0],dl
  80942e:	80 7c 24 07 0a       	cmp    BYTE PTR [rsp+0x7],0xa
  809433:	74 1a                	je     80944f <rio_readlineb+0x71>
  809435:	48 83 c3 01          	add    rbx,0x1
  809439:	48 89 c5             	mov    rbp,rax
  80943c:	eb c8                	jmp    809406 <rio_readlineb+0x28>
  80943e:	85 c0                	test   eax,eax
  809440:	75 32                	jne    809474 <rio_readlineb+0x96>
  809442:	48 83 fb 01          	cmp    rbx,0x1
  809446:	75 0a                	jne    809452 <rio_readlineb+0x74>
  809448:	b8 00 00 00 00       	mov    eax,0x0
  80944d:	eb 0a                	jmp    809459 <rio_readlineb+0x7b>
  80944f:	48 89 c5             	mov    rbp,rax
  809452:	c6 45 00 00          	mov    BYTE PTR [rbp+0x0],0x0
  809456:	48 89 d8             	mov    rax,rbx
  809459:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  80945e:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  809465:	00 00 
  809467:	75 14                	jne    80947d <rio_readlineb+0x9f>
  809469:	48 83 c4 18          	add    rsp,0x18
  80946d:	5b                   	pop    rbx
  80946e:	5d                   	pop    rbp
  80946f:	41 5c                	pop    r12
  809471:	41 5d                	pop    r13
  809473:	c3                   	ret    
  809474:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  80947b:	eb dc                	jmp    809459 <rio_readlineb+0x7b>
  80947d:	e8 5e 78 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809482 <urlencode>:
  809482:	41 54                	push   r12
  809484:	55                   	push   rbp
  809485:	53                   	push   rbx
  809486:	48 83 ec 10          	sub    rsp,0x10
  80948a:	48 89 fb             	mov    rbx,rdi
  80948d:	48 89 f5             	mov    rbp,rsi
  809490:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  809497:	00 00 
  809499:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  80949e:	31 c0                	xor    eax,eax
  8094a0:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  8094a7:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  8094a9:	48 89 ce             	mov    rsi,rcx
  8094ac:	48 f7 d6             	not    rsi
  8094af:	8d 46 ff             	lea    eax,[rsi-0x1]
  8094b2:	eb 0f                	jmp    8094c3 <urlencode+0x41>
  8094b4:	44 88 45 00          	mov    BYTE PTR [rbp+0x0],r8b
  8094b8:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
  8094bc:	48 83 c3 01          	add    rbx,0x1
  8094c0:	44 89 e0             	mov    eax,r12d
  8094c3:	44 8d 60 ff          	lea    r12d,[rax-0x1]
  8094c7:	85 c0                	test   eax,eax
  8094c9:	0f 84 a8 00 00 00    	je     809577 <urlencode+0xf5>
  8094cf:	44 0f b6 03          	movzx  r8d,BYTE PTR [rbx]
  8094d3:	41 80 f8 2a          	cmp    r8b,0x2a
  8094d7:	0f 94 c2             	sete   dl
  8094da:	41 80 f8 2d          	cmp    r8b,0x2d
  8094de:	0f 94 c0             	sete   al
  8094e1:	08 c2                	or     dl,al
  8094e3:	75 cf                	jne    8094b4 <urlencode+0x32>
  8094e5:	41 80 f8 2e          	cmp    r8b,0x2e
  8094e9:	74 c9                	je     8094b4 <urlencode+0x32>
  8094eb:	41 80 f8 5f          	cmp    r8b,0x5f
  8094ef:	74 c3                	je     8094b4 <urlencode+0x32>
  8094f1:	41 8d 40 d0          	lea    eax,[r8-0x30]
  8094f5:	3c 09                	cmp    al,0x9
  8094f7:	76 bb                	jbe    8094b4 <urlencode+0x32>
  8094f9:	41 8d 40 bf          	lea    eax,[r8-0x41]
  8094fd:	3c 19                	cmp    al,0x19
  8094ff:	76 b3                	jbe    8094b4 <urlencode+0x32>
  809501:	41 8d 40 9f          	lea    eax,[r8-0x61]
  809505:	3c 19                	cmp    al,0x19
  809507:	76 ab                	jbe    8094b4 <urlencode+0x32>
  809509:	41 80 f8 20          	cmp    r8b,0x20
  80950d:	74 56                	je     809565 <urlencode+0xe3>
  80950f:	41 8d 40 e0          	lea    eax,[r8-0x20]
  809513:	3c 5f                	cmp    al,0x5f
  809515:	0f 96 c2             	setbe  dl
  809518:	41 80 f8 09          	cmp    r8b,0x9
  80951c:	0f 94 c0             	sete   al
  80951f:	08 c2                	or     dl,al
  809521:	74 4f                	je     809572 <urlencode+0xf0>
  809523:	48 89 e7             	mov    rdi,rsp
  809526:	45 0f b6 c0          	movzx  r8d,r8b
  80952a:	48 8d 0d 97 12 00 00 	lea    rcx,[rip+0x1297]        # 80a7c8 <trans_char+0xa8>
  809531:	ba 08 00 00 00       	mov    edx,0x8
  809536:	be 01 00 00 00       	mov    esi,0x1
  80953b:	b8 00 00 00 00       	mov    eax,0x0
  809540:	e8 0b 79 bf ff       	call   400e50 <__sprintf_chk@plt>
  809545:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
  809549:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
  80954c:	0f b6 44 24 01       	movzx  eax,BYTE PTR [rsp+0x1]
  809551:	88 45 01             	mov    BYTE PTR [rbp+0x1],al
  809554:	0f b6 44 24 02       	movzx  eax,BYTE PTR [rsp+0x2]
  809559:	88 45 02             	mov    BYTE PTR [rbp+0x2],al
  80955c:	48 8d 6d 03          	lea    rbp,[rbp+0x3]
  809560:	e9 57 ff ff ff       	jmp    8094bc <urlencode+0x3a>
  809565:	c6 45 00 2b          	mov    BYTE PTR [rbp+0x0],0x2b
  809569:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
  80956d:	e9 4a ff ff ff       	jmp    8094bc <urlencode+0x3a>
  809572:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809577:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  80957c:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  809583:	00 00 
  809585:	75 09                	jne    809590 <urlencode+0x10e>
  809587:	48 83 c4 10          	add    rsp,0x10
  80958b:	5b                   	pop    rbx
  80958c:	5d                   	pop    rbp
  80958d:	41 5c                	pop    r12
  80958f:	c3                   	ret    
  809590:	e8 4b 77 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809595 <submitr>:
  809595:	41 57                	push   r15
  809597:	41 56                	push   r14
  809599:	41 55                	push   r13
  80959b:	41 54                	push   r12
  80959d:	55                   	push   rbp
  80959e:	53                   	push   rbx
  80959f:	48 81 ec 68 a0 00 00 	sub    rsp,0xa068
  8095a6:	49 89 fd             	mov    r13,rdi
  8095a9:	89 74 24 14          	mov    DWORD PTR [rsp+0x14],esi
  8095ad:	49 89 d7             	mov    r15,rdx
  8095b0:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  8095b5:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  8095ba:	4d 89 ce             	mov    r14,r9
  8095bd:	48 8b ac 24 a0 a0 00 	mov    rbp,QWORD PTR [rsp+0xa0a0]
  8095c4:	00 
  8095c5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  8095cc:	00 00 
  8095ce:	48 89 84 24 58 a0 00 	mov    QWORD PTR [rsp+0xa058],rax
  8095d5:	00 
  8095d6:	31 c0                	xor    eax,eax
  8095d8:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [rsp+0x2c],0x0
  8095df:	00 
  8095e0:	ba 00 00 00 00       	mov    edx,0x0
  8095e5:	be 01 00 00 00       	mov    esi,0x1
  8095ea:	bf 02 00 00 00       	mov    edi,0x2
  8095ef:	e8 6c 78 bf ff       	call   400e60 <socket@plt>
  8095f4:	85 c0                	test   eax,eax
  8095f6:	0f 88 a9 02 00 00    	js     8098a5 <submitr+0x310>
  8095fc:	89 c3                	mov    ebx,eax
  8095fe:	4c 89 ef             	mov    rdi,r13
  809601:	e8 4a 77 bf ff       	call   400d50 <gethostbyname@plt>
  809606:	48 85 c0             	test   rax,rax
  809609:	0f 84 e2 02 00 00    	je     8098f1 <submitr+0x35c>
  80960f:	4c 8d 64 24 30       	lea    r12,[rsp+0x30]
  809614:	48 c7 44 24 32 00 00 	mov    QWORD PTR [rsp+0x32],0x0
  80961b:	00 00 
  80961d:	c7 44 24 3a 00 00 00 	mov    DWORD PTR [rsp+0x3a],0x0
  809624:	00 
  809625:	66 c7 44 24 3e 00 00 	mov    WORD PTR [rsp+0x3e],0x0
  80962c:	66 c7 44 24 30 02 00 	mov    WORD PTR [rsp+0x30],0x2
  809633:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
  809637:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  80963b:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  80963e:	48 8d 7c 24 34       	lea    rdi,[rsp+0x34]
  809643:	b9 0c 00 00 00       	mov    ecx,0xc
  809648:	e8 13 77 bf ff       	call   400d60 <__memmove_chk@plt>
  80964d:	0f b7 44 24 14       	movzx  eax,WORD PTR [rsp+0x14]
  809652:	66 c1 c8 08          	ror    ax,0x8
  809656:	66 89 44 24 32       	mov    WORD PTR [rsp+0x32],ax
  80965b:	ba 10 00 00 00       	mov    edx,0x10
  809660:	4c 89 e6             	mov    rsi,r12
  809663:	89 df                	mov    edi,ebx
  809665:	e8 c6 77 bf ff       	call   400e30 <connect@plt>
  80966a:	85 c0                	test   eax,eax
  80966c:	0f 88 e7 02 00 00    	js     809959 <submitr+0x3c4>
  809672:	48 c7 c6 ff ff ff ff 	mov    rsi,0xffffffffffffffff
  809679:	b8 00 00 00 00       	mov    eax,0x0
  80967e:	48 89 f1             	mov    rcx,rsi
  809681:	4c 89 f7             	mov    rdi,r14
  809684:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  809686:	48 89 ca             	mov    rdx,rcx
  809689:	48 f7 d2             	not    rdx
  80968c:	48 89 f1             	mov    rcx,rsi
  80968f:	4c 89 ff             	mov    rdi,r15
  809692:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  809694:	48 f7 d1             	not    rcx
  809697:	49 89 c8             	mov    r8,rcx
  80969a:	48 89 f1             	mov    rcx,rsi
  80969d:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  8096a2:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  8096a4:	48 f7 d1             	not    rcx
  8096a7:	4d 8d 44 08 fe       	lea    r8,[r8+rcx*1-0x2]
  8096ac:	48 89 f1             	mov    rcx,rsi
  8096af:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  8096b4:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  8096b6:	48 89 c8             	mov    rax,rcx
  8096b9:	48 f7 d0             	not    rax
  8096bc:	49 8d 4c 00 ff       	lea    rcx,[r8+rax*1-0x1]
  8096c1:	48 8d 44 52 fd       	lea    rax,[rdx+rdx*2-0x3]
  8096c6:	48 8d 84 01 80 00 00 	lea    rax,[rcx+rax*1+0x80]
  8096cd:	00 
  8096ce:	48 3d 00 20 00 00    	cmp    rax,0x2000
  8096d4:	0f 87 d9 02 00 00    	ja     8099b3 <submitr+0x41e>
  8096da:	48 8d b4 24 50 40 00 	lea    rsi,[rsp+0x4050]
  8096e1:	00 
  8096e2:	b9 00 04 00 00       	mov    ecx,0x400
  8096e7:	b8 00 00 00 00       	mov    eax,0x0
  8096ec:	48 89 f7             	mov    rdi,rsi
  8096ef:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  8096f2:	4c 89 f7             	mov    rdi,r14
  8096f5:	e8 88 fd ff ff       	call   809482 <urlencode>
  8096fa:	85 c0                	test   eax,eax
  8096fc:	0f 88 24 03 00 00    	js     809a26 <submitr+0x491>
  809702:	4c 8d a4 24 50 20 00 	lea    r12,[rsp+0x2050]
  809709:	00 
  80970a:	41 55                	push   r13
  80970c:	48 8d 84 24 58 40 00 	lea    rax,[rsp+0x4058]
  809713:	00 
  809714:	50                   	push   rax
  809715:	4d 89 f9             	mov    r9,r15
  809718:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
  80971d:	48 8d 0d 34 10 00 00 	lea    rcx,[rip+0x1034]        # 80a758 <trans_char+0x38>
  809724:	ba 00 20 00 00       	mov    edx,0x2000
  809729:	be 01 00 00 00       	mov    esi,0x1
  80972e:	4c 89 e7             	mov    rdi,r12
  809731:	b8 00 00 00 00       	mov    eax,0x0
  809736:	e8 15 77 bf ff       	call   400e50 <__sprintf_chk@plt>
  80973b:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  809742:	b8 00 00 00 00       	mov    eax,0x0
  809747:	4c 89 e7             	mov    rdi,r12
  80974a:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  80974c:	48 89 ca             	mov    rdx,rcx
  80974f:	48 f7 d2             	not    rdx
  809752:	48 8d 52 ff          	lea    rdx,[rdx-0x1]
  809756:	4c 89 e6             	mov    rsi,r12
  809759:	89 df                	mov    edi,ebx
  80975b:	e8 95 fb ff ff       	call   8092f5 <rio_writen>
  809760:	48 83 c4 10          	add    rsp,0x10
  809764:	48 85 c0             	test   rax,rax
  809767:	0f 88 44 03 00 00    	js     809ab1 <submitr+0x51c>
  80976d:	4c 8d 64 24 40       	lea    r12,[rsp+0x40]
  809772:	89 de                	mov    esi,ebx
  809774:	4c 89 e7             	mov    rdi,r12
  809777:	e8 37 fb ff ff       	call   8092b3 <rio_readinitb>
  80977c:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
  809783:	00 
  809784:	ba 00 20 00 00       	mov    edx,0x2000
  809789:	4c 89 e7             	mov    rdi,r12
  80978c:	e8 4d fc ff ff       	call   8093de <rio_readlineb>
  809791:	48 85 c0             	test   rax,rax
  809794:	0f 8e 86 03 00 00    	jle    809b20 <submitr+0x58b>
  80979a:	48 8d 4c 24 2c       	lea    rcx,[rsp+0x2c]
  80979f:	48 8d 94 24 50 60 00 	lea    rdx,[rsp+0x6050]
  8097a6:	00 
  8097a7:	48 8d bc 24 50 20 00 	lea    rdi,[rsp+0x2050]
  8097ae:	00 
  8097af:	4c 8d 84 24 50 80 00 	lea    r8,[rsp+0x8050]
  8097b6:	00 
  8097b7:	48 8d 35 11 10 00 00 	lea    rsi,[rip+0x1011]        # 80a7cf <trans_char+0xaf>
  8097be:	b8 00 00 00 00       	mov    eax,0x0
  8097c3:	e8 f8 75 bf ff       	call   400dc0 <__isoc99_sscanf@plt>
  8097c8:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
  8097cf:	00 
  8097d0:	b9 03 00 00 00       	mov    ecx,0x3
  8097d5:	48 8d 3d 0a 10 00 00 	lea    rdi,[rip+0x100a]        # 80a7e6 <trans_char+0xc6>
  8097dc:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  8097de:	0f 97 c0             	seta   al
  8097e1:	1c 00                	sbb    al,0x0
  8097e3:	84 c0                	test   al,al
  8097e5:	0f 84 b3 03 00 00    	je     809b9e <submitr+0x609>
  8097eb:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
  8097f2:	00 
  8097f3:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  8097f8:	ba 00 20 00 00       	mov    edx,0x2000
  8097fd:	e8 dc fb ff ff       	call   8093de <rio_readlineb>
  809802:	48 85 c0             	test   rax,rax
  809805:	7f c1                	jg     8097c8 <submitr+0x233>
  809807:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  80980e:	3a 20 43 
  809811:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  809818:	20 75 6e 
  80981b:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  80981f:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809823:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  80982a:	74 6f 20 
  80982d:	48 ba 72 65 61 64 20 	movabs rdx,0x6165682064616572
  809834:	68 65 61 
  809837:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  80983b:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  80983f:	48 b8 64 65 72 73 20 	movabs rax,0x6f72662073726564
  809846:	66 72 6f 
  809849:	48 ba 6d 20 74 68 65 	movabs rdx,0x657220656874206d
  809850:	20 72 65 
  809853:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809857:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  80985b:	48 b8 73 75 6c 74 20 	movabs rax,0x72657320746c7573
  809862:	73 65 72 
  809865:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  809869:	c7 45 38 76 65 72 00 	mov    DWORD PTR [rbp+0x38],0x726576
  809870:	89 df                	mov    edi,ebx
  809872:	e8 a9 74 bf ff       	call   400d20 <close@plt>
  809877:	b8 ff ff ff ff       	mov    eax,0xffffffff
  80987c:	48 8b 9c 24 58 a0 00 	mov    rbx,QWORD PTR [rsp+0xa058]
  809883:	00 
  809884:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  80988b:	00 00 
  80988d:	0f 85 7e 04 00 00    	jne    809d11 <submitr+0x77c>
  809893:	48 81 c4 68 a0 00 00 	add    rsp,0xa068
  80989a:	5b                   	pop    rbx
  80989b:	5d                   	pop    rbp
  80989c:	41 5c                	pop    r12
  80989e:	41 5d                	pop    r13
  8098a0:	41 5e                	pop    r14
  8098a2:	41 5f                	pop    r15
  8098a4:	c3                   	ret    
  8098a5:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  8098ac:	3a 20 43 
  8098af:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  8098b6:	20 75 6e 
  8098b9:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  8098bd:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  8098c1:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  8098c8:	74 6f 20 
  8098cb:	48 ba 63 72 65 61 74 	movabs rdx,0x7320657461657263
  8098d2:	65 20 73 
  8098d5:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  8098d9:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  8098dd:	c7 45 20 6f 63 6b 65 	mov    DWORD PTR [rbp+0x20],0x656b636f
  8098e4:	66 c7 45 24 74 00    	mov    WORD PTR [rbp+0x24],0x74
  8098ea:	b8 ff ff ff ff       	mov    eax,0xffffffff
  8098ef:	eb 8b                	jmp    80987c <submitr+0x2e7>
  8098f1:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
  8098f8:	3a 20 44 
  8098fb:	48 ba 4e 53 20 69 73 	movabs rdx,0x6e7520736920534e
  809902:	20 75 6e 
  809905:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809909:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  80990d:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809914:	74 6f 20 
  809917:	48 ba 72 65 73 6f 6c 	movabs rdx,0x2065766c6f736572
  80991e:	76 65 20 
  809921:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  809925:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809929:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
  809930:	72 20 61 
  809933:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809937:	c7 45 28 64 64 72 65 	mov    DWORD PTR [rbp+0x28],0x65726464
  80993e:	66 c7 45 2c 73 73    	mov    WORD PTR [rbp+0x2c],0x7373
  809944:	c6 45 2e 00          	mov    BYTE PTR [rbp+0x2e],0x0
  809948:	89 df                	mov    edi,ebx
  80994a:	e8 d1 73 bf ff       	call   400d20 <close@plt>
  80994f:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809954:	e9 23 ff ff ff       	jmp    80987c <submitr+0x2e7>
  809959:	48 b8 45 72 72 6f 72 	movabs rax,0x55203a726f727245
  809960:	3a 20 55 
  809963:	48 ba 6e 61 62 6c 65 	movabs rdx,0x6f7420656c62616e
  80996a:	20 74 6f 
  80996d:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809971:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809975:	48 b8 20 63 6f 6e 6e 	movabs rax,0x7463656e6e6f6320
  80997c:	65 63 74 
  80997f:	48 ba 20 74 6f 20 74 	movabs rdx,0x20656874206f7420
  809986:	68 65 20 
  809989:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  80998d:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809991:	c7 45 20 73 65 72 76 	mov    DWORD PTR [rbp+0x20],0x76726573
  809998:	66 c7 45 24 65 72    	mov    WORD PTR [rbp+0x24],0x7265
  80999e:	c6 45 26 00          	mov    BYTE PTR [rbp+0x26],0x0
  8099a2:	89 df                	mov    edi,ebx
  8099a4:	e8 77 73 bf ff       	call   400d20 <close@plt>
  8099a9:	b8 ff ff ff ff       	mov    eax,0xffffffff
  8099ae:	e9 c9 fe ff ff       	jmp    80987c <submitr+0x2e7>
  8099b3:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
  8099ba:	3a 20 52 
  8099bd:	48 ba 65 73 75 6c 74 	movabs rdx,0x747320746c757365
  8099c4:	20 73 74 
  8099c7:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  8099cb:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  8099cf:	48 b8 72 69 6e 67 20 	movabs rax,0x6f6f7420676e6972
  8099d6:	74 6f 6f 
  8099d9:	48 ba 20 6c 61 72 67 	movabs rdx,0x202e656772616c20
  8099e0:	65 2e 20 
  8099e3:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  8099e7:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  8099eb:	48 b8 49 6e 63 72 65 	movabs rax,0x6573616572636e49
  8099f2:	61 73 65 
  8099f5:	48 ba 20 53 55 42 4d 	movabs rdx,0x5254494d42555320
  8099fc:	49 54 52 
  8099ff:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809a03:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  809a07:	48 b8 5f 4d 41 58 42 	movabs rax,0x46554258414d5f
  809a0e:	55 46 00 
  809a11:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  809a15:	89 df                	mov    edi,ebx
  809a17:	e8 04 73 bf ff       	call   400d20 <close@plt>
  809a1c:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809a21:	e9 56 fe ff ff       	jmp    80987c <submitr+0x2e7>
  809a26:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
  809a2d:	3a 20 52 
  809a30:	48 ba 65 73 75 6c 74 	movabs rdx,0x747320746c757365
  809a37:	20 73 74 
  809a3a:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809a3e:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809a42:	48 b8 72 69 6e 67 20 	movabs rax,0x6e6f6320676e6972
  809a49:	63 6f 6e 
  809a4c:	48 ba 74 61 69 6e 73 	movabs rdx,0x6e6120736e696174
  809a53:	20 61 6e 
  809a56:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  809a5a:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809a5e:	48 b8 20 69 6c 6c 65 	movabs rax,0x6c6167656c6c6920
  809a65:	67 61 6c 
  809a68:	48 ba 20 6f 72 20 75 	movabs rdx,0x72706e7520726f20
  809a6f:	6e 70 72 
  809a72:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809a76:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  809a7a:	48 b8 69 6e 74 61 62 	movabs rax,0x20656c6261746e69
  809a81:	6c 65 20 
  809a84:	48 ba 63 68 61 72 61 	movabs rdx,0x6574636172616863
  809a8b:	63 74 65 
  809a8e:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  809a92:	48 89 55 38          	mov    QWORD PTR [rbp+0x38],rdx
  809a96:	66 c7 45 40 72 2e    	mov    WORD PTR [rbp+0x40],0x2e72
  809a9c:	c6 45 42 00          	mov    BYTE PTR [rbp+0x42],0x0
  809aa0:	89 df                	mov    edi,ebx
  809aa2:	e8 79 72 bf ff       	call   400d20 <close@plt>
  809aa7:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809aac:	e9 cb fd ff ff       	jmp    80987c <submitr+0x2e7>
  809ab1:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  809ab8:	3a 20 43 
  809abb:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  809ac2:	20 75 6e 
  809ac5:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809ac9:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809acd:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809ad4:	74 6f 20 
  809ad7:	48 ba 77 72 69 74 65 	movabs rdx,0x6f74206574697277
  809ade:	20 74 6f 
  809ae1:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  809ae5:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809ae9:	48 b8 20 74 68 65 20 	movabs rax,0x7365722065687420
  809af0:	72 65 73 
  809af3:	48 ba 75 6c 74 20 73 	movabs rdx,0x7672657320746c75
  809afa:	65 72 76 
  809afd:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809b01:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  809b05:	66 c7 45 30 65 72    	mov    WORD PTR [rbp+0x30],0x7265
  809b0b:	c6 45 32 00          	mov    BYTE PTR [rbp+0x32],0x0
  809b0f:	89 df                	mov    edi,ebx
  809b11:	e8 0a 72 bf ff       	call   400d20 <close@plt>
  809b16:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809b1b:	e9 5c fd ff ff       	jmp    80987c <submitr+0x2e7>
  809b20:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  809b27:	3a 20 43 
  809b2a:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  809b31:	20 75 6e 
  809b34:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809b38:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809b3c:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809b43:	74 6f 20 
  809b46:	48 ba 72 65 61 64 20 	movabs rdx,0x7269662064616572
  809b4d:	66 69 72 
  809b50:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  809b54:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809b58:	48 b8 73 74 20 68 65 	movabs rax,0x6564616568207473
  809b5f:	61 64 65 
  809b62:	48 ba 72 20 66 72 6f 	movabs rdx,0x72206d6f72662072
  809b69:	6d 20 72 
  809b6c:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809b70:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  809b74:	48 b8 65 73 75 6c 74 	movabs rax,0x657320746c757365
  809b7b:	20 73 65 
  809b7e:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  809b82:	c7 45 38 72 76 65 72 	mov    DWORD PTR [rbp+0x38],0x72657672
  809b89:	c6 45 3c 00          	mov    BYTE PTR [rbp+0x3c],0x0
  809b8d:	89 df                	mov    edi,ebx
  809b8f:	e8 8c 71 bf ff       	call   400d20 <close@plt>
  809b94:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809b99:	e9 de fc ff ff       	jmp    80987c <submitr+0x2e7>
  809b9e:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
  809ba5:	00 
  809ba6:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  809bab:	ba 00 20 00 00       	mov    edx,0x2000
  809bb0:	e8 29 f8 ff ff       	call   8093de <rio_readlineb>
  809bb5:	48 85 c0             	test   rax,rax
  809bb8:	0f 8e 96 00 00 00    	jle    809c54 <submitr+0x6bf>
  809bbe:	44 8b 44 24 2c       	mov    r8d,DWORD PTR [rsp+0x2c]
  809bc3:	41 81 f8 c8 00 00 00 	cmp    r8d,0xc8
  809bca:	0f 85 08 01 00 00    	jne    809cd8 <submitr+0x743>
  809bd0:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
  809bd7:	00 
  809bd8:	48 89 ef             	mov    rdi,rbp
  809bdb:	e8 d0 70 bf ff       	call   400cb0 <strcpy@plt>
  809be0:	89 df                	mov    edi,ebx
  809be2:	e8 39 71 bf ff       	call   400d20 <close@plt>
  809be7:	b9 04 00 00 00       	mov    ecx,0x4
  809bec:	48 8d 3d ed 0b 00 00 	lea    rdi,[rip+0xbed]        # 80a7e0 <trans_char+0xc0>
  809bf3:	48 89 ee             	mov    rsi,rbp
  809bf6:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  809bf8:	0f 97 c0             	seta   al
  809bfb:	1c 00                	sbb    al,0x0
  809bfd:	0f be c0             	movsx  eax,al
  809c00:	85 c0                	test   eax,eax
  809c02:	0f 84 74 fc ff ff    	je     80987c <submitr+0x2e7>
  809c08:	b9 05 00 00 00       	mov    ecx,0x5
  809c0d:	48 8d 3d d0 0b 00 00 	lea    rdi,[rip+0xbd0]        # 80a7e4 <trans_char+0xc4>
  809c14:	48 89 ee             	mov    rsi,rbp
  809c17:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  809c19:	0f 97 c0             	seta   al
  809c1c:	1c 00                	sbb    al,0x0
  809c1e:	0f be c0             	movsx  eax,al
  809c21:	85 c0                	test   eax,eax
  809c23:	0f 84 53 fc ff ff    	je     80987c <submitr+0x2e7>
  809c29:	b9 03 00 00 00       	mov    ecx,0x3
  809c2e:	48 8d 3d b4 0b 00 00 	lea    rdi,[rip+0xbb4]        # 80a7e9 <trans_char+0xc9>
  809c35:	48 89 ee             	mov    rsi,rbp
  809c38:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  809c3a:	0f 97 c0             	seta   al
  809c3d:	1c 00                	sbb    al,0x0
  809c3f:	0f be c0             	movsx  eax,al
  809c42:	85 c0                	test   eax,eax
  809c44:	0f 84 32 fc ff ff    	je     80987c <submitr+0x2e7>
  809c4a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809c4f:	e9 28 fc ff ff       	jmp    80987c <submitr+0x2e7>
  809c54:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  809c5b:	3a 20 43 
  809c5e:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  809c65:	20 75 6e 
  809c68:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  809c6c:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
  809c70:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809c77:	74 6f 20 
  809c7a:	48 ba 72 65 61 64 20 	movabs rdx,0x6174732064616572
  809c81:	73 74 61 
  809c84:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  809c88:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
  809c8c:	48 b8 74 75 73 20 6d 	movabs rax,0x7373656d20737574
  809c93:	65 73 73 
  809c96:	48 ba 61 67 65 20 66 	movabs rdx,0x6d6f726620656761
  809c9d:	72 6f 6d 
  809ca0:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  809ca4:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
  809ca8:	48 b8 20 72 65 73 75 	movabs rax,0x20746c7573657220
  809caf:	6c 74 20 
  809cb2:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  809cb6:	c7 45 38 73 65 72 76 	mov    DWORD PTR [rbp+0x38],0x76726573
  809cbd:	66 c7 45 3c 65 72    	mov    WORD PTR [rbp+0x3c],0x7265
  809cc3:	c6 45 3e 00          	mov    BYTE PTR [rbp+0x3e],0x0
  809cc7:	89 df                	mov    edi,ebx
  809cc9:	e8 52 70 bf ff       	call   400d20 <close@plt>
  809cce:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809cd3:	e9 a4 fb ff ff       	jmp    80987c <submitr+0x2e7>
  809cd8:	4c 8d 8c 24 50 80 00 	lea    r9,[rsp+0x8050]
  809cdf:	00 
  809ce0:	48 8d 0d b1 0a 00 00 	lea    rcx,[rip+0xab1]        # 80a798 <trans_char+0x78>
  809ce7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
  809cee:	be 01 00 00 00       	mov    esi,0x1
  809cf3:	48 89 ef             	mov    rdi,rbp
  809cf6:	b8 00 00 00 00       	mov    eax,0x0
  809cfb:	e8 50 71 bf ff       	call   400e50 <__sprintf_chk@plt>
  809d00:	89 df                	mov    edi,ebx
  809d02:	e8 19 70 bf ff       	call   400d20 <close@plt>
  809d07:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809d0c:	e9 6b fb ff ff       	jmp    80987c <submitr+0x2e7>
  809d11:	e8 ca 6f bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809d16 <init_timeout>:
  809d16:	85 ff                	test   edi,edi
  809d18:	74 28                	je     809d42 <init_timeout+0x2c>
  809d1a:	53                   	push   rbx
  809d1b:	89 fb                	mov    ebx,edi
  809d1d:	85 ff                	test   edi,edi
  809d1f:	78 1a                	js     809d3b <init_timeout+0x25>
  809d21:	48 8d 35 9d f5 ff ff 	lea    rsi,[rip+0xfffffffffffff59d]        # 8092c5 <sigalrm_handler>
  809d28:	bf 0e 00 00 00       	mov    edi,0xe
  809d2d:	e8 0e 70 bf ff       	call   400d40 <signal@plt>
  809d32:	89 df                	mov    edi,ebx
  809d34:	e8 d7 6f bf ff       	call   400d10 <alarm@plt>
  809d39:	5b                   	pop    rbx
  809d3a:	c3                   	ret    
  809d3b:	bb 00 00 00 00       	mov    ebx,0x0
  809d40:	eb df                	jmp    809d21 <init_timeout+0xb>
  809d42:	f3 c3                	repz ret 

0000000000809d44 <init_driver>:
  809d44:	41 54                	push   r12
  809d46:	55                   	push   rbp
  809d47:	53                   	push   rbx
  809d48:	48 83 ec 20          	sub    rsp,0x20
  809d4c:	49 89 fc             	mov    r12,rdi
  809d4f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  809d56:	00 00 
  809d58:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  809d5d:	31 c0                	xor    eax,eax
  809d5f:	be 01 00 00 00       	mov    esi,0x1
  809d64:	bf 0d 00 00 00       	mov    edi,0xd
  809d69:	e8 d2 6f bf ff       	call   400d40 <signal@plt>
  809d6e:	be 01 00 00 00       	mov    esi,0x1
  809d73:	bf 1d 00 00 00       	mov    edi,0x1d
  809d78:	e8 c3 6f bf ff       	call   400d40 <signal@plt>
  809d7d:	be 01 00 00 00       	mov    esi,0x1
  809d82:	bf 1d 00 00 00       	mov    edi,0x1d
  809d87:	e8 b4 6f bf ff       	call   400d40 <signal@plt>
  809d8c:	ba 00 00 00 00       	mov    edx,0x0
  809d91:	be 01 00 00 00       	mov    esi,0x1
  809d96:	bf 02 00 00 00       	mov    edi,0x2
  809d9b:	e8 c0 70 bf ff       	call   400e60 <socket@plt>
  809da0:	85 c0                	test   eax,eax
  809da2:	0f 88 a3 00 00 00    	js     809e4b <init_driver+0x107>
  809da8:	89 c3                	mov    ebx,eax
  809daa:	48 8d 3d 60 05 00 00 	lea    rdi,[rip+0x560]        # 80a311 <_IO_stdin_used+0x251>
  809db1:	e8 9a 6f bf ff       	call   400d50 <gethostbyname@plt>
  809db6:	48 85 c0             	test   rax,rax
  809db9:	0f 84 df 00 00 00    	je     809e9e <init_driver+0x15a>
  809dbf:	48 89 e5             	mov    rbp,rsp
  809dc2:	48 c7 44 24 02 00 00 	mov    QWORD PTR [rsp+0x2],0x0
  809dc9:	00 00 
  809dcb:	c7 45 0a 00 00 00 00 	mov    DWORD PTR [rbp+0xa],0x0
  809dd2:	66 c7 45 0e 00 00    	mov    WORD PTR [rbp+0xe],0x0
  809dd8:	66 c7 04 24 02 00    	mov    WORD PTR [rsp],0x2
  809dde:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
  809de2:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  809de6:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  809de9:	48 8d 7d 04          	lea    rdi,[rbp+0x4]
  809ded:	b9 0c 00 00 00       	mov    ecx,0xc
  809df2:	e8 69 6f bf ff       	call   400d60 <__memmove_chk@plt>
  809df7:	66 c7 44 24 02 3c 9a 	mov    WORD PTR [rsp+0x2],0x9a3c
  809dfe:	ba 10 00 00 00       	mov    edx,0x10
  809e03:	48 89 ee             	mov    rsi,rbp
  809e06:	89 df                	mov    edi,ebx
  809e08:	e8 23 70 bf ff       	call   400e30 <connect@plt>
  809e0d:	85 c0                	test   eax,eax
  809e0f:	0f 88 fb 00 00 00    	js     809f10 <init_driver+0x1cc>
  809e15:	89 df                	mov    edi,ebx
  809e17:	e8 04 6f bf ff       	call   400d20 <close@plt>
  809e1c:	66 41 c7 04 24 4f 4b 	mov    WORD PTR [r12],0x4b4f
  809e23:	41 c6 44 24 02 00    	mov    BYTE PTR [r12+0x2],0x0
  809e29:	b8 00 00 00 00       	mov    eax,0x0
  809e2e:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
  809e33:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  809e3a:	00 00 
  809e3c:	0f 85 28 01 00 00    	jne    809f6a <init_driver+0x226>
  809e42:	48 83 c4 20          	add    rsp,0x20
  809e46:	5b                   	pop    rbx
  809e47:	5d                   	pop    rbp
  809e48:	41 5c                	pop    r12
  809e4a:	c3                   	ret    
  809e4b:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  809e52:	3a 20 43 
  809e55:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
  809e5c:	20 75 6e 
  809e5f:	49 89 04 24          	mov    QWORD PTR [r12],rax
  809e63:	49 89 54 24 08       	mov    QWORD PTR [r12+0x8],rdx
  809e68:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809e6f:	74 6f 20 
  809e72:	48 ba 63 72 65 61 74 	movabs rdx,0x7320657461657263
  809e79:	65 20 73 
  809e7c:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  809e81:	49 89 54 24 18       	mov    QWORD PTR [r12+0x18],rdx
  809e86:	41 c7 44 24 20 6f 63 	mov    DWORD PTR [r12+0x20],0x656b636f
  809e8d:	6b 65 
  809e8f:	66 41 c7 44 24 24 74 	mov    WORD PTR [r12+0x24],0x74
  809e96:	00 
  809e97:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809e9c:	eb 90                	jmp    809e2e <init_driver+0xea>
  809e9e:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
  809ea5:	3a 20 44 
  809ea8:	48 ba 4e 53 20 69 73 	movabs rdx,0x6e7520736920534e
  809eaf:	20 75 6e 
  809eb2:	49 89 04 24          	mov    QWORD PTR [r12],rax
  809eb6:	49 89 54 24 08       	mov    QWORD PTR [r12+0x8],rdx
  809ebb:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  809ec2:	74 6f 20 
  809ec5:	48 ba 72 65 73 6f 6c 	movabs rdx,0x2065766c6f736572
  809ecc:	76 65 20 
  809ecf:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  809ed4:	49 89 54 24 18       	mov    QWORD PTR [r12+0x18],rdx
  809ed9:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
  809ee0:	72 20 61 
  809ee3:	49 89 44 24 20       	mov    QWORD PTR [r12+0x20],rax
  809ee8:	41 c7 44 24 28 64 64 	mov    DWORD PTR [r12+0x28],0x65726464
  809eef:	72 65 
  809ef1:	66 41 c7 44 24 2c 73 	mov    WORD PTR [r12+0x2c],0x7373
  809ef8:	73 
  809ef9:	41 c6 44 24 2e 00    	mov    BYTE PTR [r12+0x2e],0x0
  809eff:	89 df                	mov    edi,ebx
  809f01:	e8 1a 6e bf ff       	call   400d20 <close@plt>
  809f06:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809f0b:	e9 1e ff ff ff       	jmp    809e2e <init_driver+0xea>
  809f10:	48 b8 45 72 72 6f 72 	movabs rax,0x55203a726f727245
  809f17:	3a 20 55 
  809f1a:	48 ba 6e 61 62 6c 65 	movabs rdx,0x6f7420656c62616e
  809f21:	20 74 6f 
  809f24:	49 89 04 24          	mov    QWORD PTR [r12],rax
  809f28:	49 89 54 24 08       	mov    QWORD PTR [r12+0x8],rdx
  809f2d:	48 b8 20 63 6f 6e 6e 	movabs rax,0x7463656e6e6f6320
  809f34:	65 63 74 
  809f37:	48 ba 20 74 6f 20 73 	movabs rdx,0x76726573206f7420
  809f3e:	65 72 76 
  809f41:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  809f46:	49 89 54 24 18       	mov    QWORD PTR [r12+0x18],rdx
  809f4b:	66 41 c7 44 24 20 65 	mov    WORD PTR [r12+0x20],0x7265
  809f52:	72 
  809f53:	41 c6 44 24 22 00    	mov    BYTE PTR [r12+0x22],0x0
  809f59:	89 df                	mov    edi,ebx
  809f5b:	e8 c0 6d bf ff       	call   400d20 <close@plt>
  809f60:	b8 ff ff ff ff       	mov    eax,0xffffffff
  809f65:	e9 c4 fe ff ff       	jmp    809e2e <init_driver+0xea>
  809f6a:	e8 71 6d bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809f6f <driver_post>:
  809f6f:	53                   	push   rbx
  809f70:	4c 89 cb             	mov    rbx,r9
  809f73:	45 85 c0             	test   r8d,r8d
  809f76:	75 18                	jne    809f90 <driver_post+0x21>
  809f78:	48 85 ff             	test   rdi,rdi
  809f7b:	74 05                	je     809f82 <driver_post+0x13>
  809f7d:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  809f80:	75 37                	jne    809fb9 <driver_post+0x4a>
  809f82:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
  809f87:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
  809f8b:	44 89 c0             	mov    eax,r8d
  809f8e:	5b                   	pop    rbx
  809f8f:	c3                   	ret    
  809f90:	48 89 ca             	mov    rdx,rcx
  809f93:	48 8d 35 52 08 00 00 	lea    rsi,[rip+0x852]        # 80a7ec <trans_char+0xcc>
  809f9a:	bf 01 00 00 00       	mov    edi,0x1
  809f9f:	b8 00 00 00 00       	mov    eax,0x0
  809fa4:	e8 37 6e bf ff       	call   400de0 <__printf_chk@plt>
  809fa9:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
  809fae:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
  809fb2:	b8 00 00 00 00       	mov    eax,0x0
  809fb7:	eb d5                	jmp    809f8e <driver_post+0x1f>
  809fb9:	48 83 ec 08          	sub    rsp,0x8
  809fbd:	41 51                	push   r9
  809fbf:	49 89 c9             	mov    r9,rcx
  809fc2:	49 89 d0             	mov    r8,rdx
  809fc5:	48 89 f9             	mov    rcx,rdi
  809fc8:	48 89 f2             	mov    rdx,rsi
  809fcb:	be 9a 3c 00 00       	mov    esi,0x3c9a
  809fd0:	48 8d 3d 3a 03 00 00 	lea    rdi,[rip+0x33a]        # 80a311 <_IO_stdin_used+0x251>
  809fd7:	e8 b9 f5 ff ff       	call   809595 <submitr>
  809fdc:	48 83 c4 10          	add    rsp,0x10
  809fe0:	eb ac                	jmp    809f8e <driver_post+0x1f>

0000000000809fe2 <check>:
  809fe2:	89 f8                	mov    eax,edi
  809fe4:	c1 e8 1c             	shr    eax,0x1c
  809fe7:	85 c0                	test   eax,eax
  809fe9:	74 1d                	je     80a008 <check+0x26>
  809feb:	b9 00 00 00 00       	mov    ecx,0x0
  809ff0:	83 f9 1f             	cmp    ecx,0x1f
  809ff3:	7f 0d                	jg     80a002 <check+0x20>
  809ff5:	89 f8                	mov    eax,edi
  809ff7:	d3 e8                	shr    eax,cl
  809ff9:	3c 0a                	cmp    al,0xa
  809ffb:	74 11                	je     80a00e <check+0x2c>
  809ffd:	83 c1 08             	add    ecx,0x8
  80a000:	eb ee                	jmp    809ff0 <check+0xe>
  80a002:	b8 01 00 00 00       	mov    eax,0x1
  80a007:	c3                   	ret    
  80a008:	b8 00 00 00 00       	mov    eax,0x0
  80a00d:	c3                   	ret    
  80a00e:	b8 00 00 00 00       	mov    eax,0x0
  80a013:	c3                   	ret    

000000000080a014 <gencookie>:
  80a014:	53                   	push   rbx
  80a015:	83 c7 01             	add    edi,0x1
  80a018:	e8 73 6c bf ff       	call   400c90 <srandom@plt>
  80a01d:	e8 7e 6d bf ff       	call   400da0 <random@plt>
  80a022:	89 c3                	mov    ebx,eax
  80a024:	89 c7                	mov    edi,eax
  80a026:	e8 b7 ff ff ff       	call   809fe2 <check>
  80a02b:	85 c0                	test   eax,eax
  80a02d:	74 ee                	je     80a01d <gencookie+0x9>
  80a02f:	89 d8                	mov    eax,ebx
  80a031:	5b                   	pop    rbx
  80a032:	c3                   	ret    
  80a033:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  80a03a:	00 00 00 
  80a03d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000080a040 <__libc_csu_init>:
  80a040:	41 57                	push   r15
  80a042:	41 56                	push   r14
  80a044:	49 89 d7             	mov    r15,rdx
  80a047:	41 55                	push   r13
  80a049:	41 54                	push   r12
  80a04b:	4c 8d 25 be 1d 20 00 	lea    r12,[rip+0x201dbe]        # a0be10 <__frame_dummy_init_array_entry>
  80a052:	55                   	push   rbp
  80a053:	48 8d 2d be 1d 20 00 	lea    rbp,[rip+0x201dbe]        # a0be18 <__do_global_dtors_aux_fini_array_entry>
  80a05a:	53                   	push   rbx
  80a05b:	41 89 fd             	mov    r13d,edi
  80a05e:	49 89 f6             	mov    r14,rsi
  80a061:	4c 29 e5             	sub    rbp,r12
  80a064:	48 83 ec 08          	sub    rsp,0x8
  80a068:	48 c1 fd 03          	sar    rbp,0x3
  80a06c:	e8 d7 6b bf ff       	call   400c48 <_init>
  80a071:	48 85 ed             	test   rbp,rbp
  80a074:	74 20                	je     80a096 <__libc_csu_init+0x56>
  80a076:	31 db                	xor    ebx,ebx
  80a078:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  80a07f:	00 
  80a080:	4c 89 fa             	mov    rdx,r15
  80a083:	4c 89 f6             	mov    rsi,r14
  80a086:	44 89 ef             	mov    edi,r13d
  80a089:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  80a08d:	48 83 c3 01          	add    rbx,0x1
  80a091:	48 39 dd             	cmp    rbp,rbx
  80a094:	75 ea                	jne    80a080 <__libc_csu_init+0x40>
  80a096:	48 83 c4 08          	add    rsp,0x8
  80a09a:	5b                   	pop    rbx
  80a09b:	5d                   	pop    rbp
  80a09c:	41 5c                	pop    r12
  80a09e:	41 5d                	pop    r13
  80a0a0:	41 5e                	pop    r14
  80a0a2:	41 5f                	pop    r15
  80a0a4:	c3                   	ret    
  80a0a5:	90                   	nop
  80a0a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  80a0ad:	00 00 00 

000000000080a0b0 <__libc_csu_fini>:
  80a0b0:	f3 c3                	repz ret 

Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    rsp,0x8
  400c4c:	48 8b 05 a5 b3 60 00 	mov    rax,QWORD PTR [rip+0x60b3a5]        # a0bff8 <__gmon_start__>
  400c53:	48 85 c0             	test   rax,rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	call   rax
  400c5a:	48 83 c4 08          	add    rsp,0x8
  400c5e:	c3                   	ret    

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 b3 60 00    	push   QWORD PTR [rip+0x60b3a2]        # a0c008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 b3 60 00    	jmp    QWORD PTR [rip+0x60b3a4]        # a0c010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400c70 <__snprintf_chk@plt>:
  400c70:	ff 25 a2 b3 60 00    	jmp    QWORD PTR [rip+0x60b3a2]        # a0c018 <__snprintf_chk@GLIBC_2.3.4>
  400c76:	68 00 00 00 00       	push   0x0
  400c7b:	e9 e0 ff ff ff       	jmp    400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a b3 60 00    	jmp    QWORD PTR [rip+0x60b39a]        # a0c020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	push   0x1
  400c8b:	e9 d0 ff ff ff       	jmp    400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 b3 60 00    	jmp    QWORD PTR [rip+0x60b392]        # a0c028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	push   0x2
  400c9b:	e9 c0 ff ff ff       	jmp    400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a b3 60 00    	jmp    QWORD PTR [rip+0x60b38a]        # a0c030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	push   0x3
  400cab:	e9 b0 ff ff ff       	jmp    400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 b3 60 00    	jmp    QWORD PTR [rip+0x60b382]        # a0c038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	push   0x4
  400cbb:	e9 a0 ff ff ff       	jmp    400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a b3 60 00    	jmp    QWORD PTR [rip+0x60b37a]        # a0c040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	push   0x5
  400ccb:	e9 90 ff ff ff       	jmp    400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 b3 60 00    	jmp    QWORD PTR [rip+0x60b372]        # a0c048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	push   0x6
  400cdb:	e9 80 ff ff ff       	jmp    400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a b3 60 00    	jmp    QWORD PTR [rip+0x60b36a]        # a0c050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	push   0x7
  400ceb:	e9 70 ff ff ff       	jmp    400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 b3 60 00    	jmp    QWORD PTR [rip+0x60b362]        # a0c058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	push   0x8
  400cfb:	e9 60 ff ff ff       	jmp    400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a b3 60 00    	jmp    QWORD PTR [rip+0x60b35a]        # a0c060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	push   0x9
  400d0b:	e9 50 ff ff ff       	jmp    400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 b3 60 00    	jmp    QWORD PTR [rip+0x60b352]        # a0c068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	push   0xa
  400d1b:	e9 40 ff ff ff       	jmp    400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a b3 60 00    	jmp    QWORD PTR [rip+0x60b34a]        # a0c070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	push   0xb
  400d2b:	e9 30 ff ff ff       	jmp    400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 b3 60 00    	jmp    QWORD PTR [rip+0x60b342]        # a0c078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	push   0xc
  400d3b:	e9 20 ff ff ff       	jmp    400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a b3 60 00    	jmp    QWORD PTR [rip+0x60b33a]        # a0c080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	push   0xd
  400d4b:	e9 10 ff ff ff       	jmp    400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 b3 60 00    	jmp    QWORD PTR [rip+0x60b332]        # a0c088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	push   0xe
  400d5b:	e9 00 ff ff ff       	jmp    400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a b3 60 00    	jmp    QWORD PTR [rip+0x60b32a]        # a0c090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	push   0xf
  400d6b:	e9 f0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 b3 60 00    	jmp    QWORD PTR [rip+0x60b322]        # a0c098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	push   0x10
  400d7b:	e9 e0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a b3 60 00    	jmp    QWORD PTR [rip+0x60b31a]        # a0c0a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	push   0x11
  400d8b:	e9 d0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 b3 60 00    	jmp    QWORD PTR [rip+0x60b312]        # a0c0a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	push   0x12
  400d9b:	e9 c0 fe ff ff       	jmp    400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a b3 60 00    	jmp    QWORD PTR [rip+0x60b30a]        # a0c0b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	push   0x13
  400dab:	e9 b0 fe ff ff       	jmp    400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 b3 60 00    	jmp    QWORD PTR [rip+0x60b302]        # a0c0b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	push   0x14
  400dbb:	e9 a0 fe ff ff       	jmp    400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa b2 60 00    	jmp    QWORD PTR [rip+0x60b2fa]        # a0c0c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	push   0x15
  400dcb:	e9 90 fe ff ff       	jmp    400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 b2 60 00    	jmp    QWORD PTR [rip+0x60b2f2]        # a0c0c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	push   0x16
  400ddb:	e9 80 fe ff ff       	jmp    400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea b2 60 00    	jmp    QWORD PTR [rip+0x60b2ea]        # a0c0d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	push   0x17
  400deb:	e9 70 fe ff ff       	jmp    400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 b2 60 00    	jmp    QWORD PTR [rip+0x60b2e2]        # a0c0d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	push   0x18
  400dfb:	e9 60 fe ff ff       	jmp    400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da b2 60 00    	jmp    QWORD PTR [rip+0x60b2da]        # a0c0e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	push   0x19
  400e0b:	e9 50 fe ff ff       	jmp    400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 b2 60 00    	jmp    QWORD PTR [rip+0x60b2d2]        # a0c0e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	push   0x1a
  400e1b:	e9 40 fe ff ff       	jmp    400c60 <.plt>

0000000000400e20 <exit@plt>:
  400e20:	ff 25 ca b2 60 00    	jmp    QWORD PTR [rip+0x60b2ca]        # a0c0f0 <exit@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	push   0x1b
  400e2b:	e9 30 fe ff ff       	jmp    400c60 <.plt>

0000000000400e30 <connect@plt>:
  400e30:	ff 25 c2 b2 60 00    	jmp    QWORD PTR [rip+0x60b2c2]        # a0c0f8 <connect@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	push   0x1c
  400e3b:	e9 20 fe ff ff       	jmp    400c60 <.plt>

0000000000400e40 <__fprintf_chk@plt>:
  400e40:	ff 25 ba b2 60 00    	jmp    QWORD PTR [rip+0x60b2ba]        # a0c100 <__fprintf_chk@GLIBC_2.3.4>
  400e46:	68 1d 00 00 00       	push   0x1d
  400e4b:	e9 10 fe ff ff       	jmp    400c60 <.plt>

0000000000400e50 <__sprintf_chk@plt>:
  400e50:	ff 25 b2 b2 60 00    	jmp    QWORD PTR [rip+0x60b2b2]        # a0c108 <__sprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	push   0x1e
  400e5b:	e9 00 fe ff ff       	jmp    400c60 <.plt>

0000000000400e60 <socket@plt>:
  400e60:	ff 25 aa b2 60 00    	jmp    QWORD PTR [rip+0x60b2aa]        # a0c110 <socket@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	push   0x1f
  400e6b:	e9 f0 fd ff ff       	jmp    400c60 <.plt>

Disassembly of section .fini:

000000000080a0b4 <_fini>:
  80a0b4:	48 83 ec 08          	sub    rsp,0x8
  80a0b8:	48 83 c4 08          	add    rsp,0x8
  80a0bc:	c3                   	ret    
