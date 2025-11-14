
./rtarget：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    %ebp,%ebp
  808002:	49 89 d1             	mov    %rdx,%r9
  808005:	5e                   	pop    %rsi
  808006:	48 89 e2             	mov    %rsp,%rdx
  808009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  80800d:	50                   	push   %rax
  80800e:	54                   	push   %rsp
  80800f:	49 c7 c0 d0 a1 80 00 	mov    $0x80a1d0,%r8
  808016:	48 c7 c1 60 a1 80 00 	mov    $0x80a160,%rcx
  80801d:	48 c7 c7 81 82 80 00 	mov    $0x808281,%rdi
  808024:	ff 15 c6 3f 20 00    	callq  *0x203fc6(%rip)        # a0bff0 <__libc_start_main@GLIBC_2.2.5>
  80802a:	f4                   	hlt    
  80802b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000808030 <_dl_relocate_static_pie>:
  808030:	f3 c3                	repz retq 
  808032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  808039:	00 00 00 
  80803c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000808040 <deregister_tm_clones>:
  808040:	55                   	push   %rbp
  808041:	b8 98 c4 a0 00       	mov    $0xa0c498,%eax
  808046:	48 3d 98 c4 a0 00    	cmp    $0xa0c498,%rax
  80804c:	48 89 e5             	mov    %rsp,%rbp
  80804f:	74 17                	je     808068 <deregister_tm_clones+0x28>
  808051:	b8 00 00 00 00       	mov    $0x0,%eax
  808056:	48 85 c0             	test   %rax,%rax
  808059:	74 0d                	je     808068 <deregister_tm_clones+0x28>
  80805b:	5d                   	pop    %rbp
  80805c:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  808061:	ff e0                	jmpq   *%rax
  808063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  808068:	5d                   	pop    %rbp
  808069:	c3                   	retq   
  80806a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000808070 <register_tm_clones>:
  808070:	be 98 c4 a0 00       	mov    $0xa0c498,%esi
  808075:	55                   	push   %rbp
  808076:	48 81 ee 98 c4 a0 00 	sub    $0xa0c498,%rsi
  80807d:	48 89 e5             	mov    %rsp,%rbp
  808080:	48 c1 fe 03          	sar    $0x3,%rsi
  808084:	48 89 f0             	mov    %rsi,%rax
  808087:	48 c1 e8 3f          	shr    $0x3f,%rax
  80808b:	48 01 c6             	add    %rax,%rsi
  80808e:	48 d1 fe             	sar    %rsi
  808091:	74 15                	je     8080a8 <register_tm_clones+0x38>
  808093:	b8 00 00 00 00       	mov    $0x0,%eax
  808098:	48 85 c0             	test   %rax,%rax
  80809b:	74 0b                	je     8080a8 <register_tm_clones+0x38>
  80809d:	5d                   	pop    %rbp
  80809e:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  8080a3:	ff e0                	jmpq   *%rax
  8080a5:	0f 1f 00             	nopl   (%rax)
  8080a8:	5d                   	pop    %rbp
  8080a9:	c3                   	retq   
  8080aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000008080b0 <__do_global_dtors_aux>:
  8080b0:	80 3d 11 44 20 00 00 	cmpb   $0x0,0x204411(%rip)        # a0c4c8 <completed.7698>
  8080b7:	75 17                	jne    8080d0 <__do_global_dtors_aux+0x20>
  8080b9:	55                   	push   %rbp
  8080ba:	48 89 e5             	mov    %rsp,%rbp
  8080bd:	e8 7e ff ff ff       	callq  808040 <deregister_tm_clones>
  8080c2:	c6 05 ff 43 20 00 01 	movb   $0x1,0x2043ff(%rip)        # a0c4c8 <completed.7698>
  8080c9:	5d                   	pop    %rbp
  8080ca:	c3                   	retq   
  8080cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  8080d0:	f3 c3                	repz retq 
  8080d2:	0f 1f 40 00          	nopl   0x0(%rax)
  8080d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  8080dd:	00 00 00 

00000000008080e0 <frame_dummy>:
  8080e0:	55                   	push   %rbp
  8080e1:	48 89 e5             	mov    %rsp,%rbp
  8080e4:	5d                   	pop    %rbp
  8080e5:	eb 89                	jmp    808070 <register_tm_clones>

00000000008080e7 <usage>:
  8080e7:	48 83 ec 08          	sub    $0x8,%rsp
  8080eb:	48 89 fa             	mov    %rdi,%rdx
  8080ee:	83 3d 13 44 20 00 00 	cmpl   $0x0,0x204413(%rip)        # a0c508 <is_checker>
  8080f5:	74 50                	je     808147 <usage+0x60>
  8080f7:	48 8d 35 ea 20 00 00 	lea    0x20ea(%rip),%rsi        # 80a1e8 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    $0x1,%edi
  808103:	b8 00 00 00 00       	mov    $0x0,%eax
  808108:	e8 d3 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80810d:	48 8d 3d 0c 21 00 00 	lea    0x210c(%rip),%rdi        # 80a220 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	callq  400cc0 <puts@plt>
  808119:	48 8d 3d 00 22 00 00 	lea    0x2200(%rip),%rdi        # 80a320 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	callq  400cc0 <puts@plt>
  808125:	48 8d 3d 1c 21 00 00 	lea    0x211c(%rip),%rdi        # 80a248 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	callq  400cc0 <puts@plt>
  808131:	48 8d 3d 02 22 00 00 	lea    0x2202(%rip),%rdi        # 80a33a <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	callq  400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    $0x0,%edi
  808142:	e8 d9 8c bf ff       	callq  400e20 <exit@plt>
  808147:	48 8d 35 08 22 00 00 	lea    0x2208(%rip),%rsi        # 80a356 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    $0x1,%edi
  808153:	b8 00 00 00 00       	mov    $0x0,%eax
  808158:	e8 83 8c bf ff       	callq  400de0 <__printf_chk@plt>
  80815d:	48 8d 3d 0c 21 00 00 	lea    0x210c(%rip),%rdi        # 80a270 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	callq  400cc0 <puts@plt>
  808169:	48 8d 3d 28 21 00 00 	lea    0x2128(%rip),%rdi        # 80a298 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	callq  400cc0 <puts@plt>
  808175:	48 8d 3d f8 21 00 00 	lea    0x21f8(%rip),%rdi        # 80a374 <_IO_stdin_used+0x194>
  80817c:	e8 3f 8b bf ff       	callq  400cc0 <puts@plt>
  808181:	eb ba                	jmp    80813d <usage+0x56>

