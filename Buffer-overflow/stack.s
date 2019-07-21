
stack:     file format elf32-i386


Disassembly of section .init:

0804838c <_init>:
 804838c:	53                   	push   %ebx
 804838d:	83 ec 08             	sub    $0x8,%esp
 8048390:	e8 db 00 00 00       	call   8048470 <__x86.get_pc_thunk.bx>
 8048395:	81 c3 6b 1c 00 00    	add    $0x1c6b,%ebx
 804839b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483a1:	85 c0                	test   %eax,%eax
 80483a3:	74 05                	je     80483aa <_init+0x1e>
 80483a5:	e8 86 00 00 00       	call   8048430 <fopen@plt+0x10>
 80483aa:	83 c4 08             	add    $0x8,%esp
 80483ad:	5b                   	pop    %ebx
 80483ae:	c3                   	ret    

Disassembly of section .plt:

080483b0 <printf@plt-0x10>:
 80483b0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483b6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483bc:	00 00                	add    %al,(%eax)
	...

080483c0 <printf@plt>:
 80483c0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483c6:	68 00 00 00 00       	push   $0x0
 80483cb:	e9 e0 ff ff ff       	jmp    80483b0 <_init+0x24>

080483d0 <__stack_chk_fail@plt>:
 80483d0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483d6:	68 08 00 00 00       	push   $0x8
 80483db:	e9 d0 ff ff ff       	jmp    80483b0 <_init+0x24>

080483e0 <fread@plt>:
 80483e0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483e6:	68 10 00 00 00       	push   $0x10
 80483eb:	e9 c0 ff ff ff       	jmp    80483b0 <_init+0x24>

080483f0 <strcpy@plt>:
 80483f0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483f6:	68 18 00 00 00       	push   $0x18
 80483fb:	e9 b0 ff ff ff       	jmp    80483b0 <_init+0x24>

08048400 <puts@plt>:
 8048400:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048406:	68 20 00 00 00       	push   $0x20
 804840b:	e9 a0 ff ff ff       	jmp    80483b0 <_init+0x24>

08048410 <__libc_start_main@plt>:
 8048410:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048416:	68 28 00 00 00       	push   $0x28
 804841b:	e9 90 ff ff ff       	jmp    80483b0 <_init+0x24>

08048420 <fopen@plt>:
 8048420:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048426:	68 30 00 00 00       	push   $0x30
 804842b:	e9 80 ff ff ff       	jmp    80483b0 <_init+0x24>

Disassembly of section .plt.got:

08048430 <.plt.got>:
 8048430:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048436:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048440 <_start>:
 8048440:	31 ed                	xor    %ebp,%ebp
 8048442:	5e                   	pop    %esi
 8048443:	89 e1                	mov    %esp,%ecx
 8048445:	83 e4 f0             	and    $0xfffffff0,%esp
 8048448:	50                   	push   %eax
 8048449:	54                   	push   %esp
 804844a:	52                   	push   %edx
 804844b:	68 a0 86 04 08       	push   $0x80486a0
 8048450:	68 40 86 04 08       	push   $0x8048640
 8048455:	51                   	push   %ecx
 8048456:	56                   	push   %esi
 8048457:	68 90 85 04 08       	push   $0x8048590
 804845c:	e8 af ff ff ff       	call   8048410 <__libc_start_main@plt>
 8048461:	f4                   	hlt    
 8048462:	66 90                	xchg   %ax,%ax
 8048464:	66 90                	xchg   %ax,%ax
 8048466:	66 90                	xchg   %ax,%ax
 8048468:	66 90                	xchg   %ax,%ax
 804846a:	66 90                	xchg   %ax,%ax
 804846c:	66 90                	xchg   %ax,%ax
 804846e:	66 90                	xchg   %ax,%ax

08048470 <__x86.get_pc_thunk.bx>:
 8048470:	8b 1c 24             	mov    (%esp),%ebx
 8048473:	c3                   	ret    
 8048474:	66 90                	xchg   %ax,%ax
 8048476:	66 90                	xchg   %ax,%ax
 8048478:	66 90                	xchg   %ax,%ax
 804847a:	66 90                	xchg   %ax,%ax
 804847c:	66 90                	xchg   %ax,%ax
 804847e:	66 90                	xchg   %ax,%ax

08048480 <deregister_tm_clones>:
 8048480:	b8 33 a0 04 08       	mov    $0x804a033,%eax
 8048485:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 804848a:	83 f8 06             	cmp    $0x6,%eax
 804848d:	76 1a                	jbe    80484a9 <deregister_tm_clones+0x29>
 804848f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048494:	85 c0                	test   %eax,%eax
 8048496:	74 11                	je     80484a9 <deregister_tm_clones+0x29>
 8048498:	55                   	push   %ebp
 8048499:	89 e5                	mov    %esp,%ebp
 804849b:	83 ec 14             	sub    $0x14,%esp
 804849e:	68 30 a0 04 08       	push   $0x804a030
 80484a3:	ff d0                	call   *%eax
 80484a5:	83 c4 10             	add    $0x10,%esp
 80484a8:	c9                   	leave  
 80484a9:	f3 c3                	repz ret 
 80484ab:	90                   	nop
 80484ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080484b0 <register_tm_clones>:
 80484b0:	b8 30 a0 04 08       	mov    $0x804a030,%eax
 80484b5:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 80484ba:	c1 f8 02             	sar    $0x2,%eax
 80484bd:	89 c2                	mov    %eax,%edx
 80484bf:	c1 ea 1f             	shr    $0x1f,%edx
 80484c2:	01 d0                	add    %edx,%eax
 80484c4:	d1 f8                	sar    %eax
 80484c6:	74 1b                	je     80484e3 <register_tm_clones+0x33>
 80484c8:	ba 00 00 00 00       	mov    $0x0,%edx
 80484cd:	85 d2                	test   %edx,%edx
 80484cf:	74 12                	je     80484e3 <register_tm_clones+0x33>
 80484d1:	55                   	push   %ebp
 80484d2:	89 e5                	mov    %esp,%ebp
 80484d4:	83 ec 10             	sub    $0x10,%esp
 80484d7:	50                   	push   %eax
 80484d8:	68 30 a0 04 08       	push   $0x804a030
 80484dd:	ff d2                	call   *%edx
 80484df:	83 c4 10             	add    $0x10,%esp
 80484e2:	c9                   	leave  
 80484e3:	f3 c3                	repz ret 
 80484e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484f0 <__do_global_dtors_aux>:
 80484f0:	80 3d 30 a0 04 08 00 	cmpb   $0x0,0x804a030
 80484f7:	75 13                	jne    804850c <__do_global_dtors_aux+0x1c>
 80484f9:	55                   	push   %ebp
 80484fa:	89 e5                	mov    %esp,%ebp
 80484fc:	83 ec 08             	sub    $0x8,%esp
 80484ff:	e8 7c ff ff ff       	call   8048480 <deregister_tm_clones>
 8048504:	c6 05 30 a0 04 08 01 	movb   $0x1,0x804a030
 804850b:	c9                   	leave  
 804850c:	f3 c3                	repz ret 
 804850e:	66 90                	xchg   %ax,%ax

08048510 <frame_dummy>:
 8048510:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048515:	8b 10                	mov    (%eax),%edx
 8048517:	85 d2                	test   %edx,%edx
 8048519:	75 05                	jne    8048520 <frame_dummy+0x10>
 804851b:	eb 93                	jmp    80484b0 <register_tm_clones>
 804851d:	8d 76 00             	lea    0x0(%esi),%esi
 8048520:	ba 00 00 00 00       	mov    $0x0,%edx
 8048525:	85 d2                	test   %edx,%edx
 8048527:	74 f2                	je     804851b <frame_dummy+0xb>
 8048529:	55                   	push   %ebp
 804852a:	89 e5                	mov    %esp,%ebp
 804852c:	83 ec 14             	sub    $0x14,%esp
 804852f:	50                   	push   %eax
 8048530:	ff d2                	call   *%edx
 8048532:	83 c4 10             	add    $0x10,%esp
 8048535:	c9                   	leave  
 8048536:	e9 75 ff ff ff       	jmp    80484b0 <register_tm_clones>

0804853b <bof>:
 804853b:	55                   	push   %ebp
 804853c:	89 e5                	mov    %esp,%ebp
 804853e:	83 ec 38             	sub    $0x38,%esp
 8048541:	8b 45 08             	mov    0x8(%ebp),%eax
 8048544:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048547:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804854d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048550:	31 c0                	xor    %eax,%eax
 8048552:	83 ec 08             	sub    $0x8,%esp
 8048555:	ff 75 d4             	pushl  -0x2c(%ebp)
 8048558:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804855b:	50                   	push   %eax
 804855c:	e8 8f fe ff ff       	call   80483f0 <strcpy@plt>
 8048561:	83 c4 10             	add    $0x10,%esp
 8048564:	83 ec 08             	sub    $0x8,%esp
 8048567:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804856a:	50                   	push   %eax
 804856b:	68 c0 86 04 08       	push   $0x80486c0
 8048570:	e8 4b fe ff ff       	call   80483c0 <printf@plt>
 8048575:	83 c4 10             	add    $0x10,%esp
 8048578:	b8 01 00 00 00       	mov    $0x1,%eax
 804857d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048580:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048587:	74 05                	je     804858e <bof+0x53>
 8048589:	e8 42 fe ff ff       	call   80483d0 <__stack_chk_fail@plt>
 804858e:	c9                   	leave  
 804858f:	c3                   	ret    