0000000000808183 <initialize_target>:
  808183:	55                   	push   %rbp
  808184:	53                   	push   %rbx
  808185:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  80818c:	89 f5                	mov    %esi,%ebp
  80818e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808195:	00 00 
  808197:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  80819e:	00 
  80819f:	31 c0                	xor    %eax,%eax
  8081a1:	89 3d 51 43 20 00    	mov    %edi,0x204351(%rip)        # a0c4f8 <check_level>
  8081a7:	8b 3d 83 3f 20 00    	mov    0x203f83(%rip),%edi        # a0c130 <target_id>
  8081ad:	e8 83 1f 00 00       	callq  80a135 <gencookie>
  8081b2:	89 05 4c 43 20 00    	mov    %eax,0x20434c(%rip)        # a0c504 <cookie>
  8081b8:	89 c7                	mov    %eax,%edi
  8081ba:	e8 76 1f 00 00       	callq  80a135 <gencookie>
  8081bf:	89 05 3b 43 20 00    	mov    %eax,0x20433b(%rip)        # a0c500 <authkey>
  8081c5:	8b 05 65 3f 20 00    	mov    0x203f65(%rip),%eax        # a0c130 <target_id>
  8081cb:	8d 78 01             	lea    0x1(%rax),%edi
  8081ce:	e8 bd 8a bf ff       	callq  400c90 <srandom@plt>
  8081d3:	e8 c8 8b bf ff       	callq  400da0 <random@plt>
  8081d8:	89 c7                	mov    %eax,%edi
  8081da:	e8 8d 02 00 00       	callq  80846c <scramble>
  8081df:	89 c3                	mov    %eax,%ebx
  8081e1:	85 ed                	test   %ebp,%ebp
  8081e3:	75 50                	jne    808235 <initialize_target+0xb2>
  8081e5:	b8 00 00 00 00       	mov    $0x0,%eax
  8081ea:	01 d8                	add    %ebx,%eax
  8081ec:	0f b7 c0             	movzwl %ax,%eax
  8081ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  8081f6:	89 c0                	mov    %eax,%eax
  8081f8:	48 89 05 91 42 20 00 	mov    %rax,0x204291(%rip)        # a0c490 <buf_offset>
  8081ff:	c6 05 2a 4f 20 00 72 	movb   $0x72,0x204f2a(%rip)        # a0d130 <target_prefix>
  808206:	83 3d 7b 42 20 00 00 	cmpl   $0x0,0x20427b(%rip)        # a0c488 <notify>
  80820d:	74 09                	je     808218 <initialize_target+0x95>
  80820f:	83 3d f2 42 20 00 00 	cmpl   $0x0,0x2042f2(%rip)        # a0c508 <is_checker>
  808216:	74 35                	je     80824d <initialize_target+0xca>
  808218:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  80821f:	00 
  808220:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808227:	00 00 
  808229:	75 51                	jne    80827c <initialize_target+0xf9>
  80822b:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  808232:	5b                   	pop    %rbx
  808233:	5d                   	pop    %rbp
  808234:	c3                   	retq   
  808235:	bf 00 00 00 00       	mov    $0x0,%edi
  80823a:	e8 51 8b bf ff       	callq  400d90 <time@plt>
  80823f:	89 c7                	mov    %eax,%edi
  808241:	e8 4a 8a bf ff       	callq  400c90 <srandom@plt>
  808246:	e8 55 8b bf ff       	callq  400da0 <random@plt>
  80824b:	eb 9d                	jmp    8081ea <initialize_target+0x67>
  80824d:	48 89 e7             	mov    %rsp,%rdi
  808250:	e8 10 1c 00 00       	callq  809e65 <init_driver>
  808255:	85 c0                	test   %eax,%eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    %rsp,%rdx
  80825c:	48 8d 35 65 20 00 00 	lea    0x2065(%rip),%rsi        # 80a2c8 <_IO_stdin_used+0xe8>
  808263:	bf 01 00 00 00       	mov    $0x1,%edi
  808268:	b8 00 00 00 00       	mov    $0x0,%eax
  80826d:	e8 6e 8b bf ff       	callq  400de0 <__printf_chk@plt>
  808272:	bf 08 00 00 00       	mov    $0x8,%edi
  808277:	e8 a4 8b bf ff       	callq  400e20 <exit@plt>
  80827c:	e8 5f 8a bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808281 <main>:
  808281:	41 56                	push   %r14
  808283:	41 55                	push   %r13
  808285:	41 54                	push   %r12
  808287:	55                   	push   %rbp
  808288:	53                   	push   %rbx
  808289:	41 89 fc             	mov    %edi,%r12d
  80828c:	48 89 f3             	mov    %rsi,%rbx
  80828f:	48 c7 c6 6c 91 80 00 	mov    $0x80916c,%rsi
  808296:	bf 0b 00 00 00       	mov    $0xb,%edi
  80829b:	e8 a0 8a bf ff       	callq  400d40 <signal@plt>
  8082a0:	48 c7 c6 18 91 80 00 	mov    $0x809118,%rsi
  8082a7:	bf 07 00 00 00       	mov    $0x7,%edi
  8082ac:	e8 8f 8a bf ff       	callq  400d40 <signal@plt>
  8082b1:	48 c7 c6 c0 91 80 00 	mov    $0x8091c0,%rsi
  8082b8:	bf 04 00 00 00       	mov    $0x4,%edi
  8082bd:	e8 7e 8a bf ff       	callq  400d40 <signal@plt>
  8082c2:	83 3d 3f 42 20 00 00 	cmpl   $0x0,0x20423f(%rip)        # a0c508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d bb 20 00 00 	lea    0x20bb(%rip),%rbp        # 80a38d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 41 20 00 	mov    0x2041c7(%rip),%rax        # a0c4a0 <stdin@@GLIBC_2.2.5>
  8082d9:	48 89 05 10 42 20 00 	mov    %rax,0x204210(%rip)        # a0c4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8082e6:	41 be 00 00 00 00    	mov    $0x0,%r14d
  8082ec:	e9 8d 00 00 00       	jmpq   80837e <main+0xfd>
  8082f1:	48 c7 c6 14 92 80 00 	mov    $0x809214,%rsi
  8082f8:	bf 0e 00 00 00       	mov    $0xe,%edi
  8082fd:	e8 3e 8a bf ff       	callq  400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    $0x5,%edi
  808307:	e8 04 8a bf ff       	callq  400d10 <alarm@plt>
  80830c:	48 8d 2d 7f 20 00 00 	lea    0x207f(%rip),%rbp        # 80a392 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    (%rbx),%rdi
  808318:	e8 ca fd ff ff       	callq  8080e7 <usage>
  80831d:	48 8d 35 e1 22 00 00 	lea    0x22e1(%rip),%rsi        # 80a605 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 41 20 00 	mov    0x20417d(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	callq  400df0 <fopen@plt>
  808330:	48 89 05 b9 41 20 00 	mov    %rax,0x2041b9(%rip)        # a0c4f0 <infile>
  808337:	48 85 c0             	test   %rax,%rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 41 20 00 	mov    0x204165(%rip),%rcx        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808343:	48 8d 15 50 20 00 00 	lea    0x2050(%rip),%rdx        # 80a39a <_IO_stdin_used+0x1ba>
  80834a:	be 01 00 00 00       	mov    $0x1,%esi
  80834f:	48 8b 3d 6a 41 20 00 	mov    0x20416a(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  808356:	e8 e5 8a bf ff       	callq  400e40 <__fprintf_chk@plt>
  80835b:	b8 01 00 00 00       	mov    $0x1,%eax
  808360:	e9 d9 00 00 00       	jmpq   80843e <main+0x1bd>
  808365:	ba 10 00 00 00       	mov    $0x10,%edx
  80836a:	be 00 00 00 00       	mov    $0x0,%esi
  80836f:	48 8b 3d 32 41 20 00 	mov    0x204132(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  808376:	e8 95 8a bf ff       	callq  400e10 <strtoul@plt>
  80837b:	41 89 c6             	mov    %eax,%r14d
  80837e:	48 89 ea             	mov    %rbp,%rdx
  808381:	48 89 de             	mov    %rbx,%rsi
  808384:	44 89 e7             	mov    %r12d,%edi
  808387:	e8 74 8a bf ff       	callq  400e00 <getopt@plt>
  80838c:	3c ff                	cmp    $0xff,%al
  80838e:	74 62                	je     8083f2 <main+0x171>
  808390:	0f be d0             	movsbl %al,%edx
  808393:	83 e8 61             	sub    $0x61,%eax
  808396:	3c 10                	cmp    $0x10,%al
  808398:	77 3a                	ja     8083d4 <main+0x153>
  80839a:	0f b6 c0             	movzbl %al,%eax
  80839d:	48 8d 0d 34 20 00 00 	lea    0x2034(%rip),%rcx        # 80a3d8 <_IO_stdin_used+0x1f8>
  8083a4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  8083a8:	48 01 c8             	add    %rcx,%rax
  8083ab:	ff e0                	jmpq   *%rax
  8083ad:	ba 0a 00 00 00       	mov    $0xa,%edx
  8083b2:	be 00 00 00 00       	mov    $0x0,%esi
  8083b7:	48 8b 3d ea 40 20 00 	mov    0x2040ea(%rip),%rdi        # a0c4a8 <optarg@@GLIBC_2.2.5>
  8083be:	e8 ad 89 bf ff       	callq  400d70 <strtol@plt>
  8083c3:	41 89 c5             	mov    %eax,%r13d
  8083c6:	eb b6                	jmp    80837e <main+0xfd>
  8083c8:	c7 05 b6 40 20 00 00 	movl   $0x0,0x2040b6(%rip)        # a0c488 <notify>
  8083cf:	00 00 00 
  8083d2:	eb aa                	jmp    80837e <main+0xfd>
  8083d4:	48 8d 35 dc 1f 00 00 	lea    0x1fdc(%rip),%rsi        # 80a3b7 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    $0x1,%edi
  8083e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8083e5:	e8 f6 89 bf ff       	callq  400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    (%rbx),%rdi
  8083ed:	e8 f5 fc ff ff       	callq  8080e7 <usage>
  8083f2:	be 01 00 00 00       	mov    $0x1,%esi
  8083f7:	44 89 ef             	mov    %r13d,%edi
  8083fa:	e8 84 fd ff ff       	callq  808183 <initialize_target>
  8083ff:	83 3d 02 41 20 00 00 	cmpl   $0x0,0x204102(%rip)        # a0c508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 40 20 00 	cmp    %r14d,0x2040f1(%rip)        # a0c500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 40 20 00    	mov    0x2040ed(%rip),%edx        # a0c504 <cookie>
  808417:	48 8d 35 ac 1f 00 00 	lea    0x1fac(%rip),%rsi        # 80a3ca <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    $0x1,%edi
  808423:	b8 00 00 00 00       	mov    $0x0,%eax
  808428:	e8 b3 89 bf ff       	callq  400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 40 20 00 	mov    0x20405c(%rip),%rdi        # a0c490 <buf_offset>
  808434:	e8 32 0e 00 00       	callq  80926b <launch>
  808439:	b8 00 00 00 00       	mov    $0x0,%eax
  80843e:	5b                   	pop    %rbx
  80843f:	5d                   	pop    %rbp
  808440:	41 5c                	pop    %r12
  808442:	41 5d                	pop    %r13
  808444:	41 5e                	pop    %r14
  808446:	c3                   	retq   
  808447:	44 89 f2             	mov    %r14d,%edx
  80844a:	48 8d 35 9f 1e 00 00 	lea    0x1e9f(%rip),%rsi        # 80a2f0 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    $0x1,%edi
  808456:	b8 00 00 00 00       	mov    $0x0,%eax
  80845b:	e8 80 89 bf ff       	callq  400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    $0x0,%eax
  808465:	e8 07 09 00 00       	callq  808d71 <check_fail>
  80846a:	eb a5                	jmp    808411 <main+0x190>

000000000080846c <scramble>:
  80846c:	48 83 ec 38          	sub    $0x38,%rsp
  808470:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808477:	00 00 
  808479:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  80847e:	31 c0                	xor    %eax,%eax
  808480:	eb 10                	jmp    808492 <scramble+0x26>
  808482:	69 d0 23 b4 00 00    	imul   $0xb423,%eax,%edx
  808488:	01 fa                	add    %edi,%edx
  80848a:	89 c1                	mov    %eax,%ecx
  80848c:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  80848f:	83 c0 01             	add    $0x1,%eax
  808492:	83 f8 09             	cmp    $0x9,%eax
  808495:	76 eb                	jbe    808482 <scramble+0x16>
  808497:	8b 04 24             	mov    (%rsp),%eax
  80849a:	69 c0 06 b4 00 00    	imul   $0xb406,%eax,%eax
  8084a0:	89 04 24             	mov    %eax,(%rsp)
  8084a3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8084a7:	69 c0 f5 89 00 00    	imul   $0x89f5,%eax,%eax
  8084ad:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8084b1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8084b5:	69 c0 26 3c 00 00    	imul   $0x3c26,%eax,%eax
  8084bb:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8084bf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8084c3:	69 c0 3e 6a 00 00    	imul   $0x6a3e,%eax,%eax
  8084c9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8084cd:	8b 04 24             	mov    (%rsp),%eax
  8084d0:	69 c0 7b 18 00 00    	imul   $0x187b,%eax,%eax
  8084d6:	89 04 24             	mov    %eax,(%rsp)
  8084d9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8084dd:	69 c0 da b6 00 00    	imul   $0xb6da,%eax,%eax
  8084e3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8084e7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8084eb:	69 c0 98 cb 00 00    	imul   $0xcb98,%eax,%eax
  8084f1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8084f5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8084f9:	69 c0 6c cd 00 00    	imul   $0xcd6c,%eax,%eax
  8084ff:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808503:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808507:	69 c0 d6 3c 00 00    	imul   $0x3cd6,%eax,%eax
  80850d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808511:	8b 04 24             	mov    (%rsp),%eax
  808514:	69 c0 cc bf 00 00    	imul   $0xbfcc,%eax,%eax
  80851a:	89 04 24             	mov    %eax,(%rsp)
  80851d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808521:	69 c0 4c a2 00 00    	imul   $0xa24c,%eax,%eax
  808527:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80852b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  80852f:	69 c0 86 55 00 00    	imul   $0x5586,%eax,%eax
  808535:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808539:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80853d:	69 c0 30 54 00 00    	imul   $0x5430,%eax,%eax
  808543:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808547:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80854b:	69 c0 8f ac 00 00    	imul   $0xac8f,%eax,%eax
  808551:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808555:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808559:	69 c0 eb d0 00 00    	imul   $0xd0eb,%eax,%eax
  80855f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808563:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808567:	69 c0 a0 a6 00 00    	imul   $0xa6a0,%eax,%eax
  80856d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808571:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808575:	69 c0 46 b3 00 00    	imul   $0xb346,%eax,%eax
  80857b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80857f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808583:	69 c0 55 21 00 00    	imul   $0x2155,%eax,%eax
  808589:	89 44 24 10          	mov    %eax,0x10(%rsp)
  80858d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808591:	69 c0 b5 7c 00 00    	imul   $0x7cb5,%eax,%eax
  808597:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80859b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80859f:	69 c0 6d c8 00 00    	imul   $0xc86d,%eax,%eax
  8085a5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8085a9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8085ad:	69 c0 f8 e4 00 00    	imul   $0xe4f8,%eax,%eax
  8085b3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8085b7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085bb:	69 c0 be 48 00 00    	imul   $0x48be,%eax,%eax
  8085c1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085c5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8085c9:	69 c0 cc b2 00 00    	imul   $0xb2cc,%eax,%eax
  8085cf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8085d3:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085d7:	69 c0 78 ad 00 00    	imul   $0xad78,%eax,%eax
  8085dd:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085e1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8085e5:	69 c0 37 eb 00 00    	imul   $0xeb37,%eax,%eax
  8085eb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8085ef:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085f3:	69 c0 6b af 00 00    	imul   $0xaf6b,%eax,%eax
  8085f9:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808601:	69 c0 96 ae 00 00    	imul   $0xae96,%eax,%eax
  808607:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80860b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80860f:	69 c0 71 47 00 00    	imul   $0x4771,%eax,%eax
  808615:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808619:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80861d:	69 c0 df a7 00 00    	imul   $0xa7df,%eax,%eax
  808623:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808627:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80862b:	69 c0 43 f5 00 00    	imul   $0xf543,%eax,%eax
  808631:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808635:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808639:	69 c0 07 bd 00 00    	imul   $0xbd07,%eax,%eax
  80863f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808643:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808647:	69 c0 bc fd 00 00    	imul   $0xfdbc,%eax,%eax
  80864d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808651:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808655:	69 c0 7a cc 00 00    	imul   $0xcc7a,%eax,%eax
  80865b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  80865f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808663:	69 c0 ba 5f 00 00    	imul   $0x5fba,%eax,%eax
  808669:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80866d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808671:	69 c0 a6 aa 00 00    	imul   $0xaaa6,%eax,%eax
  808677:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  80867b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80867f:	69 c0 5f de 00 00    	imul   $0xde5f,%eax,%eax
  808685:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808689:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80868d:	69 c0 6f a7 00 00    	imul   $0xa76f,%eax,%eax
  808693:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808697:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80869b:	69 c0 2f 40 00 00    	imul   $0x402f,%eax,%eax
  8086a1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8086a5:	8b 04 24             	mov    (%rsp),%eax
  8086a8:	69 c0 48 3d 00 00    	imul   $0x3d48,%eax,%eax
  8086ae:	89 04 24             	mov    %eax,(%rsp)
  8086b1:	8b 04 24             	mov    (%rsp),%eax
  8086b4:	69 c0 df 49 00 00    	imul   $0x49df,%eax,%eax
  8086ba:	89 04 24             	mov    %eax,(%rsp)
  8086bd:	8b 04 24             	mov    (%rsp),%eax
  8086c0:	69 c0 ed 5a 00 00    	imul   $0x5aed,%eax,%eax
  8086c6:	89 04 24             	mov    %eax,(%rsp)
  8086c9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8086cd:	69 c0 03 b6 00 00    	imul   $0xb603,%eax,%eax
  8086d3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8086d7:	8b 04 24             	mov    (%rsp),%eax
  8086da:	69 c0 3b fe 00 00    	imul   $0xfe3b,%eax,%eax
  8086e0:	89 04 24             	mov    %eax,(%rsp)
  8086e3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  8086e7:	69 c0 4a 0c 00 00    	imul   $0xc4a,%eax,%eax
  8086ed:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8086f1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8086f5:	69 c0 75 f1 00 00    	imul   $0xf175,%eax,%eax
  8086fb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8086ff:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808703:	69 c0 e4 1e 00 00    	imul   $0x1ee4,%eax,%eax
  808709:	89 44 24 08          	mov    %eax,0x8(%rsp)
  80870d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808711:	69 c0 71 9d 00 00    	imul   $0x9d71,%eax,%eax
  808717:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  80871b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  80871f:	69 c0 c9 1e 00 00    	imul   $0x1ec9,%eax,%eax
  808725:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808729:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80872d:	69 c0 b3 3b 00 00    	imul   $0x3bb3,%eax,%eax
  808733:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808737:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80873b:	69 c0 1a b3 00 00    	imul   $0xb31a,%eax,%eax
  808741:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808745:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808749:	69 c0 ab a6 00 00    	imul   $0xa6ab,%eax,%eax
  80874f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808753:	8b 04 24             	mov    (%rsp),%eax
  808756:	69 c0 f7 75 00 00    	imul   $0x75f7,%eax,%eax
  80875c:	89 04 24             	mov    %eax,(%rsp)
  80875f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808763:	69 c0 98 b8 00 00    	imul   $0xb898,%eax,%eax
  808769:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80876d:	8b 04 24             	mov    (%rsp),%eax
  808770:	69 c0 56 a8 00 00    	imul   $0xa856,%eax,%eax
  808776:	89 04 24             	mov    %eax,(%rsp)
  808779:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  80877d:	69 c0 cf a3 00 00    	imul   $0xa3cf,%eax,%eax
  808783:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808787:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80878b:	69 c0 60 1e 00 00    	imul   $0x1e60,%eax,%eax
  808791:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808795:	8b 04 24             	mov    (%rsp),%eax
  808798:	69 c0 7f eb 00 00    	imul   $0xeb7f,%eax,%eax
  80879e:	89 04 24             	mov    %eax,(%rsp)
  8087a1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8087a5:	69 c0 3f 08 00 00    	imul   $0x83f,%eax,%eax
  8087ab:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8087af:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8087b3:	69 c0 d8 d1 00 00    	imul   $0xd1d8,%eax,%eax
  8087b9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8087bd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8087c1:	69 c0 d4 8f 00 00    	imul   $0x8fd4,%eax,%eax
  8087c7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8087cb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8087cf:	69 c0 17 16 00 00    	imul   $0x1617,%eax,%eax
  8087d5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8087d9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8087dd:	69 c0 c9 71 00 00    	imul   $0x71c9,%eax,%eax
  8087e3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8087e7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8087eb:	69 c0 5a cb 00 00    	imul   $0xcb5a,%eax,%eax
  8087f1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8087f5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8087f9:	69 c0 74 1d 00 00    	imul   $0x1d74,%eax,%eax
  8087ff:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808803:	8b 04 24             	mov    (%rsp),%eax
  808806:	69 c0 16 0f 00 00    	imul   $0xf16,%eax,%eax
  80880c:	89 04 24             	mov    %eax,(%rsp)
  80880f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808813:	69 c0 66 ed 00 00    	imul   $0xed66,%eax,%eax
  808819:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80881d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808821:	69 c0 08 62 00 00    	imul   $0x6208,%eax,%eax
  808827:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80882b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80882f:	69 c0 dc 03 00 00    	imul   $0x3dc,%eax,%eax
  808835:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808839:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80883d:	69 c0 84 19 00 00    	imul   $0x1984,%eax,%eax
  808843:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808847:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80884b:	69 c0 81 10 00 00    	imul   $0x1081,%eax,%eax
  808851:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808855:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808859:	69 c0 68 9e 00 00    	imul   $0x9e68,%eax,%eax
  80885f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808863:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808867:	69 c0 0f bc 00 00    	imul   $0xbc0f,%eax,%eax
  80886d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808871:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808875:	69 c0 45 03 00 00    	imul   $0x345,%eax,%eax
  80887b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80887f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808883:	69 c0 a2 73 00 00    	imul   $0x73a2,%eax,%eax
  808889:	89 44 24 08          	mov    %eax,0x8(%rsp)
  80888d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808891:	69 c0 d8 d8 00 00    	imul   $0xd8d8,%eax,%eax
  808897:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80889b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80889f:	69 c0 6b 98 00 00    	imul   $0x986b,%eax,%eax
  8088a5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8088a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8088ad:	69 c0 2f b2 00 00    	imul   $0xb22f,%eax,%eax
  8088b3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8088b7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8088bb:	69 c0 78 a2 00 00    	imul   $0xa278,%eax,%eax
  8088c1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8088c5:	8b 04 24             	mov    (%rsp),%eax
  8088c8:	69 c0 c8 9a 00 00    	imul   $0x9ac8,%eax,%eax
  8088ce:	89 04 24             	mov    %eax,(%rsp)
  8088d1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  8088d5:	69 c0 96 84 00 00    	imul   $0x8496,%eax,%eax
  8088db:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8088df:	8b 04 24             	mov    (%rsp),%eax
  8088e2:	69 c0 7a 90 00 00    	imul   $0x907a,%eax,%eax
  8088e8:	89 04 24             	mov    %eax,(%rsp)
  8088eb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8088ef:	69 c0 a0 5f 00 00    	imul   $0x5fa0,%eax,%eax
  8088f5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8088f9:	8b 04 24             	mov    (%rsp),%eax
  8088fc:	69 c0 5a d5 00 00    	imul   $0xd55a,%eax,%eax
  808902:	89 04 24             	mov    %eax,(%rsp)
  808905:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808909:	69 c0 23 0d 00 00    	imul   $0xd23,%eax,%eax
  80890f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808913:	8b 04 24             	mov    (%rsp),%eax
  808916:	69 c0 ae 0f 00 00    	imul   $0xfae,%eax,%eax
  80891c:	89 04 24             	mov    %eax,(%rsp)
  80891f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808923:	69 c0 32 ac 00 00    	imul   $0xac32,%eax,%eax
  808929:	89 44 24 10          	mov    %eax,0x10(%rsp)
  80892d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808931:	69 c0 86 4c 00 00    	imul   $0x4c86,%eax,%eax
  808937:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80893b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80893f:	69 c0 fe 37 00 00    	imul   $0x37fe,%eax,%eax
  808945:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808949:	8b 04 24             	mov    (%rsp),%eax
  80894c:	69 c0 90 2c 00 00    	imul   $0x2c90,%eax,%eax
  808952:	89 04 24             	mov    %eax,(%rsp)
  808955:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808959:	69 c0 e9 24 00 00    	imul   $0x24e9,%eax,%eax
  80895f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808963:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808967:	69 c0 16 af 00 00    	imul   $0xaf16,%eax,%eax
  80896d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808971:	8b 04 24             	mov    (%rsp),%eax
  808974:	69 c0 58 f4 00 00    	imul   $0xf458,%eax,%eax
  80897a:	89 04 24             	mov    %eax,(%rsp)
  80897d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808981:	69 c0 8a c7 00 00    	imul   $0xc78a,%eax,%eax
  808987:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80898b:	8b 04 24             	mov    (%rsp),%eax
  80898e:	69 c0 cf de 00 00    	imul   $0xdecf,%eax,%eax
  808994:	89 04 24             	mov    %eax,(%rsp)
  808997:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80899b:	69 c0 bc 56 00 00    	imul   $0x56bc,%eax,%eax
  8089a1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8089a5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8089a9:	69 c0 30 0c 00 00    	imul   $0xc30,%eax,%eax
  8089af:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8089b3:	ba 00 00 00 00       	mov    $0x0,%edx
  8089b8:	b8 00 00 00 00       	mov    $0x0,%eax
  8089bd:	eb 0a                	jmp    8089c9 <scramble+0x55d>
  8089bf:	89 d1                	mov    %edx,%ecx
  8089c1:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  8089c4:	01 c8                	add    %ecx,%eax
  8089c6:	83 c2 01             	add    $0x1,%edx
  8089c9:	83 fa 09             	cmp    $0x9,%edx
  8089cc:	76 f1                	jbe    8089bf <scramble+0x553>
  8089ce:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  8089d3:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  8089da:	00 00 
  8089dc:	75 05                	jne    8089e3 <scramble+0x577>
  8089de:	48 83 c4 38          	add    $0x38,%rsp
  8089e2:	c3                   	retq   
  8089e3:	e8 f8 82 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008089e8 <getbuf>:
  8089e8:	48 83 ec 28          	sub    $0x28,%rsp
  8089ec:	48 89 e7             	mov    %rsp,%rdi
  8089ef:	e8 b5 03 00 00       	callq  808da9 <Gets>
  8089f4:	b8 01 00 00 00       	mov    $0x1,%eax
  8089f9:	48 83 c4 28          	add    $0x28,%rsp
  8089fd:	c3                   	retq   

00000000008089fe <touch1>:
  8089fe:	48 83 ec 08          	sub    $0x8,%rsp
  808a02:	c7 05 f0 3a 20 00 01 	movl   $0x1,0x203af0(%rip)        # a0c4fc <vlevel>
  808a09:	00 00 00 
  808a0c:	48 8d 3d 48 1a 00 00 	lea    0x1a48(%rip),%rdi        # 80a45b <_IO_stdin_used+0x27b>
  808a13:	e8 a8 82 bf ff       	callq  400cc0 <puts@plt>
  808a18:	bf 01 00 00 00       	mov    $0x1,%edi
  808a1d:	e8 fe 05 00 00       	callq  809020 <validate>
  808a22:	bf 00 00 00 00       	mov    $0x0,%edi
  808a27:	e8 f4 83 bf ff       	callq  400e20 <exit@plt>

0000000000808a2c <touch2>:
  808a2c:	48 83 ec 08          	sub    $0x8,%rsp
  808a30:	89 fa                	mov    %edi,%edx
  808a32:	c7 05 c0 3a 20 00 02 	movl   $0x2,0x203ac0(%rip)        # a0c4fc <vlevel>
  808a39:	00 00 00 
  808a3c:	39 3d c2 3a 20 00    	cmp    %edi,0x203ac2(%rip)        # a0c504 <cookie>
  808a42:	74 2a                	je     808a6e <touch2+0x42>
  808a44:	48 8d 35 5d 1a 00 00 	lea    0x1a5d(%rip),%rsi        # 80a4a8 <_IO_stdin_used+0x2c8>
  808a4b:	bf 01 00 00 00       	mov    $0x1,%edi
  808a50:	b8 00 00 00 00       	mov    $0x0,%eax
  808a55:	e8 86 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a5a:	bf 02 00 00 00       	mov    $0x2,%edi
  808a5f:	e8 8c 06 00 00       	callq  8090f0 <fail>
  808a64:	bf 00 00 00 00       	mov    $0x0,%edi
  808a69:	e8 b2 83 bf ff       	callq  400e20 <exit@plt>
  808a6e:	48 8d 35 0b 1a 00 00 	lea    0x1a0b(%rip),%rsi        # 80a480 <_IO_stdin_used+0x2a0>
  808a75:	bf 01 00 00 00       	mov    $0x1,%edi
  808a7a:	b8 00 00 00 00       	mov    $0x0,%eax
  808a7f:	e8 5c 83 bf ff       	callq  400de0 <__printf_chk@plt>
  808a84:	bf 02 00 00 00       	mov    $0x2,%edi
  808a89:	e8 92 05 00 00       	callq  809020 <validate>
  808a8e:	eb d4                	jmp    808a64 <touch2+0x38>

0000000000808a90 <hexmatch>:
  808a90:	41 54                	push   %r12
  808a92:	55                   	push   %rbp
  808a93:	53                   	push   %rbx
  808a94:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  808a98:	89 fd                	mov    %edi,%ebp
  808a9a:	48 89 f3             	mov    %rsi,%rbx
  808a9d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808aa4:	00 00 
  808aa6:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  808aab:	31 c0                	xor    %eax,%eax
  808aad:	e8 ee 82 bf ff       	callq  400da0 <random@plt>
  808ab2:	48 89 c1             	mov    %rax,%rcx
  808ab5:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  808abc:	0a d7 a3 
  808abf:	48 f7 ea             	imul   %rdx
  808ac2:	48 01 ca             	add    %rcx,%rdx
  808ac5:	48 c1 fa 06          	sar    $0x6,%rdx
  808ac9:	48 89 c8             	mov    %rcx,%rax
  808acc:	48 c1 f8 3f          	sar    $0x3f,%rax
  808ad0:	48 29 c2             	sub    %rax,%rdx
  808ad3:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  808ad7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  808adb:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  808ae2:	00 
  808ae3:	48 29 c1             	sub    %rax,%rcx
  808ae6:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  808aea:	41 89 e8             	mov    %ebp,%r8d
  808aed:	48 8d 0d 84 19 00 00 	lea    0x1984(%rip),%rcx        # 80a478 <_IO_stdin_used+0x298>
  808af4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  808afb:	be 01 00 00 00       	mov    $0x1,%esi
  808b00:	4c 89 e7             	mov    %r12,%rdi
  808b03:	b8 00 00 00 00       	mov    $0x0,%eax
  808b08:	e8 43 83 bf ff       	callq  400e50 <__sprintf_chk@plt>
  808b0d:	ba 09 00 00 00       	mov    $0x9,%edx
  808b12:	4c 89 e6             	mov    %r12,%rsi
  808b15:	48 89 df             	mov    %rbx,%rdi
  808b18:	e8 83 81 bf ff       	callq  400ca0 <strncmp@plt>
  808b1d:	85 c0                	test   %eax,%eax
  808b1f:	0f 94 c0             	sete   %al
  808b22:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  808b27:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  808b2e:	00 00 
  808b30:	75 0c                	jne    808b3e <hexmatch+0xae>
  808b32:	0f b6 c0             	movzbl %al,%eax
  808b35:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  808b39:	5b                   	pop    %rbx
  808b3a:	5d                   	pop    %rbp
  808b3b:	41 5c                	pop    %r12
  808b3d:	c3                   	retq   
  808b3e:	e8 9d 81 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000808b43 <touch3>:
  808b43:	53                   	push   %rbx
  808b44:	48 89 fb             	mov    %rdi,%rbx
  808b47:	c7 05 ab 39 20 00 03 	movl   $0x3,0x2039ab(%rip)        # a0c4fc <vlevel>
  808b4e:	00 00 00 
  808b51:	48 89 fe             	mov    %rdi,%rsi
  808b54:	8b 3d aa 39 20 00    	mov    0x2039aa(%rip),%edi        # a0c504 <cookie>
  808b5a:	e8 31 ff ff ff       	callq  808a90 <hexmatch>
  808b5f:	85 c0                	test   %eax,%eax
  808b61:	74 2d                	je     808b90 <touch3+0x4d>
  808b63:	48 89 da             	mov    %rbx,%rdx
  808b66:	48 8d 35 63 19 00 00 	lea    0x1963(%rip),%rsi        # 80a4d0 <_IO_stdin_used+0x2f0>
  808b6d:	bf 01 00 00 00       	mov    $0x1,%edi
  808b72:	b8 00 00 00 00       	mov    $0x0,%eax
  808b77:	e8 64 82 bf ff       	callq  400de0 <__printf_chk@plt>
  808b7c:	bf 03 00 00 00       	mov    $0x3,%edi
  808b81:	e8 9a 04 00 00       	callq  809020 <validate>
  808b86:	bf 00 00 00 00       	mov    $0x0,%edi
  808b8b:	e8 90 82 bf ff       	callq  400e20 <exit@plt>
  808b90:	48 89 da             	mov    %rbx,%rdx
  808b93:	48 8d 35 5e 19 00 00 	lea    0x195e(%rip),%rsi        # 80a4f8 <_IO_stdin_used+0x318>
  808b9a:	bf 01 00 00 00       	mov    $0x1,%edi
  808b9f:	b8 00 00 00 00       	mov    $0x0,%eax
  808ba4:	e8 37 82 bf ff       	callq  400de0 <__printf_chk@plt>
  808ba9:	bf 03 00 00 00       	mov    $0x3,%edi
  808bae:	e8 3d 05 00 00       	callq  8090f0 <fail>
  808bb3:	eb d1                	jmp    808b86 <touch3+0x43>

0000000000808bb5 <test>:
  808bb5:	48 83 ec 08          	sub    $0x8,%rsp
  808bb9:	b8 00 00 00 00       	mov    $0x0,%eax
  808bbe:	e8 25 fe ff ff       	callq  8089e8 <getbuf>
  808bc3:	89 c2                	mov    %eax,%edx
  808bc5:	48 8d 35 54 19 00 00 	lea    0x1954(%rip),%rsi        # 80a520 <_IO_stdin_used+0x340>
  808bcc:	bf 01 00 00 00       	mov    $0x1,%edi
  808bd1:	b8 00 00 00 00       	mov    $0x0,%eax
  808bd6:	e8 05 82 bf ff       	callq  400de0 <__printf_chk@plt>
  808bdb:	48 83 c4 08          	add    $0x8,%rsp
  808bdf:	c3                   	retq   

0000000000808be0 <start_farm>:
  808be0:	b8 01 00 00 00       	mov    $0x1,%eax
  808be5:	c3                   	retq   

0000000000808be6 <addval_344>:
  808be6:	8d 87 48 89 c7 91    	lea    -0x6e3876b8(%rdi),%eax 
  808bec:	c3                   	retq   

0000000000808bed <getval_198>:
  808bed:	b8 48 89 c7 90       	mov    $0x90c78948,%eax # 808bee 48 89 c7 | 90 | c3 -> movq %rax %rdi; nop; retq
  808bf2:	c3                   	retq   

0000000000808bf3 <getval_422>:
  808bf3:	b8 48 09 c7 c3       	mov    $0xc3c70948,%eax
  808bf8:	c3                   	retq   

0000000000808bf9 <setval_382>:
  808bf9:	c7 07 f4 d5 58 90    	movl   $0x9058d5f4,(%rdi) # 808bfd 58 | 90 | c3 -> pop %rax; nop; retq
  808bff:	c3                   	retq   

0000000000808c00 <getval_375>:
  808c00:	b8 03 b6 48 c3       	mov    $0xc348b603,%eax
  808c05:	c3                   	retq   

0000000000808c06 <setval_145>:
  808c06:	c7 07 58 c3 a3 a9    	movl   $0xa9a3c358,(%rdi)
  808c0c:	c3                   	retq   

0000000000808c0d <addval_368>:
  808c0d:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  808c13:	c3                   	retq   

0000000000808c14 <getval_155>:
  808c14:	b8 58 94 90 90       	mov    $0x90909458,%eax
  808c19:	c3                   	retq   

0000000000808c1a <mid_farm>:
  808c1a:	b8 01 00 00 00       	mov    $0x1,%eax
  808c1f:	c3                   	retq   

0000000000808c20 <add_xy>:
  808c20:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  808c24:	c3                   	retq   

0000000000808c25 <addval_250>:
  808c25:	8d 87 7b 89 ce c2    	lea    -0x3d317685(%rdi),%eax
  808c2b:	c3                   	retq   

0000000000808c2c <addval_168>:
  808c2c:	8d 87 ec 49 89 e0    	lea    -0x1f76b614(%rdi),%eax
  808c32:	c3                   	retq   

0000000000808c33 <getval_377>:
  808c33:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  808c38:	c3                   	retq   

0000000000808c39 <getval_275>:
  808c39:	b8 89 d1 48 c9       	mov    $0xc948d189,%eax
  808c3e:	c3                   	retq   

0000000000808c3f <setval_435>:
  808c3f:	c7 07 89 c2 60 c0    	movl   $0xc060c289,(%rdi)
  808c45:	c3                   	retq   

0000000000808c46 <getval_228>:
  808c46:	b8 89 d1 90 c3       	mov    $0xc390d189,%eax
  808c4b:	c3                   	retq   

0000000000808c4c <getval_183>:
  808c4c:	b8 48 8b e0 90       	mov    $0x90e08b48,%eax
  808c51:	c3                   	retq   

0000000000808c52 <setval_119>:
  808c52:	c7 07 48 c9 e0 90    	movl   $0x90e0c948,(%rdi)
  808c58:	c3                   	retq   

0000000000808c59 <getval_431>:
  808c59:	b8 a9 c2 90 c3       	mov    $0xc390c2a9,%eax
  808c5e:	c3                   	retq   

0000000000808c5f <setval_236>:
  808c5f:	c7 07 89 c2 92 90    	movl   $0x9092c289,(%rdi)
  808c65:	c3                   	retq   

0000000000808c66 <setval_161>:
  808c66:	c7 07 5c 89 d1 c2    	movl   $0xc2d1895c,(%rdi)
  808c6c:	c3                   	retq   

0000000000808c6d <getval_430>:
  808c6d:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  808c72:	c3                   	retq   

0000000000808c73 <setval_345>:
  808c73:	c7 07 81 d1 38 d2    	movl   $0xd238d181,(%rdi)
  808c79:	c3                   	retq   

0000000000808c7a <setval_340>:
  808c7a:	c7 07 81 ce 38 c0    	movl   $0xc038ce81,(%rdi)
  808c80:	c3                   	retq   

0000000000808c81 <setval_325>:
  808c81:	c7 07 58 89 e0 90    	movl   $0x90e08958,(%rdi)
  808c87:	c3                   	retq   

0000000000808c88 <addval_486>:
  808c88:	8d 87 c9 ce 90 c3    	lea    -0x3c6f3137(%rdi),%eax
  808c8e:	c3                   	retq   

0000000000808c8f <addval_300>:
  808c8f:	8d 87 81 d1 20 db    	lea    -0x24df2e7f(%rdi),%eax
  808c95:	c3                   	retq   

0000000000808c96 <addval_498>:
  808c96:	8d 87 c7 c8 89 e0    	lea    -0x1f763739(%rdi),%eax
  808c9c:	c3                   	retq   

0000000000808c9d <setval_302>:
  808c9d:	c7 07 89 d1 28 d2    	movl   $0xd228d189,(%rdi)
  808ca3:	c3                   	retq   

0000000000808ca4 <setval_388>:
  808ca4:	c7 07 e4 89 ce 94    	movl   $0x94ce89e4,(%rdi)
  808caa:	c3                   	retq   

0000000000808cab <getval_227>:
  808cab:	b8 99 ce 90 90       	mov    $0x9090ce99,%eax
  808cb0:	c3                   	retq   

0000000000808cb1 <addval_195>:
  808cb1:	8d 87 89 c2 20 d2    	lea    -0x2ddf3d77(%rdi),%eax
  808cb7:	c3                   	retq   

0000000000808cb8 <setval_151>:
  808cb8:	c7 07 89 d1 90 c3    	movl   $0xc390d189,(%rdi)
  808cbe:	c3                   	retq   

0000000000808cbf <setval_401>:
  808cbf:	c7 07 89 c2 18 c0    	movl   $0xc018c289,(%rdi)
  808cc5:	c3                   	retq   

0000000000808cc6 <setval_427>:
  808cc6:	c7 07 89 c2 94 c3    	movl   $0xc394c289,(%rdi)
  808ccc:	c3                   	retq   

0000000000808ccd <addval_164>:
  808ccd:	8d 87 89 c2 90 90    	lea    -0x6f6f3d77(%rdi),%eax
  808cd3:	c3                   	retq   

0000000000808cd4 <getval_403>:
  808cd4:	b8 89 ce 84 d2       	mov    $0xd284ce89,%eax
  808cd9:	c3                   	retq   

0000000000808cda <getval_357>:
  808cda:	b8 89 c2 28 c0       	mov    $0xc028c289,%eax
  808cdf:	c3                   	retq   

0000000000808ce0 <addval_137>:
  808ce0:	8d 87 dc 89 d1 92    	lea    -0x6d2e7624(%rdi),%eax
  808ce6:	c3                   	retq   

0000000000808ce7 <addval_261>:
  808ce7:	8d 87 89 ce 90 90    	lea    -0x6f6f3177(%rdi),%eax
  808ced:	c3                   	retq   

0000000000808cee <setval_273>:
  808cee:	c7 07 c9 ce 84 c0    	movl   $0xc084cec9,(%rdi)
  808cf4:	c3                   	retq   

0000000000808cf5 <getval_243>:
  808cf5:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  808cfa:	c3                   	retq   

0000000000808cfb <end_farm>:
  808cfb:	b8 01 00 00 00       	mov    $0x1,%eax
  808d00:	c3                   	retq   

0000000000808d01 <save_char>:
  808d01:	8b 05 1d 44 20 00    	mov    0x20441d(%rip),%eax        # a0d124 <gets_cnt>
  808d07:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  808d0c:	7f 4a                	jg     808d58 <save_char+0x57>
  808d0e:	89 f9                	mov    %edi,%ecx
  808d10:	c0 e9 04             	shr    $0x4,%cl
  808d13:	8d 14 40             	lea    (%rax,%rax,2),%edx
  808d16:	4c 8d 05 23 1b 00 00 	lea    0x1b23(%rip),%r8        # 80a840 <trans_char>
  808d1d:	83 e1 0f             	and    $0xf,%ecx
  808d20:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  808d25:	48 8d 0d f4 37 20 00 	lea    0x2037f4(%rip),%rcx        # a0c520 <gets_buf>
  808d2c:	48 63 f2             	movslq %edx,%rsi
  808d2f:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  808d33:	8d 72 01             	lea    0x1(%rdx),%esi
  808d36:	83 e7 0f             	and    $0xf,%edi
  808d39:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  808d3e:	48 63 f6             	movslq %esi,%rsi
  808d41:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  808d45:	83 c2 02             	add    $0x2,%edx
  808d48:	48 63 d2             	movslq %edx,%rdx
  808d4b:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  808d4f:	83 c0 01             	add    $0x1,%eax
  808d52:	89 05 cc 43 20 00    	mov    %eax,0x2043cc(%rip)        # a0d124 <gets_cnt>
  808d58:	f3 c3                	repz retq 

0000000000808d5a <save_term>:
  808d5a:	8b 05 c4 43 20 00    	mov    0x2043c4(%rip),%eax        # a0d124 <gets_cnt>
  808d60:	8d 04 40             	lea    (%rax,%rax,2),%eax
  808d63:	48 98                	cltq   
  808d65:	48 8d 15 b4 37 20 00 	lea    0x2037b4(%rip),%rdx        # a0c520 <gets_buf>
  808d6c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  808d70:	c3                   	retq   

0000000000808d71 <check_fail>:
  808d71:	48 83 ec 08          	sub    $0x8,%rsp
  808d75:	0f be 15 b4 43 20 00 	movsbl 0x2043b4(%rip),%edx        # a0d130 <target_prefix>
  808d7c:	4c 8d 05 9d 37 20 00 	lea    0x20379d(%rip),%r8        # a0c520 <gets_buf>
  808d83:	8b 0d 6f 37 20 00    	mov    0x20376f(%rip),%ecx        # a0c4f8 <check_level>
  808d89:	48 8d 35 b3 17 00 00 	lea    0x17b3(%rip),%rsi        # 80a543 <_IO_stdin_used+0x363>
  808d90:	bf 01 00 00 00       	mov    $0x1,%edi
  808d95:	b8 00 00 00 00       	mov    $0x0,%eax
  808d9a:	e8 41 80 bf ff       	callq  400de0 <__printf_chk@plt>
  808d9f:	bf 01 00 00 00       	mov    $0x1,%edi
  808da4:	e8 77 80 bf ff       	callq  400e20 <exit@plt>

0000000000808da9 <Gets>:
  808da9:	41 54                	push   %r12
  808dab:	55                   	push   %rbp
  808dac:	53                   	push   %rbx
  808dad:	49 89 fc             	mov    %rdi,%r12
  808db0:	c7 05 6a 43 20 00 00 	movl   $0x0,0x20436a(%rip)        # a0d124 <gets_cnt>
  808db7:	00 00 00 
  808dba:	48 89 fb             	mov    %rdi,%rbx
  808dbd:	eb 11                	jmp    808dd0 <Gets+0x27>
  808dbf:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  808dc3:	88 03                	mov    %al,(%rbx)
  808dc5:	0f b6 f8             	movzbl %al,%edi
  808dc8:	e8 34 ff ff ff       	callq  808d01 <save_char>
  808dcd:	48 89 eb             	mov    %rbp,%rbx
  808dd0:	48 8b 3d 19 37 20 00 	mov    0x203719(%rip),%rdi        # a0c4f0 <infile>
  808dd7:	e8 d4 7f bf ff       	callq  400db0 <_IO_getc@plt>
  808ddc:	83 f8 ff             	cmp    $0xffffffff,%eax
  808ddf:	74 05                	je     808de6 <Gets+0x3d>
  808de1:	83 f8 0a             	cmp    $0xa,%eax
  808de4:	75 d9                	jne    808dbf <Gets+0x16>
  808de6:	c6 03 00             	movb   $0x0,(%rbx)
  808de9:	b8 00 00 00 00       	mov    $0x0,%eax
  808dee:	e8 67 ff ff ff       	callq  808d5a <save_term>
  808df3:	4c 89 e0             	mov    %r12,%rax
  808df6:	5b                   	pop    %rbx
  808df7:	5d                   	pop    %rbp
  808df8:	41 5c                	pop    %r12
  808dfa:	c3                   	retq   

0000000000808dfb <notify_server>:
  808dfb:	55                   	push   %rbp
  808dfc:	53                   	push   %rbx
  808dfd:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  808e04:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808e0b:	00 00 
  808e0d:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  808e14:	00 
  808e15:	31 c0                	xor    %eax,%eax
  808e17:	83 3d ea 36 20 00 00 	cmpl   $0x0,0x2036ea(%rip)        # a0c508 <is_checker>
  808e1e:	0f 85 d9 00 00 00    	jne    808efd <notify_server+0x102>
  808e24:	89 fb                	mov    %edi,%ebx
  808e26:	8b 05 f8 42 20 00    	mov    0x2042f8(%rip),%eax        # a0d124 <gets_cnt>
  808e2c:	83 c0 64             	add    $0x64,%eax
  808e2f:	3d 00 20 00 00       	cmp    $0x2000,%eax
  808e34:	0f 8f e4 00 00 00    	jg     808f1e <notify_server+0x123>
  808e3a:	0f be 05 ef 42 20 00 	movsbl 0x2042ef(%rip),%eax        # a0d130 <target_prefix>
  808e41:	83 3d 40 36 20 00 00 	cmpl   $0x0,0x203640(%rip)        # a0c488 <notify>
  808e48:	0f 84 f0 00 00 00    	je     808f3e <notify_server+0x143>
  808e4e:	8b 15 ac 36 20 00    	mov    0x2036ac(%rip),%edx        # a0c500 <authkey>
  808e54:	85 db                	test   %ebx,%ebx
  808e56:	0f 84 ec 00 00 00    	je     808f48 <notify_server+0x14d>
  808e5c:	48 8d 2d f6 16 00 00 	lea    0x16f6(%rip),%rbp        # 80a559 <_IO_stdin_used+0x379>
  808e63:	48 89 e7             	mov    %rsp,%rdi
  808e66:	48 83 ec 08          	sub    $0x8,%rsp
  808e6a:	48 8d 0d af 36 20 00 	lea    0x2036af(%rip),%rcx        # a0c520 <gets_buf>
  808e71:	51                   	push   %rcx
  808e72:	56                   	push   %rsi
  808e73:	50                   	push   %rax
  808e74:	52                   	push   %rdx
  808e75:	55                   	push   %rbp
  808e76:	44 8b 0d b3 32 20 00 	mov    0x2032b3(%rip),%r9d        # a0c130 <target_id>
  808e7d:	4c 8d 05 df 16 00 00 	lea    0x16df(%rip),%r8        # 80a563 <_IO_stdin_used+0x383>
  808e84:	b9 00 20 00 00       	mov    $0x2000,%ecx
  808e89:	ba 01 00 00 00       	mov    $0x1,%edx
  808e8e:	be 00 20 00 00       	mov    $0x2000,%esi
  808e93:	b8 00 00 00 00       	mov    $0x0,%eax
  808e98:	e8 d3 7d bf ff       	callq  400c70 <__snprintf_chk@plt>
  808e9d:	48 83 c4 30          	add    $0x30,%rsp
  808ea1:	83 3d e0 35 20 00 00 	cmpl   $0x0,0x2035e0(%rip)        # a0c488 <notify>
  808ea8:	0f 84 df 00 00 00    	je     808f8d <notify_server+0x192>
  808eae:	85 db                	test   %ebx,%ebx
  808eb0:	0f 84 c6 00 00 00    	je     808f7c <notify_server+0x181>
  808eb6:	48 89 e1             	mov    %rsp,%rcx
  808eb9:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  808ec0:	00 
  808ec1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  808ec7:	48 8b 15 7a 32 20 00 	mov    0x20327a(%rip),%rdx        # a0c148 <lab>
  808ece:	48 8b 35 ab 35 20 00 	mov    0x2035ab(%rip),%rsi        # a0c480 <course>
  808ed5:	48 8b 3d 64 32 20 00 	mov    0x203264(%rip),%rdi        # a0c140 <user_id>
  808edc:	e8 af 11 00 00       	callq  80a090 <driver_post>
  808ee1:	85 c0                	test   %eax,%eax
  808ee3:	78 6f                	js     808f54 <notify_server+0x159>
  808ee5:	48 8d 3d bc 17 00 00 	lea    0x17bc(%rip),%rdi        # 80a6a8 <_IO_stdin_used+0x4c8>
  808eec:	e8 cf 7d bf ff       	callq  400cc0 <puts@plt>
  808ef1:	48 8d 3d 93 16 00 00 	lea    0x1693(%rip),%rdi        # 80a58b <_IO_stdin_used+0x3ab>
  808ef8:	e8 c3 7d bf ff       	callq  400cc0 <puts@plt>
  808efd:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  808f04:	00 
  808f05:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808f0c:	00 00 
  808f0e:	0f 85 07 01 00 00    	jne    80901b <notify_server+0x220>
  808f14:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  808f1b:	5b                   	pop    %rbx
  808f1c:	5d                   	pop    %rbp
  808f1d:	c3                   	retq   
  808f1e:	48 8d 35 53 17 00 00 	lea    0x1753(%rip),%rsi        # 80a678 <_IO_stdin_used+0x498>
  808f25:	bf 01 00 00 00       	mov    $0x1,%edi
  808f2a:	b8 00 00 00 00       	mov    $0x0,%eax
  808f2f:	e8 ac 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808f34:	bf 01 00 00 00       	mov    $0x1,%edi
  808f39:	e8 e2 7e bf ff       	callq  400e20 <exit@plt>
  808f3e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  808f43:	e9 0c ff ff ff       	jmpq   808e54 <notify_server+0x59>
  808f48:	48 8d 2d 0f 16 00 00 	lea    0x160f(%rip),%rbp        # 80a55e <_IO_stdin_used+0x37e>
  808f4f:	e9 0f ff ff ff       	jmpq   808e63 <notify_server+0x68>
  808f54:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  808f5b:	00 
  808f5c:	48 8d 35 1c 16 00 00 	lea    0x161c(%rip),%rsi        # 80a57f <_IO_stdin_used+0x39f>
  808f63:	bf 01 00 00 00       	mov    $0x1,%edi
  808f68:	b8 00 00 00 00       	mov    $0x0,%eax
  808f6d:	e8 6e 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808f72:	bf 01 00 00 00       	mov    $0x1,%edi
  808f77:	e8 a4 7e bf ff       	callq  400e20 <exit@plt>
  808f7c:	48 8d 3d 12 16 00 00 	lea    0x1612(%rip),%rdi        # 80a595 <_IO_stdin_used+0x3b5>
  808f83:	e8 38 7d bf ff       	callq  400cc0 <puts@plt>
  808f88:	e9 70 ff ff ff       	jmpq   808efd <notify_server+0x102>
  808f8d:	48 89 ea             	mov    %rbp,%rdx
  808f90:	48 8d 35 49 17 00 00 	lea    0x1749(%rip),%rsi        # 80a6e0 <_IO_stdin_used+0x500>
  808f97:	bf 01 00 00 00       	mov    $0x1,%edi
  808f9c:	b8 00 00 00 00       	mov    $0x0,%eax
  808fa1:	e8 3a 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808fa6:	48 8b 15 93 31 20 00 	mov    0x203193(%rip),%rdx        # a0c140 <user_id>
  808fad:	48 8d 35 e8 15 00 00 	lea    0x15e8(%rip),%rsi        # 80a59c <_IO_stdin_used+0x3bc>
  808fb4:	bf 01 00 00 00       	mov    $0x1,%edi
  808fb9:	b8 00 00 00 00       	mov    $0x0,%eax
  808fbe:	e8 1d 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808fc3:	48 8b 15 b6 34 20 00 	mov    0x2034b6(%rip),%rdx        # a0c480 <course>
  808fca:	48 8d 35 d8 15 00 00 	lea    0x15d8(%rip),%rsi        # 80a5a9 <_IO_stdin_used+0x3c9>
  808fd1:	bf 01 00 00 00       	mov    $0x1,%edi
  808fd6:	b8 00 00 00 00       	mov    $0x0,%eax
  808fdb:	e8 00 7e bf ff       	callq  400de0 <__printf_chk@plt>
  808fe0:	48 8b 15 61 31 20 00 	mov    0x203161(%rip),%rdx        # a0c148 <lab>
  808fe7:	48 8d 35 c7 15 00 00 	lea    0x15c7(%rip),%rsi        # 80a5b5 <_IO_stdin_used+0x3d5>
  808fee:	bf 01 00 00 00       	mov    $0x1,%edi
  808ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  808ff8:	e8 e3 7d bf ff       	callq  400de0 <__printf_chk@plt>
  808ffd:	48 89 e2             	mov    %rsp,%rdx
  809000:	48 8d 35 b7 15 00 00 	lea    0x15b7(%rip),%rsi        # 80a5be <_IO_stdin_used+0x3de>
  809007:	bf 01 00 00 00       	mov    $0x1,%edi
  80900c:	b8 00 00 00 00       	mov    $0x0,%eax
  809011:	e8 ca 7d bf ff       	callq  400de0 <__printf_chk@plt>
  809016:	e9 e2 fe ff ff       	jmpq   808efd <notify_server+0x102>
  80901b:	e8 c0 7c bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809020 <validate>:
  809020:	53                   	push   %rbx
  809021:	89 fb                	mov    %edi,%ebx
  809023:	83 3d de 34 20 00 00 	cmpl   $0x0,0x2034de(%rip)        # a0c508 <is_checker>
  80902a:	74 72                	je     80909e <validate+0x7e>
  80902c:	39 3d ca 34 20 00    	cmp    %edi,0x2034ca(%rip)        # a0c4fc <vlevel>
  809032:	75 32                	jne    809066 <validate+0x46>
  809034:	8b 15 be 34 20 00    	mov    0x2034be(%rip),%edx        # a0c4f8 <check_level>
  80903a:	39 fa                	cmp    %edi,%edx
  80903c:	75 3e                	jne    80907c <validate+0x5c>
  80903e:	0f be 15 eb 40 20 00 	movsbl 0x2040eb(%rip),%edx        # a0d130 <target_prefix>
  809045:	4c 8d 05 d4 34 20 00 	lea    0x2034d4(%rip),%r8        # a0c520 <gets_buf>
  80904c:	89 f9                	mov    %edi,%ecx
  80904e:	48 8d 35 93 15 00 00 	lea    0x1593(%rip),%rsi        # 80a5e8 <_IO_stdin_used+0x408>
  809055:	bf 01 00 00 00       	mov    $0x1,%edi
  80905a:	b8 00 00 00 00       	mov    $0x0,%eax
  80905f:	e8 7c 7d bf ff       	callq  400de0 <__printf_chk@plt>
  809064:	5b                   	pop    %rbx
  809065:	c3                   	retq   
  809066:	48 8d 3d 5d 15 00 00 	lea    0x155d(%rip),%rdi        # 80a5ca <_IO_stdin_used+0x3ea>
  80906d:	e8 4e 7c bf ff       	callq  400cc0 <puts@plt>
  809072:	b8 00 00 00 00       	mov    $0x0,%eax
  809077:	e8 f5 fc ff ff       	callq  808d71 <check_fail>
  80907c:	89 f9                	mov    %edi,%ecx
  80907e:	48 8d 35 83 16 00 00 	lea    0x1683(%rip),%rsi        # 80a708 <_IO_stdin_used+0x528>
  809085:	bf 01 00 00 00       	mov    $0x1,%edi
  80908a:	b8 00 00 00 00       	mov    $0x0,%eax
  80908f:	e8 4c 7d bf ff       	callq  400de0 <__printf_chk@plt>
  809094:	b8 00 00 00 00       	mov    $0x0,%eax
  809099:	e8 d3 fc ff ff       	callq  808d71 <check_fail>
  80909e:	39 3d 58 34 20 00    	cmp    %edi,0x203458(%rip)        # a0c4fc <vlevel>
  8090a4:	74 1a                	je     8090c0 <validate+0xa0>
  8090a6:	48 8d 3d 1d 15 00 00 	lea    0x151d(%rip),%rdi        # 80a5ca <_IO_stdin_used+0x3ea>
  8090ad:	e8 0e 7c bf ff       	callq  400cc0 <puts@plt>
  8090b2:	89 de                	mov    %ebx,%esi
  8090b4:	bf 00 00 00 00       	mov    $0x0,%edi
  8090b9:	e8 3d fd ff ff       	callq  808dfb <notify_server>
  8090be:	eb a4                	jmp    809064 <validate+0x44>
  8090c0:	0f be 0d 69 40 20 00 	movsbl 0x204069(%rip),%ecx        # a0d130 <target_prefix>
  8090c7:	89 fa                	mov    %edi,%edx
  8090c9:	48 8d 35 60 16 00 00 	lea    0x1660(%rip),%rsi        # 80a730 <_IO_stdin_used+0x550>
  8090d0:	bf 01 00 00 00       	mov    $0x1,%edi
  8090d5:	b8 00 00 00 00       	mov    $0x0,%eax
  8090da:	e8 01 7d bf ff       	callq  400de0 <__printf_chk@plt>
  8090df:	89 de                	mov    %ebx,%esi
  8090e1:	bf 01 00 00 00       	mov    $0x1,%edi
  8090e6:	e8 10 fd ff ff       	callq  808dfb <notify_server>
  8090eb:	e9 74 ff ff ff       	jmpq   809064 <validate+0x44>

00000000008090f0 <fail>:
  8090f0:	48 83 ec 08          	sub    $0x8,%rsp
  8090f4:	83 3d 0d 34 20 00 00 	cmpl   $0x0,0x20340d(%rip)        # a0c508 <is_checker>
  8090fb:	75 11                	jne    80910e <fail+0x1e>
  8090fd:	89 fe                	mov    %edi,%esi
  8090ff:	bf 00 00 00 00       	mov    $0x0,%edi
  809104:	e8 f2 fc ff ff       	callq  808dfb <notify_server>
  809109:	48 83 c4 08          	add    $0x8,%rsp
  80910d:	c3                   	retq   
  80910e:	b8 00 00 00 00       	mov    $0x0,%eax
  809113:	e8 59 fc ff ff       	callq  808d71 <check_fail>

0000000000809118 <bushandler>:
  809118:	48 83 ec 08          	sub    $0x8,%rsp
  80911c:	83 3d e5 33 20 00 00 	cmpl   $0x0,0x2033e5(%rip)        # a0c508 <is_checker>
  809123:	74 16                	je     80913b <bushandler+0x23>
  809125:	48 8d 3d d1 14 00 00 	lea    0x14d1(%rip),%rdi        # 80a5fd <_IO_stdin_used+0x41d>
  80912c:	e8 8f 7b bf ff       	callq  400cc0 <puts@plt>
  809131:	b8 00 00 00 00       	mov    $0x0,%eax
  809136:	e8 36 fc ff ff       	callq  808d71 <check_fail>
  80913b:	48 8d 3d 26 16 00 00 	lea    0x1626(%rip),%rdi        # 80a768 <_IO_stdin_used+0x588>
  809142:	e8 79 7b bf ff       	callq  400cc0 <puts@plt>
  809147:	48 8d 3d b9 14 00 00 	lea    0x14b9(%rip),%rdi        # 80a607 <_IO_stdin_used+0x427>
  80914e:	e8 6d 7b bf ff       	callq  400cc0 <puts@plt>
  809153:	be 00 00 00 00       	mov    $0x0,%esi
  809158:	bf 00 00 00 00       	mov    $0x0,%edi
  80915d:	e8 99 fc ff ff       	callq  808dfb <notify_server>
  809162:	bf 01 00 00 00       	mov    $0x1,%edi
  809167:	e8 b4 7c bf ff       	callq  400e20 <exit@plt>

000000000080916c <seghandler>:
  80916c:	48 83 ec 08          	sub    $0x8,%rsp
  809170:	83 3d 91 33 20 00 00 	cmpl   $0x0,0x203391(%rip)        # a0c508 <is_checker>
  809177:	74 16                	je     80918f <seghandler+0x23>
  809179:	48 8d 3d 9d 14 00 00 	lea    0x149d(%rip),%rdi        # 80a61d <_IO_stdin_used+0x43d>
  809180:	e8 3b 7b bf ff       	callq  400cc0 <puts@plt>
  809185:	b8 00 00 00 00       	mov    $0x0,%eax
  80918a:	e8 e2 fb ff ff       	callq  808d71 <check_fail>
  80918f:	48 8d 3d f2 15 00 00 	lea    0x15f2(%rip),%rdi        # 80a788 <_IO_stdin_used+0x5a8>
  809196:	e8 25 7b bf ff       	callq  400cc0 <puts@plt>
  80919b:	48 8d 3d 65 14 00 00 	lea    0x1465(%rip),%rdi        # 80a607 <_IO_stdin_used+0x427>
  8091a2:	e8 19 7b bf ff       	callq  400cc0 <puts@plt>
  8091a7:	be 00 00 00 00       	mov    $0x0,%esi
  8091ac:	bf 00 00 00 00       	mov    $0x0,%edi
  8091b1:	e8 45 fc ff ff       	callq  808dfb <notify_server>
  8091b6:	bf 01 00 00 00       	mov    $0x1,%edi
  8091bb:	e8 60 7c bf ff       	callq  400e20 <exit@plt>

00000000008091c0 <illegalhandler>:
  8091c0:	48 83 ec 08          	sub    $0x8,%rsp
  8091c4:	83 3d 3d 33 20 00 00 	cmpl   $0x0,0x20333d(%rip)        # a0c508 <is_checker>
  8091cb:	74 16                	je     8091e3 <illegalhandler+0x23>
  8091cd:	48 8d 3d 5c 14 00 00 	lea    0x145c(%rip),%rdi        # 80a630 <_IO_stdin_used+0x450>
  8091d4:	e8 e7 7a bf ff       	callq  400cc0 <puts@plt>
  8091d9:	b8 00 00 00 00       	mov    $0x0,%eax
  8091de:	e8 8e fb ff ff       	callq  808d71 <check_fail>
  8091e3:	48 8d 3d c6 15 00 00 	lea    0x15c6(%rip),%rdi        # 80a7b0 <_IO_stdin_used+0x5d0>
  8091ea:	e8 d1 7a bf ff       	callq  400cc0 <puts@plt>
  8091ef:	48 8d 3d 11 14 00 00 	lea    0x1411(%rip),%rdi        # 80a607 <_IO_stdin_used+0x427>
  8091f6:	e8 c5 7a bf ff       	callq  400cc0 <puts@plt>
  8091fb:	be 00 00 00 00       	mov    $0x0,%esi
  809200:	bf 00 00 00 00       	mov    $0x0,%edi
  809205:	e8 f1 fb ff ff       	callq  808dfb <notify_server>
  80920a:	bf 01 00 00 00       	mov    $0x1,%edi
  80920f:	e8 0c 7c bf ff       	callq  400e20 <exit@plt>

0000000000809214 <sigalrmhandler>:
  809214:	48 83 ec 08          	sub    $0x8,%rsp
  809218:	83 3d e9 32 20 00 00 	cmpl   $0x0,0x2032e9(%rip)        # a0c508 <is_checker>
  80921f:	74 16                	je     809237 <sigalrmhandler+0x23>
  809221:	48 8d 3d 1c 14 00 00 	lea    0x141c(%rip),%rdi        # 80a644 <_IO_stdin_used+0x464>
  809228:	e8 93 7a bf ff       	callq  400cc0 <puts@plt>
  80922d:	b8 00 00 00 00       	mov    $0x0,%eax
  809232:	e8 3a fb ff ff       	callq  808d71 <check_fail>
  809237:	ba 05 00 00 00       	mov    $0x5,%edx
  80923c:	48 8d 35 9d 15 00 00 	lea    0x159d(%rip),%rsi        # 80a7e0 <_IO_stdin_used+0x600>
  809243:	bf 01 00 00 00       	mov    $0x1,%edi
  809248:	b8 00 00 00 00       	mov    $0x0,%eax
  80924d:	e8 8e 7b bf ff       	callq  400de0 <__printf_chk@plt>
  809252:	be 00 00 00 00       	mov    $0x0,%esi
  809257:	bf 00 00 00 00       	mov    $0x0,%edi
  80925c:	e8 9a fb ff ff       	callq  808dfb <notify_server>
  809261:	bf 01 00 00 00       	mov    $0x1,%edi
  809266:	e8 b5 7b bf ff       	callq  400e20 <exit@plt>

000000000080926b <launch>:
  80926b:	55                   	push   %rbp
  80926c:	48 89 e5             	mov    %rsp,%rbp
  80926f:	48 83 ec 10          	sub    $0x10,%rsp
  809273:	48 89 fa             	mov    %rdi,%rdx
  809276:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  80927d:	00 00 
  80927f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  809283:	31 c0                	xor    %eax,%eax
  809285:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  809289:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  80928d:	48 29 c4             	sub    %rax,%rsp
  809290:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  809295:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  809299:	be f4 00 00 00       	mov    $0xf4,%esi
  80929e:	e8 5d 7a bf ff       	callq  400d00 <memset@plt>
  8092a3:	48 8b 05 f6 31 20 00 	mov    0x2031f6(%rip),%rax        # a0c4a0 <stdin@@GLIBC_2.2.5>
  8092aa:	48 39 05 3f 32 20 00 	cmp    %rax,0x20323f(%rip)        # a0c4f0 <infile>
  8092b1:	74 3a                	je     8092ed <launch+0x82>
  8092b3:	c7 05 3f 32 20 00 00 	movl   $0x0,0x20323f(%rip)        # a0c4fc <vlevel>
  8092ba:	00 00 00 
  8092bd:	b8 00 00 00 00       	mov    $0x0,%eax
  8092c2:	e8 ee f8 ff ff       	callq  808bb5 <test>
  8092c7:	83 3d 3a 32 20 00 00 	cmpl   $0x0,0x20323a(%rip)        # a0c508 <is_checker>
  8092ce:	75 35                	jne    809305 <launch+0x9a>
  8092d0:	48 8d 3d 8d 13 00 00 	lea    0x138d(%rip),%rdi        # 80a664 <_IO_stdin_used+0x484>
  8092d7:	e8 e4 79 bf ff       	callq  400cc0 <puts@plt>
  8092dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  8092e0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  8092e7:	00 00 
  8092e9:	75 30                	jne    80931b <launch+0xb0>
  8092eb:	c9                   	leaveq 
  8092ec:	c3                   	retq   
  8092ed:	48 8d 35 58 13 00 00 	lea    0x1358(%rip),%rsi        # 80a64c <_IO_stdin_used+0x46c>
  8092f4:	bf 01 00 00 00       	mov    $0x1,%edi
  8092f9:	b8 00 00 00 00       	mov    $0x0,%eax
  8092fe:	e8 dd 7a bf ff       	callq  400de0 <__printf_chk@plt>
  809303:	eb ae                	jmp    8092b3 <launch+0x48>
  809305:	48 8d 3d 4d 13 00 00 	lea    0x134d(%rip),%rdi        # 80a659 <_IO_stdin_used+0x479>
  80930c:	e8 af 79 bf ff       	callq  400cc0 <puts@plt>
  809311:	b8 00 00 00 00       	mov    $0x0,%eax
  809316:	e8 56 fa ff ff       	callq  808d71 <check_fail>
  80931b:	e8 c0 79 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809320 <stable_launch>:
  809320:	53                   	push   %rbx
  809321:	48 89 3d c0 31 20 00 	mov    %rdi,0x2031c0(%rip)        # a0c4e8 <global_offset>
  809328:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  80932e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  809334:	b9 32 01 00 00       	mov    $0x132,%ecx
  809339:	ba 07 00 00 00       	mov    $0x7,%edx
  80933e:	be 00 00 10 00       	mov    $0x100000,%esi
  809343:	bf 00 60 58 55       	mov    $0x55586000,%edi
  809348:	e8 a3 79 bf ff       	callq  400cf0 <mmap@plt>
  80934d:	48 89 c3             	mov    %rax,%rbx
  809350:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  809356:	75 43                	jne    80939b <stable_launch+0x7b>
  809358:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  80935f:	48 89 15 c2 3d 20 00 	mov    %rdx,0x203dc2(%rip)        # a0d128 <stack_top>
  809366:	48 89 e0             	mov    %rsp,%rax
  809369:	48 89 d4             	mov    %rdx,%rsp
  80936c:	48 89 c2             	mov    %rax,%rdx
  80936f:	48 89 15 6a 31 20 00 	mov    %rdx,0x20316a(%rip)        # a0c4e0 <global_save_stack>
  809376:	48 8b 3d 6b 31 20 00 	mov    0x20316b(%rip),%rdi        # a0c4e8 <global_offset>
  80937d:	e8 e9 fe ff ff       	callq  80926b <launch>
  809382:	48 8b 05 57 31 20 00 	mov    0x203157(%rip),%rax        # a0c4e0 <global_save_stack>
  809389:	48 89 c4             	mov    %rax,%rsp
  80938c:	be 00 00 10 00       	mov    $0x100000,%esi
  809391:	48 89 df             	mov    %rbx,%rdi
  809394:	e8 37 7a bf ff       	callq  400dd0 <munmap@plt>
  809399:	5b                   	pop    %rbx
  80939a:	c3                   	retq   
  80939b:	be 00 00 10 00       	mov    $0x100000,%esi
  8093a0:	48 89 c7             	mov    %rax,%rdi
  8093a3:	e8 28 7a bf ff       	callq  400dd0 <munmap@plt>
  8093a8:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  8093ad:	48 8d 15 64 14 00 00 	lea    0x1464(%rip),%rdx        # 80a818 <_IO_stdin_used+0x638>
  8093b4:	be 01 00 00 00       	mov    $0x1,%esi
  8093b9:	48 8b 3d 00 31 20 00 	mov    0x203100(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  8093c0:	b8 00 00 00 00       	mov    $0x0,%eax
  8093c5:	e8 76 7a bf ff       	callq  400e40 <__fprintf_chk@plt>
  8093ca:	bf 01 00 00 00       	mov    $0x1,%edi
  8093cf:	e8 4c 7a bf ff       	callq  400e20 <exit@plt>

00000000008093d4 <rio_readinitb>:
  8093d4:	89 37                	mov    %esi,(%rdi)
  8093d6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  8093dd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  8093e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  8093e5:	c3                   	retq   

00000000008093e6 <sigalrm_handler>:
  8093e6:	48 83 ec 08          	sub    $0x8,%rsp
  8093ea:	b9 00 00 00 00       	mov    $0x0,%ecx
  8093ef:	48 8d 15 5a 14 00 00 	lea    0x145a(%rip),%rdx        # 80a850 <trans_char+0x10>
  8093f6:	be 01 00 00 00       	mov    $0x1,%esi
  8093fb:	48 8b 3d be 30 20 00 	mov    0x2030be(%rip),%rdi        # a0c4c0 <stderr@@GLIBC_2.2.5>
  809402:	b8 00 00 00 00       	mov    $0x0,%eax
  809407:	e8 34 7a bf ff       	callq  400e40 <__fprintf_chk@plt>
  80940c:	bf 01 00 00 00       	mov    $0x1,%edi
  809411:	e8 0a 7a bf ff       	callq  400e20 <exit@plt>

0000000000809416 <rio_writen>:
  809416:	41 55                	push   %r13
  809418:	41 54                	push   %r12
  80941a:	55                   	push   %rbp
  80941b:	53                   	push   %rbx
  80941c:	48 83 ec 08          	sub    $0x8,%rsp
  809420:	41 89 fc             	mov    %edi,%r12d
  809423:	48 89 f5             	mov    %rsi,%rbp
  809426:	49 89 d5             	mov    %rdx,%r13
  809429:	48 89 d3             	mov    %rdx,%rbx
  80942c:	eb 06                	jmp    809434 <rio_writen+0x1e>
  80942e:	48 29 c3             	sub    %rax,%rbx
  809431:	48 01 c5             	add    %rax,%rbp
  809434:	48 85 db             	test   %rbx,%rbx
  809437:	74 24                	je     80945d <rio_writen+0x47>
  809439:	48 89 da             	mov    %rbx,%rdx
  80943c:	48 89 ee             	mov    %rbp,%rsi
  80943f:	44 89 e7             	mov    %r12d,%edi
  809442:	e8 89 78 bf ff       	callq  400cd0 <write@plt>
  809447:	48 85 c0             	test   %rax,%rax
  80944a:	7f e2                	jg     80942e <rio_writen+0x18>
  80944c:	e8 2f 78 bf ff       	callq  400c80 <__errno_location@plt>
  809451:	83 38 04             	cmpl   $0x4,(%rax)
  809454:	75 15                	jne    80946b <rio_writen+0x55>
  809456:	b8 00 00 00 00       	mov    $0x0,%eax
  80945b:	eb d1                	jmp    80942e <rio_writen+0x18>
  80945d:	4c 89 e8             	mov    %r13,%rax
  809460:	48 83 c4 08          	add    $0x8,%rsp
  809464:	5b                   	pop    %rbx
  809465:	5d                   	pop    %rbp
  809466:	41 5c                	pop    %r12
  809468:	41 5d                	pop    %r13
  80946a:	c3                   	retq   
  80946b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809472:	eb ec                	jmp    809460 <rio_writen+0x4a>

0000000000809474 <rio_read>:
  809474:	41 55                	push   %r13
  809476:	41 54                	push   %r12
  809478:	55                   	push   %rbp
  809479:	53                   	push   %rbx
  80947a:	48 83 ec 08          	sub    $0x8,%rsp
  80947e:	48 89 fb             	mov    %rdi,%rbx
  809481:	49 89 f5             	mov    %rsi,%r13
  809484:	49 89 d4             	mov    %rdx,%r12
  809487:	eb 0a                	jmp    809493 <rio_read+0x1f>
  809489:	e8 f2 77 bf ff       	callq  400c80 <__errno_location@plt>
  80948e:	83 38 04             	cmpl   $0x4,(%rax)
  809491:	75 5c                	jne    8094ef <rio_read+0x7b>
  809493:	8b 6b 04             	mov    0x4(%rbx),%ebp
  809496:	85 ed                	test   %ebp,%ebp
  809498:	7f 24                	jg     8094be <rio_read+0x4a>
  80949a:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  80949e:	8b 3b                	mov    (%rbx),%edi
  8094a0:	ba 00 20 00 00       	mov    $0x2000,%edx
  8094a5:	48 89 ee             	mov    %rbp,%rsi
  8094a8:	e8 83 78 bf ff       	callq  400d30 <read@plt>
  8094ad:	89 43 04             	mov    %eax,0x4(%rbx)
  8094b0:	85 c0                	test   %eax,%eax
  8094b2:	78 d5                	js     809489 <rio_read+0x15>
  8094b4:	85 c0                	test   %eax,%eax
  8094b6:	74 40                	je     8094f8 <rio_read+0x84>
  8094b8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  8094bc:	eb d5                	jmp    809493 <rio_read+0x1f>
  8094be:	89 e8                	mov    %ebp,%eax
  8094c0:	4c 39 e0             	cmp    %r12,%rax
  8094c3:	72 03                	jb     8094c8 <rio_read+0x54>
  8094c5:	44 89 e5             	mov    %r12d,%ebp
  8094c8:	4c 63 e5             	movslq %ebp,%r12
  8094cb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  8094cf:	4c 89 e2             	mov    %r12,%rdx
  8094d2:	4c 89 ef             	mov    %r13,%rdi
  8094d5:	e8 a6 78 bf ff       	callq  400d80 <memcpy@plt>
  8094da:	4c 01 63 08          	add    %r12,0x8(%rbx)
  8094de:	29 6b 04             	sub    %ebp,0x4(%rbx)
  8094e1:	4c 89 e0             	mov    %r12,%rax
  8094e4:	48 83 c4 08          	add    $0x8,%rsp
  8094e8:	5b                   	pop    %rbx
  8094e9:	5d                   	pop    %rbp
  8094ea:	41 5c                	pop    %r12
  8094ec:	41 5d                	pop    %r13
  8094ee:	c3                   	retq   
  8094ef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  8094f6:	eb ec                	jmp    8094e4 <rio_read+0x70>
  8094f8:	b8 00 00 00 00       	mov    $0x0,%eax
  8094fd:	eb e5                	jmp    8094e4 <rio_read+0x70>

00000000008094ff <rio_readlineb>:
  8094ff:	41 55                	push   %r13
  809501:	41 54                	push   %r12
  809503:	55                   	push   %rbp
  809504:	53                   	push   %rbx
  809505:	48 83 ec 18          	sub    $0x18,%rsp
  809509:	49 89 fd             	mov    %rdi,%r13
  80950c:	48 89 f5             	mov    %rsi,%rbp
  80950f:	49 89 d4             	mov    %rdx,%r12
  809512:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809519:	00 00 
  80951b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  809520:	31 c0                	xor    %eax,%eax
  809522:	bb 01 00 00 00       	mov    $0x1,%ebx
  809527:	4c 39 e3             	cmp    %r12,%rbx
  80952a:	73 47                	jae    809573 <rio_readlineb+0x74>
  80952c:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  809531:	ba 01 00 00 00       	mov    $0x1,%edx
  809536:	4c 89 ef             	mov    %r13,%rdi
  809539:	e8 36 ff ff ff       	callq  809474 <rio_read>
  80953e:	83 f8 01             	cmp    $0x1,%eax
  809541:	75 1c                	jne    80955f <rio_readlineb+0x60>
  809543:	48 8d 45 01          	lea    0x1(%rbp),%rax
  809547:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  80954c:	88 55 00             	mov    %dl,0x0(%rbp)
  80954f:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  809554:	74 1a                	je     809570 <rio_readlineb+0x71>
  809556:	48 83 c3 01          	add    $0x1,%rbx
  80955a:	48 89 c5             	mov    %rax,%rbp
  80955d:	eb c8                	jmp    809527 <rio_readlineb+0x28>
  80955f:	85 c0                	test   %eax,%eax
  809561:	75 32                	jne    809595 <rio_readlineb+0x96>
  809563:	48 83 fb 01          	cmp    $0x1,%rbx
  809567:	75 0a                	jne    809573 <rio_readlineb+0x74>
  809569:	b8 00 00 00 00       	mov    $0x0,%eax
  80956e:	eb 0a                	jmp    80957a <rio_readlineb+0x7b>
  809570:	48 89 c5             	mov    %rax,%rbp
  809573:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  809577:	48 89 d8             	mov    %rbx,%rax
  80957a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  80957f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809586:	00 00 
  809588:	75 14                	jne    80959e <rio_readlineb+0x9f>
  80958a:	48 83 c4 18          	add    $0x18,%rsp
  80958e:	5b                   	pop    %rbx
  80958f:	5d                   	pop    %rbp
  809590:	41 5c                	pop    %r12
  809592:	41 5d                	pop    %r13
  809594:	c3                   	retq   
  809595:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  80959c:	eb dc                	jmp    80957a <rio_readlineb+0x7b>
  80959e:	e8 3d 77 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008095a3 <urlencode>:
  8095a3:	41 54                	push   %r12
  8095a5:	55                   	push   %rbp
  8095a6:	53                   	push   %rbx
  8095a7:	48 83 ec 10          	sub    $0x10,%rsp
  8095ab:	48 89 fb             	mov    %rdi,%rbx
  8095ae:	48 89 f5             	mov    %rsi,%rbp
  8095b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8095b8:	00 00 
  8095ba:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  8095bf:	31 c0                	xor    %eax,%eax
  8095c1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  8095c8:	f2 ae                	repnz scas %es:(%rdi),%al
  8095ca:	48 89 ce             	mov    %rcx,%rsi
  8095cd:	48 f7 d6             	not    %rsi
  8095d0:	8d 46 ff             	lea    -0x1(%rsi),%eax
  8095d3:	eb 0f                	jmp    8095e4 <urlencode+0x41>
  8095d5:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  8095d9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  8095dd:	48 83 c3 01          	add    $0x1,%rbx
  8095e1:	44 89 e0             	mov    %r12d,%eax
  8095e4:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  8095e8:	85 c0                	test   %eax,%eax
  8095ea:	0f 84 a8 00 00 00    	je     809698 <urlencode+0xf5>
  8095f0:	44 0f b6 03          	movzbl (%rbx),%r8d
  8095f4:	41 80 f8 2a          	cmp    $0x2a,%r8b
  8095f8:	0f 94 c2             	sete   %dl
  8095fb:	41 80 f8 2d          	cmp    $0x2d,%r8b
  8095ff:	0f 94 c0             	sete   %al
  809602:	08 c2                	or     %al,%dl
  809604:	75 cf                	jne    8095d5 <urlencode+0x32>
  809606:	41 80 f8 2e          	cmp    $0x2e,%r8b
  80960a:	74 c9                	je     8095d5 <urlencode+0x32>
  80960c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  809610:	74 c3                	je     8095d5 <urlencode+0x32>
  809612:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  809616:	3c 09                	cmp    $0x9,%al
  809618:	76 bb                	jbe    8095d5 <urlencode+0x32>
  80961a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  80961e:	3c 19                	cmp    $0x19,%al
  809620:	76 b3                	jbe    8095d5 <urlencode+0x32>
  809622:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  809626:	3c 19                	cmp    $0x19,%al
  809628:	76 ab                	jbe    8095d5 <urlencode+0x32>
  80962a:	41 80 f8 20          	cmp    $0x20,%r8b
  80962e:	74 56                	je     809686 <urlencode+0xe3>
  809630:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  809634:	3c 5f                	cmp    $0x5f,%al
  809636:	0f 96 c2             	setbe  %dl
  809639:	41 80 f8 09          	cmp    $0x9,%r8b
  80963d:	0f 94 c0             	sete   %al
  809640:	08 c2                	or     %al,%dl
  809642:	74 4f                	je     809693 <urlencode+0xf0>
  809644:	48 89 e7             	mov    %rsp,%rdi
  809647:	45 0f b6 c0          	movzbl %r8b,%r8d
  80964b:	48 8d 0d 96 12 00 00 	lea    0x1296(%rip),%rcx        # 80a8e8 <trans_char+0xa8>
  809652:	ba 08 00 00 00       	mov    $0x8,%edx
  809657:	be 01 00 00 00       	mov    $0x1,%esi
  80965c:	b8 00 00 00 00       	mov    $0x0,%eax
  809661:	e8 ea 77 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809666:	0f b6 04 24          	movzbl (%rsp),%eax
  80966a:	88 45 00             	mov    %al,0x0(%rbp)
  80966d:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  809672:	88 45 01             	mov    %al,0x1(%rbp)
  809675:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  80967a:	88 45 02             	mov    %al,0x2(%rbp)
  80967d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  809681:	e9 57 ff ff ff       	jmpq   8095dd <urlencode+0x3a>
  809686:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  80968a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  80968e:	e9 4a ff ff ff       	jmpq   8095dd <urlencode+0x3a>
  809693:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809698:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  80969d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  8096a4:	00 00 
  8096a6:	75 09                	jne    8096b1 <urlencode+0x10e>
  8096a8:	48 83 c4 10          	add    $0x10,%rsp
  8096ac:	5b                   	pop    %rbx
  8096ad:	5d                   	pop    %rbp
  8096ae:	41 5c                	pop    %r12
  8096b0:	c3                   	retq   
  8096b1:	e8 2a 76 bf ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000008096b6 <submitr>:
  8096b6:	41 57                	push   %r15
  8096b8:	41 56                	push   %r14
  8096ba:	41 55                	push   %r13
  8096bc:	41 54                	push   %r12
  8096be:	55                   	push   %rbp
  8096bf:	53                   	push   %rbx
  8096c0:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  8096c7:	49 89 fd             	mov    %rdi,%r13
  8096ca:	89 74 24 14          	mov    %esi,0x14(%rsp)
  8096ce:	49 89 d7             	mov    %rdx,%r15
  8096d1:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  8096d6:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  8096db:	4d 89 ce             	mov    %r9,%r14
  8096de:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  8096e5:	00 
  8096e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8096ed:	00 00 
  8096ef:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  8096f6:	00 
  8096f7:	31 c0                	xor    %eax,%eax
  8096f9:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  809700:	00 
  809701:	ba 00 00 00 00       	mov    $0x0,%edx
  809706:	be 01 00 00 00       	mov    $0x1,%esi
  80970b:	bf 02 00 00 00       	mov    $0x2,%edi
  809710:	e8 4b 77 bf ff       	callq  400e60 <socket@plt>
  809715:	85 c0                	test   %eax,%eax
  809717:	0f 88 a9 02 00 00    	js     8099c6 <submitr+0x310>
  80971d:	89 c3                	mov    %eax,%ebx
  80971f:	4c 89 ef             	mov    %r13,%rdi
  809722:	e8 29 76 bf ff       	callq  400d50 <gethostbyname@plt>
  809727:	48 85 c0             	test   %rax,%rax
  80972a:	0f 84 e2 02 00 00    	je     809a12 <submitr+0x35c>
  809730:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  809735:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  80973c:	00 00 
  80973e:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  809745:	00 
  809746:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  80974d:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  809754:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809758:	48 8b 40 18          	mov    0x18(%rax),%rax
  80975c:	48 8b 30             	mov    (%rax),%rsi
  80975f:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  809764:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809769:	e8 f2 75 bf ff       	callq  400d60 <__memmove_chk@plt>
  80976e:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  809773:	66 c1 c8 08          	ror    $0x8,%ax
  809777:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  80977c:	ba 10 00 00 00       	mov    $0x10,%edx
  809781:	4c 89 e6             	mov    %r12,%rsi
  809784:	89 df                	mov    %ebx,%edi
  809786:	e8 a5 76 bf ff       	callq  400e30 <connect@plt>
  80978b:	85 c0                	test   %eax,%eax
  80978d:	0f 88 e7 02 00 00    	js     809a7a <submitr+0x3c4>
  809793:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  80979a:	b8 00 00 00 00       	mov    $0x0,%eax
  80979f:	48 89 f1             	mov    %rsi,%rcx
  8097a2:	4c 89 f7             	mov    %r14,%rdi
  8097a5:	f2 ae                	repnz scas %es:(%rdi),%al
  8097a7:	48 89 ca             	mov    %rcx,%rdx
  8097aa:	48 f7 d2             	not    %rdx
  8097ad:	48 89 f1             	mov    %rsi,%rcx
  8097b0:	4c 89 ff             	mov    %r15,%rdi
  8097b3:	f2 ae                	repnz scas %es:(%rdi),%al
  8097b5:	48 f7 d1             	not    %rcx
  8097b8:	49 89 c8             	mov    %rcx,%r8
  8097bb:	48 89 f1             	mov    %rsi,%rcx
  8097be:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  8097c3:	f2 ae                	repnz scas %es:(%rdi),%al
  8097c5:	48 f7 d1             	not    %rcx
  8097c8:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  8097cd:	48 89 f1             	mov    %rsi,%rcx
  8097d0:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  8097d5:	f2 ae                	repnz scas %es:(%rdi),%al
  8097d7:	48 89 c8             	mov    %rcx,%rax
  8097da:	48 f7 d0             	not    %rax
  8097dd:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  8097e2:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  8097e7:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  8097ee:	00 
  8097ef:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  8097f5:	0f 87 d9 02 00 00    	ja     809ad4 <submitr+0x41e>
  8097fb:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  809802:	00 
  809803:	b9 00 04 00 00       	mov    $0x400,%ecx
  809808:	b8 00 00 00 00       	mov    $0x0,%eax
  80980d:	48 89 f7             	mov    %rsi,%rdi
  809810:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  809813:	4c 89 f7             	mov    %r14,%rdi
  809816:	e8 88 fd ff ff       	callq  8095a3 <urlencode>
  80981b:	85 c0                	test   %eax,%eax
  80981d:	0f 88 24 03 00 00    	js     809b47 <submitr+0x491>
  809823:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  80982a:	00 
  80982b:	41 55                	push   %r13
  80982d:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  809834:	00 
  809835:	50                   	push   %rax
  809836:	4d 89 f9             	mov    %r15,%r9
  809839:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  80983e:	48 8d 0d 33 10 00 00 	lea    0x1033(%rip),%rcx        # 80a878 <trans_char+0x38>
  809845:	ba 00 20 00 00       	mov    $0x2000,%edx
  80984a:	be 01 00 00 00       	mov    $0x1,%esi
  80984f:	4c 89 e7             	mov    %r12,%rdi
  809852:	b8 00 00 00 00       	mov    $0x0,%eax
  809857:	e8 f4 75 bf ff       	callq  400e50 <__sprintf_chk@plt>
  80985c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  809863:	b8 00 00 00 00       	mov    $0x0,%eax
  809868:	4c 89 e7             	mov    %r12,%rdi
  80986b:	f2 ae                	repnz scas %es:(%rdi),%al
  80986d:	48 89 ca             	mov    %rcx,%rdx
  809870:	48 f7 d2             	not    %rdx
  809873:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  809877:	4c 89 e6             	mov    %r12,%rsi
  80987a:	89 df                	mov    %ebx,%edi
  80987c:	e8 95 fb ff ff       	callq  809416 <rio_writen>
  809881:	48 83 c4 10          	add    $0x10,%rsp
  809885:	48 85 c0             	test   %rax,%rax
  809888:	0f 88 44 03 00 00    	js     809bd2 <submitr+0x51c>
  80988e:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  809893:	89 de                	mov    %ebx,%esi
  809895:	4c 89 e7             	mov    %r12,%rdi
  809898:	e8 37 fb ff ff       	callq  8093d4 <rio_readinitb>
  80989d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8098a4:	00 
  8098a5:	ba 00 20 00 00       	mov    $0x2000,%edx
  8098aa:	4c 89 e7             	mov    %r12,%rdi
  8098ad:	e8 4d fc ff ff       	callq  8094ff <rio_readlineb>
  8098b2:	48 85 c0             	test   %rax,%rax
  8098b5:	0f 8e 86 03 00 00    	jle    809c41 <submitr+0x58b>
  8098bb:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  8098c0:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  8098c7:	00 
  8098c8:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  8098cf:	00 
  8098d0:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  8098d7:	00 
  8098d8:	48 8d 35 10 10 00 00 	lea    0x1010(%rip),%rsi        # 80a8ef <trans_char+0xaf>
  8098df:	b8 00 00 00 00       	mov    $0x0,%eax
  8098e4:	e8 d7 74 bf ff       	callq  400dc0 <__isoc99_sscanf@plt>
  8098e9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8098f0:	00 
  8098f1:	b9 03 00 00 00       	mov    $0x3,%ecx
  8098f6:	48 8d 3d 09 10 00 00 	lea    0x1009(%rip),%rdi        # 80a906 <trans_char+0xc6>
  8098fd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  8098ff:	0f 97 c0             	seta   %al
  809902:	1c 00                	sbb    $0x0,%al
  809904:	84 c0                	test   %al,%al
  809906:	0f 84 b3 03 00 00    	je     809cbf <submitr+0x609>
  80990c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809913:	00 
  809914:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809919:	ba 00 20 00 00       	mov    $0x2000,%edx
  80991e:	e8 dc fb ff ff       	callq  8094ff <rio_readlineb>
  809923:	48 85 c0             	test   %rax,%rax
  809926:	7f c1                	jg     8098e9 <submitr+0x233>
  809928:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  80992f:	3a 20 43 
  809932:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809939:	20 75 6e 
  80993c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809940:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809944:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  80994b:	74 6f 20 
  80994e:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  809955:	68 65 61 
  809958:	48 89 45 10          	mov    %rax,0x10(%rbp)
  80995c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809960:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  809967:	66 72 6f 
  80996a:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  809971:	20 72 65 
  809974:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809978:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  80997c:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  809983:	73 65 72 
  809986:	48 89 45 30          	mov    %rax,0x30(%rbp)
  80998a:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  809991:	89 df                	mov    %ebx,%edi
  809993:	e8 88 73 bf ff       	callq  400d20 <close@plt>
  809998:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80999d:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  8099a4:	00 
  8099a5:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  8099ac:	00 00 
  8099ae:	0f 85 7e 04 00 00    	jne    809e32 <submitr+0x77c>
  8099b4:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  8099bb:	5b                   	pop    %rbx
  8099bc:	5d                   	pop    %rbp
  8099bd:	41 5c                	pop    %r12
  8099bf:	41 5d                	pop    %r13
  8099c1:	41 5e                	pop    %r14
  8099c3:	41 5f                	pop    %r15
  8099c5:	c3                   	retq   
  8099c6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8099cd:	3a 20 43 
  8099d0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  8099d7:	20 75 6e 
  8099da:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8099de:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8099e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8099e9:	74 6f 20 
  8099ec:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  8099f3:	65 20 73 
  8099f6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8099fa:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8099fe:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  809a05:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  809a0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a10:	eb 8b                	jmp    80999d <submitr+0x2e7>
  809a12:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809a19:	3a 20 44 
  809a1c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809a23:	20 75 6e 
  809a26:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a2a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a2e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809a35:	74 6f 20 
  809a38:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809a3f:	76 65 20 
  809a42:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a46:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a4a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809a51:	72 20 61 
  809a54:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a58:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  809a5f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  809a65:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  809a69:	89 df                	mov    %ebx,%edi
  809a6b:	e8 b0 72 bf ff       	callq  400d20 <close@plt>
  809a70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a75:	e9 23 ff ff ff       	jmpq   80999d <submitr+0x2e7>
  809a7a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809a81:	3a 20 55 
  809a84:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809a8b:	20 74 6f 
  809a8e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a92:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a96:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809a9d:	65 63 74 
  809aa0:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  809aa7:	68 65 20 
  809aaa:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809aae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809ab2:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  809ab9:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  809abf:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  809ac3:	89 df                	mov    %ebx,%edi
  809ac5:	e8 56 72 bf ff       	callq  400d20 <close@plt>
  809aca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809acf:	e9 c9 fe ff ff       	jmpq   80999d <submitr+0x2e7>
  809ad4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809adb:	3a 20 52 
  809ade:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  809ae5:	20 73 74 
  809ae8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809aec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809af0:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  809af7:	74 6f 6f 
  809afa:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  809b01:	65 2e 20 
  809b04:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b0c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  809b13:	61 73 65 
  809b16:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  809b1d:	49 54 52 
  809b20:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b24:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b28:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  809b2f:	55 46 00 
  809b32:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809b36:	89 df                	mov    %ebx,%edi
  809b38:	e8 e3 71 bf ff       	callq  400d20 <close@plt>
  809b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b42:	e9 56 fe ff ff       	jmpq   80999d <submitr+0x2e7>
  809b47:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809b4e:	3a 20 52 
  809b51:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  809b58:	20 73 74 
  809b5b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809b5f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809b63:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  809b6a:	63 6f 6e 
  809b6d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  809b74:	20 61 6e 
  809b77:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b7b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b7f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  809b86:	67 61 6c 
  809b89:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  809b90:	6e 70 72 
  809b93:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b97:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b9b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  809ba2:	6c 65 20 
  809ba5:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  809bac:	63 74 65 
  809baf:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809bb3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  809bb7:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  809bbd:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  809bc1:	89 df                	mov    %ebx,%edi
  809bc3:	e8 58 71 bf ff       	callq  400d20 <close@plt>
  809bc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809bcd:	e9 cb fd ff ff       	jmpq   80999d <submitr+0x2e7>
  809bd2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809bd9:	3a 20 43 
  809bdc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809be3:	20 75 6e 
  809be6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809bea:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809bee:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809bf5:	74 6f 20 
  809bf8:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  809bff:	20 74 6f 
  809c02:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809c06:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809c0a:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  809c11:	72 65 73 
  809c14:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  809c1b:	65 72 76 
  809c1e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809c22:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809c26:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  809c2c:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  809c30:	89 df                	mov    %ebx,%edi
  809c32:	e8 e9 70 bf ff       	callq  400d20 <close@plt>
  809c37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809c3c:	e9 5c fd ff ff       	jmpq   80999d <submitr+0x2e7>
  809c41:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809c48:	3a 20 43 
  809c4b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809c52:	20 75 6e 
  809c55:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809c59:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809c5d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809c64:	74 6f 20 
  809c67:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  809c6e:	66 69 72 
  809c71:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809c75:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809c79:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  809c80:	61 64 65 
  809c83:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  809c8a:	6d 20 72 
  809c8d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809c91:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809c95:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  809c9c:	20 73 65 
  809c9f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809ca3:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  809caa:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  809cae:	89 df                	mov    %ebx,%edi
  809cb0:	e8 6b 70 bf ff       	callq  400d20 <close@plt>
  809cb5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809cba:	e9 de fc ff ff       	jmpq   80999d <submitr+0x2e7>
  809cbf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809cc6:	00 
  809cc7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809ccc:	ba 00 20 00 00       	mov    $0x2000,%edx
  809cd1:	e8 29 f8 ff ff       	callq  8094ff <rio_readlineb>
  809cd6:	48 85 c0             	test   %rax,%rax
  809cd9:	0f 8e 96 00 00 00    	jle    809d75 <submitr+0x6bf>
  809cdf:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  809ce4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  809ceb:	0f 85 08 01 00 00    	jne    809df9 <submitr+0x743>
  809cf1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809cf8:	00 
  809cf9:	48 89 ef             	mov    %rbp,%rdi
  809cfc:	e8 af 6f bf ff       	callq  400cb0 <strcpy@plt>
  809d01:	89 df                	mov    %ebx,%edi
  809d03:	e8 18 70 bf ff       	callq  400d20 <close@plt>
  809d08:	b9 04 00 00 00       	mov    $0x4,%ecx
  809d0d:	48 8d 3d ec 0b 00 00 	lea    0xbec(%rip),%rdi        # 80a900 <trans_char+0xc0>
  809d14:	48 89 ee             	mov    %rbp,%rsi
  809d17:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809d19:	0f 97 c0             	seta   %al
  809d1c:	1c 00                	sbb    $0x0,%al
  809d1e:	0f be c0             	movsbl %al,%eax
  809d21:	85 c0                	test   %eax,%eax
  809d23:	0f 84 74 fc ff ff    	je     80999d <submitr+0x2e7>
  809d29:	b9 05 00 00 00       	mov    $0x5,%ecx
  809d2e:	48 8d 3d cf 0b 00 00 	lea    0xbcf(%rip),%rdi        # 80a904 <trans_char+0xc4>
  809d35:	48 89 ee             	mov    %rbp,%rsi
  809d38:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809d3a:	0f 97 c0             	seta   %al
  809d3d:	1c 00                	sbb    $0x0,%al
  809d3f:	0f be c0             	movsbl %al,%eax
  809d42:	85 c0                	test   %eax,%eax
  809d44:	0f 84 53 fc ff ff    	je     80999d <submitr+0x2e7>
  809d4a:	b9 03 00 00 00       	mov    $0x3,%ecx
  809d4f:	48 8d 3d b3 0b 00 00 	lea    0xbb3(%rip),%rdi        # 80a909 <trans_char+0xc9>
  809d56:	48 89 ee             	mov    %rbp,%rsi
  809d59:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809d5b:	0f 97 c0             	seta   %al
  809d5e:	1c 00                	sbb    $0x0,%al
  809d60:	0f be c0             	movsbl %al,%eax
  809d63:	85 c0                	test   %eax,%eax
  809d65:	0f 84 32 fc ff ff    	je     80999d <submitr+0x2e7>
  809d6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809d70:	e9 28 fc ff ff       	jmpq   80999d <submitr+0x2e7>
  809d75:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809d7c:	3a 20 43 
  809d7f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809d86:	20 75 6e 
  809d89:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809d8d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809d91:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809d98:	74 6f 20 
  809d9b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  809da2:	73 74 61 
  809da5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809da9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809dad:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  809db4:	65 73 73 
  809db7:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  809dbe:	72 6f 6d 
  809dc1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809dc5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809dc9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  809dd0:	6c 74 20 
  809dd3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809dd7:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  809dde:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  809de4:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  809de8:	89 df                	mov    %ebx,%edi
  809dea:	e8 31 6f bf ff       	callq  400d20 <close@plt>
  809def:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809df4:	e9 a4 fb ff ff       	jmpq   80999d <submitr+0x2e7>
  809df9:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  809e00:	00 
  809e01:	48 8d 0d b0 0a 00 00 	lea    0xab0(%rip),%rcx        # 80a8b8 <trans_char+0x78>
  809e08:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  809e0f:	be 01 00 00 00       	mov    $0x1,%esi
  809e14:	48 89 ef             	mov    %rbp,%rdi
  809e17:	b8 00 00 00 00       	mov    $0x0,%eax
  809e1c:	e8 2f 70 bf ff       	callq  400e50 <__sprintf_chk@plt>
  809e21:	89 df                	mov    %ebx,%edi
  809e23:	e8 f8 6e bf ff       	callq  400d20 <close@plt>
  809e28:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809e2d:	e9 6b fb ff ff       	jmpq   80999d <submitr+0x2e7>
  809e32:	e8 a9 6e bf ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000809e37 <init_timeout>:
  809e37:	85 ff                	test   %edi,%edi
  809e39:	74 28                	je     809e63 <init_timeout+0x2c>
  809e3b:	53                   	push   %rbx
  809e3c:	89 fb                	mov    %edi,%ebx
  809e3e:	85 ff                	test   %edi,%edi
  809e40:	78 1a                	js     809e5c <init_timeout+0x25>
  809e42:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 8093e6 <sigalrm_handler>
  809e49:	bf 0e 00 00 00       	mov    $0xe,%edi
  809e4e:	e8 ed 6e bf ff       	callq  400d40 <signal@plt>
  809e53:	89 df                	mov    %ebx,%edi
  809e55:	e8 b6 6e bf ff       	callq  400d10 <alarm@plt>
  809e5a:	5b                   	pop    %rbx
  809e5b:	c3                   	retq   
  809e5c:	bb 00 00 00 00       	mov    $0x0,%ebx
  809e61:	eb df                	jmp    809e42 <init_timeout+0xb>
  809e63:	f3 c3                	repz retq 

0000000000809e65 <init_driver>:
  809e65:	41 54                	push   %r12
  809e67:	55                   	push   %rbp
  809e68:	53                   	push   %rbx
  809e69:	48 83 ec 20          	sub    $0x20,%rsp
  809e6d:	49 89 fc             	mov    %rdi,%r12
  809e70:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809e77:	00 00 
  809e79:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  809e7e:	31 c0                	xor    %eax,%eax
  809e80:	be 01 00 00 00       	mov    $0x1,%esi
  809e85:	bf 0d 00 00 00       	mov    $0xd,%edi
  809e8a:	e8 b1 6e bf ff       	callq  400d40 <signal@plt>
  809e8f:	be 01 00 00 00       	mov    $0x1,%esi
  809e94:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809e99:	e8 a2 6e bf ff       	callq  400d40 <signal@plt>
  809e9e:	be 01 00 00 00       	mov    $0x1,%esi
  809ea3:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809ea8:	e8 93 6e bf ff       	callq  400d40 <signal@plt>
  809ead:	ba 00 00 00 00       	mov    $0x0,%edx
  809eb2:	be 01 00 00 00       	mov    $0x1,%esi
  809eb7:	bf 02 00 00 00       	mov    $0x2,%edi
  809ebc:	e8 9f 6f bf ff       	callq  400e60 <socket@plt>
  809ec1:	85 c0                	test   %eax,%eax
  809ec3:	0f 88 a3 00 00 00    	js     809f6c <init_driver+0x107>
  809ec9:	89 c3                	mov    %eax,%ebx
  809ecb:	48 8d 3d 5f 05 00 00 	lea    0x55f(%rip),%rdi        # 80a431 <_IO_stdin_used+0x251>
  809ed2:	e8 79 6e bf ff       	callq  400d50 <gethostbyname@plt>
  809ed7:	48 85 c0             	test   %rax,%rax
  809eda:	0f 84 df 00 00 00    	je     809fbf <init_driver+0x15a>
  809ee0:	48 89 e5             	mov    %rsp,%rbp
  809ee3:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  809eea:	00 00 
  809eec:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  809ef3:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  809ef9:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  809eff:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809f03:	48 8b 40 18          	mov    0x18(%rax),%rax
  809f07:	48 8b 30             	mov    (%rax),%rsi
  809f0a:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  809f0e:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809f13:	e8 48 6e bf ff       	callq  400d60 <__memmove_chk@plt>
  809f18:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  809f1f:	ba 10 00 00 00       	mov    $0x10,%edx
  809f24:	48 89 ee             	mov    %rbp,%rsi
  809f27:	89 df                	mov    %ebx,%edi
  809f29:	e8 02 6f bf ff       	callq  400e30 <connect@plt>
  809f2e:	85 c0                	test   %eax,%eax
  809f30:	0f 88 fb 00 00 00    	js     80a031 <init_driver+0x1cc>
  809f36:	89 df                	mov    %ebx,%edi
  809f38:	e8 e3 6d bf ff       	callq  400d20 <close@plt>
  809f3d:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  809f44:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  809f4a:	b8 00 00 00 00       	mov    $0x0,%eax
  809f4f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  809f54:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809f5b:	00 00 
  809f5d:	0f 85 28 01 00 00    	jne    80a08b <init_driver+0x226>
  809f63:	48 83 c4 20          	add    $0x20,%rsp
  809f67:	5b                   	pop    %rbx
  809f68:	5d                   	pop    %rbp
  809f69:	41 5c                	pop    %r12
  809f6b:	c3                   	retq   
  809f6c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809f73:	3a 20 43 
  809f76:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809f7d:	20 75 6e 
  809f80:	49 89 04 24          	mov    %rax,(%r12)
  809f84:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809f89:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809f90:	74 6f 20 
  809f93:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  809f9a:	65 20 73 
  809f9d:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809fa2:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809fa7:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  809fae:	6b 65 
  809fb0:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  809fb7:	00 
  809fb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809fbd:	eb 90                	jmp    809f4f <init_driver+0xea>
  809fbf:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809fc6:	3a 20 44 
  809fc9:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809fd0:	20 75 6e 
  809fd3:	49 89 04 24          	mov    %rax,(%r12)
  809fd7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809fdc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809fe3:	74 6f 20 
  809fe6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809fed:	76 65 20 
  809ff0:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809ff5:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809ffa:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  80a001:	72 20 61 
  80a004:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  80a009:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  80a010:	72 65 
  80a012:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  80a019:	73 
  80a01a:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  80a020:	89 df                	mov    %ebx,%edi
  80a022:	e8 f9 6c bf ff       	callq  400d20 <close@plt>
  80a027:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80a02c:	e9 1e ff ff ff       	jmpq   809f4f <init_driver+0xea>
  80a031:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  80a038:	3a 20 55 
  80a03b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  80a042:	20 74 6f 
  80a045:	49 89 04 24          	mov    %rax,(%r12)
  80a049:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  80a04e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  80a055:	65 63 74 
  80a058:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  80a05f:	65 72 76 
  80a062:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  80a067:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  80a06c:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  80a073:	72 
  80a074:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  80a07a:	89 df                	mov    %ebx,%edi
  80a07c:	e8 9f 6c bf ff       	callq  400d20 <close@plt>
  80a081:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80a086:	e9 c4 fe ff ff       	jmpq   809f4f <init_driver+0xea>
  80a08b:	e8 50 6c bf ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000080a090 <driver_post>:
  80a090:	53                   	push   %rbx
  80a091:	4c 89 cb             	mov    %r9,%rbx
  80a094:	45 85 c0             	test   %r8d,%r8d
  80a097:	75 18                	jne    80a0b1 <driver_post+0x21>
  80a099:	48 85 ff             	test   %rdi,%rdi
  80a09c:	74 05                	je     80a0a3 <driver_post+0x13>
  80a09e:	80 3f 00             	cmpb   $0x0,(%rdi)
  80a0a1:	75 37                	jne    80a0da <driver_post+0x4a>
  80a0a3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  80a0a8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  80a0ac:	44 89 c0             	mov    %r8d,%eax
  80a0af:	5b                   	pop    %rbx
  80a0b0:	c3                   	retq   
  80a0b1:	48 89 ca             	mov    %rcx,%rdx
  80a0b4:	48 8d 35 51 08 00 00 	lea    0x851(%rip),%rsi        # 80a90c <trans_char+0xcc>
  80a0bb:	bf 01 00 00 00       	mov    $0x1,%edi
  80a0c0:	b8 00 00 00 00       	mov    $0x0,%eax
  80a0c5:	e8 16 6d bf ff       	callq  400de0 <__printf_chk@plt>
  80a0ca:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  80a0cf:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  80a0d3:	b8 00 00 00 00       	mov    $0x0,%eax
  80a0d8:	eb d5                	jmp    80a0af <driver_post+0x1f>
  80a0da:	48 83 ec 08          	sub    $0x8,%rsp
  80a0de:	41 51                	push   %r9
  80a0e0:	49 89 c9             	mov    %rcx,%r9
  80a0e3:	49 89 d0             	mov    %rdx,%r8
  80a0e6:	48 89 f9             	mov    %rdi,%rcx
  80a0e9:	48 89 f2             	mov    %rsi,%rdx
  80a0ec:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  80a0f1:	48 8d 3d 39 03 00 00 	lea    0x339(%rip),%rdi        # 80a431 <_IO_stdin_used+0x251>
  80a0f8:	e8 b9 f5 ff ff       	callq  8096b6 <submitr>
  80a0fd:	48 83 c4 10          	add    $0x10,%rsp
  80a101:	eb ac                	jmp    80a0af <driver_post+0x1f>

000000000080a103 <check>:
  80a103:	89 f8                	mov    %edi,%eax
  80a105:	c1 e8 1c             	shr    $0x1c,%eax
  80a108:	85 c0                	test   %eax,%eax
  80a10a:	74 1d                	je     80a129 <check+0x26>
  80a10c:	b9 00 00 00 00       	mov    $0x0,%ecx
  80a111:	83 f9 1f             	cmp    $0x1f,%ecx
  80a114:	7f 0d                	jg     80a123 <check+0x20>
  80a116:	89 f8                	mov    %edi,%eax
  80a118:	d3 e8                	shr    %cl,%eax
  80a11a:	3c 0a                	cmp    $0xa,%al
  80a11c:	74 11                	je     80a12f <check+0x2c>
  80a11e:	83 c1 08             	add    $0x8,%ecx
  80a121:	eb ee                	jmp    80a111 <check+0xe>
  80a123:	b8 01 00 00 00       	mov    $0x1,%eax
  80a128:	c3                   	retq   
  80a129:	b8 00 00 00 00       	mov    $0x0,%eax
  80a12e:	c3                   	retq   
  80a12f:	b8 00 00 00 00       	mov    $0x0,%eax
  80a134:	c3                   	retq   

000000000080a135 <gencookie>:
  80a135:	53                   	push   %rbx
  80a136:	83 c7 01             	add    $0x1,%edi
  80a139:	e8 52 6b bf ff       	callq  400c90 <srandom@plt>
  80a13e:	e8 5d 6c bf ff       	callq  400da0 <random@plt>
  80a143:	89 c3                	mov    %eax,%ebx
  80a145:	89 c7                	mov    %eax,%edi
  80a147:	e8 b7 ff ff ff       	callq  80a103 <check>
  80a14c:	85 c0                	test   %eax,%eax
  80a14e:	74 ee                	je     80a13e <gencookie+0x9>
  80a150:	89 d8                	mov    %ebx,%eax
  80a152:	5b                   	pop    %rbx
  80a153:	c3                   	retq   
  80a154:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  80a15b:	00 00 00 
  80a15e:	66 90                	xchg   %ax,%ax

000000000080a160 <__libc_csu_init>:
  80a160:	41 57                	push   %r15
  80a162:	41 56                	push   %r14
  80a164:	49 89 d7             	mov    %rdx,%r15
  80a167:	41 55                	push   %r13
  80a169:	41 54                	push   %r12
  80a16b:	4c 8d 25 9e 1c 20 00 	lea    0x201c9e(%rip),%r12        # a0be10 <__frame_dummy_init_array_entry>
  80a172:	55                   	push   %rbp
  80a173:	48 8d 2d 9e 1c 20 00 	lea    0x201c9e(%rip),%rbp        # a0be18 <__do_global_dtors_aux_fini_array_entry>
  80a17a:	53                   	push   %rbx
  80a17b:	41 89 fd             	mov    %edi,%r13d
  80a17e:	49 89 f6             	mov    %rsi,%r14
  80a181:	4c 29 e5             	sub    %r12,%rbp
  80a184:	48 83 ec 08          	sub    $0x8,%rsp
  80a188:	48 c1 fd 03          	sar    $0x3,%rbp
  80a18c:	e8 b7 6a bf ff       	callq  400c48 <_init>
  80a191:	48 85 ed             	test   %rbp,%rbp
  80a194:	74 20                	je     80a1b6 <__libc_csu_init+0x56>
  80a196:	31 db                	xor    %ebx,%ebx
  80a198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80a19f:	00 
  80a1a0:	4c 89 fa             	mov    %r15,%rdx
  80a1a3:	4c 89 f6             	mov    %r14,%rsi
  80a1a6:	44 89 ef             	mov    %r13d,%edi
  80a1a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  80a1ad:	48 83 c3 01          	add    $0x1,%rbx
  80a1b1:	48 39 dd             	cmp    %rbx,%rbp
  80a1b4:	75 ea                	jne    80a1a0 <__libc_csu_init+0x40>
  80a1b6:	48 83 c4 08          	add    $0x8,%rsp
  80a1ba:	5b                   	pop    %rbx
  80a1bb:	5d                   	pop    %rbp
  80a1bc:	41 5c                	pop    %r12
  80a1be:	41 5d                	pop    %r13
  80a1c0:	41 5e                	pop    %r14
  80a1c2:	41 5f                	pop    %r15
  80a1c4:	c3                   	retq   
  80a1c5:	90                   	nop
  80a1c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  80a1cd:	00 00 00 

000000000080a1d0 <__libc_csu_fini>:
  80a1d0:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 b3 60 00 	mov    0x60b3a5(%rip),%rax        # a0bff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 b3 60 00    	pushq  0x60b3a2(%rip)        # a0c008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 b3 60 00    	jmpq   *0x60b3a4(%rip)        # a0c010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <__snprintf_chk@plt>:
  400c70:	ff 25 a2 b3 60 00    	jmpq   *0x60b3a2(%rip)        # a0c018 <__snprintf_chk@GLIBC_2.3.4>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a b3 60 00    	jmpq   *0x60b39a(%rip)        # a0c020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 b3 60 00    	jmpq   *0x60b392(%rip)        # a0c028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a b3 60 00    	jmpq   *0x60b38a(%rip)        # a0c030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 b3 60 00    	jmpq   *0x60b382(%rip)        # a0c038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a b3 60 00    	jmpq   *0x60b37a(%rip)        # a0c040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 b3 60 00    	jmpq   *0x60b372(%rip)        # a0c048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a b3 60 00    	jmpq   *0x60b36a(%rip)        # a0c050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 b3 60 00    	jmpq   *0x60b362(%rip)        # a0c058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a b3 60 00    	jmpq   *0x60b35a(%rip)        # a0c060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 b3 60 00    	jmpq   *0x60b352(%rip)        # a0c068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a b3 60 00    	jmpq   *0x60b34a(%rip)        # a0c070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 b3 60 00    	jmpq   *0x60b342(%rip)        # a0c078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a b3 60 00    	jmpq   *0x60b33a(%rip)        # a0c080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 b3 60 00    	jmpq   *0x60b332(%rip)        # a0c088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a b3 60 00    	jmpq   *0x60b32a(%rip)        # a0c090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 b3 60 00    	jmpq   *0x60b322(%rip)        # a0c098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a b3 60 00    	jmpq   *0x60b31a(%rip)        # a0c0a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 b3 60 00    	jmpq   *0x60b312(%rip)        # a0c0a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a b3 60 00    	jmpq   *0x60b30a(%rip)        # a0c0b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 b3 60 00    	jmpq   *0x60b302(%rip)        # a0c0b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa b2 60 00    	jmpq   *0x60b2fa(%rip)        # a0c0c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 b2 60 00    	jmpq   *0x60b2f2(%rip)        # a0c0c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea b2 60 00    	jmpq   *0x60b2ea(%rip)        # a0c0d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 b2 60 00    	jmpq   *0x60b2e2(%rip)        # a0c0d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da b2 60 00    	jmpq   *0x60b2da(%rip)        # a0c0e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 b2 60 00    	jmpq   *0x60b2d2(%rip)        # a0c0e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <exit@plt>:
  400e20:	ff 25 ca b2 60 00    	jmpq   *0x60b2ca(%rip)        # a0c0f0 <exit@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <connect@plt>:
  400e30:	ff 25 c2 b2 60 00    	jmpq   *0x60b2c2(%rip)        # a0c0f8 <connect@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <__fprintf_chk@plt>:
  400e40:	ff 25 ba b2 60 00    	jmpq   *0x60b2ba(%rip)        # a0c100 <__fprintf_chk@GLIBC_2.3.4>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__sprintf_chk@plt>:
  400e50:	ff 25 b2 b2 60 00    	jmpq   *0x60b2b2(%rip)        # a0c108 <__sprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <socket@plt>:
  400e60:	ff 25 aa b2 60 00    	jmpq   *0x60b2aa(%rip)        # a0c110 <socket@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .fini:

000000000080a1d4 <_fini>:
  80a1d4:	48 83 ec 08          	sub    $0x8,%rsp
  80a1d8:	48 83 c4 08          	add    $0x8,%rsp
  80a1dc:	c3                   	retq   