08048590 <main>:
 8048590:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048594:	83 e4 f0             	and    $0xfffffff0,%esp
 8048597:	ff 71 fc             	pushl  -0x4(%ecx)
 804859a:	55                   	push   %ebp
 804859b:	89 e5                	mov    %esp,%ebp
 804859d:	51                   	push   %ecx
 804859e:	81 ec 24 02 00 00    	sub    $0x224,%esp
 80485a4:	89 c8                	mov    %ecx,%eax
 80485a6:	8b 40 04             	mov    0x4(%eax),%eax
 80485a9:	89 85 e4 fd ff ff    	mov    %eax,-0x21c(%ebp)
 80485af:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485b8:	31 c0                	xor    %eax,%eax
 80485ba:	83 ec 08             	sub    $0x8,%esp
 80485bd:	68 c4 86 04 08       	push   $0x80486c4
 80485c2:	68 c6 86 04 08       	push   $0x80486c6
 80485c7:	e8 54 fe ff ff       	call   8048420 <fopen@plt>
 80485cc:	83 c4 10             	add    $0x10,%esp
 80485cf:	89 85 e8 fd ff ff    	mov    %eax,-0x218(%ebp)
 80485d5:	ff b5 e8 fd ff ff    	pushl  -0x218(%ebp)
 80485db:	68 05 02 00 00       	push   $0x205
 80485e0:	6a 01                	push   $0x1
 80485e2:	8d 85 ef fd ff ff    	lea    -0x211(%ebp),%eax
 80485e8:	50                   	push   %eax
 80485e9:	e8 f2 fd ff ff       	call   80483e0 <fread@plt>
 80485ee:	83 c4 10             	add    $0x10,%esp
 80485f1:	83 ec 0c             	sub    $0xc,%esp
 80485f4:	8d 85 ef fd ff ff    	lea    -0x211(%ebp),%eax
 80485fa:	50                   	push   %eax
 80485fb:	e8 3b ff ff ff       	call   804853b <bof>
 8048600:	83 c4 10             	add    $0x10,%esp
 8048603:	83 ec 0c             	sub    $0xc,%esp
 8048606:	68 ce 86 04 08       	push   $0x80486ce
 804860b:	e8 f0 fd ff ff       	call   8048400 <puts@plt>
 8048610:	83 c4 10             	add    $0x10,%esp
 8048613:	b8 01 00 00 00       	mov    $0x1,%eax
 8048618:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804861b:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048622:	74 05                	je     8048629 <main+0x99>
 8048624:	e8 a7 fd ff ff       	call   80483d0 <__stack_chk_fail@plt>
 8048629:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 804862c:	c9                   	leave  
 804862d:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048630:	c3                   	ret    
 8048631:	66 90                	xchg   %ax,%ax
 8048633:	66 90                	xchg   %ax,%ax
 8048635:	66 90                	xchg   %ax,%ax
 8048637:	66 90                	xchg   %ax,%ax
 8048639:	66 90                	xchg   %ax,%ax
 804863b:	66 90                	xchg   %ax,%ax
 804863d:	66 90                	xchg   %ax,%ax
 804863f:	90                   	nop

08048640 <__libc_csu_init>:
 8048640:	55                   	push   %ebp
 8048641:	57                   	push   %edi
 8048642:	56                   	push   %esi
 8048643:	53                   	push   %ebx
 8048644:	e8 27 fe ff ff       	call   8048470 <__x86.get_pc_thunk.bx>
 8048649:	81 c3 b7 19 00 00    	add    $0x19b7,%ebx
 804864f:	83 ec 0c             	sub    $0xc,%esp
 8048652:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048656:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804865c:	e8 2b fd ff ff       	call   804838c <_init>
 8048661:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048667:	29 c6                	sub    %eax,%esi
 8048669:	c1 fe 02             	sar    $0x2,%esi
 804866c:	85 f6                	test   %esi,%esi
 804866e:	74 25                	je     8048695 <__libc_csu_init+0x55>
 8048670:	31 ff                	xor    %edi,%edi
 8048672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048678:	83 ec 04             	sub    $0x4,%esp
 804867b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804867f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048683:	55                   	push   %ebp
 8048684:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804868b:	83 c7 01             	add    $0x1,%edi
 804868e:	83 c4 10             	add    $0x10,%esp
 8048691:	39 f7                	cmp    %esi,%edi
 8048693:	75 e3                	jne    8048678 <__libc_csu_init+0x38>
 8048695:	83 c4 0c             	add    $0xc,%esp
 8048698:	5b                   	pop    %ebx
 8048699:	5e                   	pop    %esi
 804869a:	5f                   	pop    %edi
 804869b:	5d                   	pop    %ebp
 804869c:	c3                   	ret    
 804869d:	8d 76 00             	lea    0x0(%esi),%esi

080486a0 <__libc_csu_fini>:
 80486a0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486a4 <_fini>:
 80486a4:	53                   	push   %ebx
 80486a5:	83 ec 08             	sub    $0x8,%esp
 80486a8:	e8 c3 fd ff ff       	call   8048470 <__x86.get_pc_thunk.bx>
 80486ad:	81 c3 53 19 00 00    	add    $0x1953,%ebx
 80486b3:	83 c4 08             	add    $0x8,%esp
 80486b6:	5b                   	pop    %ebx
 80486b7:	c3                   	ret    
