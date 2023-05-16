
build/main.elf:     file format elf32-avr
build/main.elf
architecture: avr, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x000013ae memsz 0x000013ae flags r-x
    LOAD off    0x00003100 vaddr 0x00800100 paddr 0x000013ae align 2**12
         filesz 0x00000002 memsz 0x00000002 flags rw-
    LOAD off    0x00003102 vaddr 0x00800102 paddr 0x00800102 align 2**12
         filesz 0x00000000 memsz 0x000000c3 flags rw-
   STACK off    0x00000000 vaddr 0x00000000 paddr 0x00000000 align 2**0
         filesz 0x00000000 memsz 0x00000000 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         000013ae  00000000  00000000  00001000  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000002  00800100  000013ae  00003100  2**0
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
00000068 l     O .text	00000004 __c.2230
0000006c l     O .text	00000004 __c.2228
00000910 l       .text	00000000 .L25
00000958 l       .text	00000000 .L26
00000904 l       .text	00000000 .L26
00000902 l       .text	00000000 .L16
00000930 l       .text	00000000 .L29
00000922 l       .text	00000000 .L27
0000091e l       .text	00000000 .L17
0000099c l       .text	00000000 .L31
00000956 l       .text	00000000 .L24
0000094a l       .text	00000000 .L28
00000946 l       .text	00000000 .L18
0000097e l       .text	00000000 .L32
00000972 l       .text	00000000 .L29
0000096e l       .text	00000000 .L19
00000990 l       .text	00000000 .L210
0000098c l       .text	00000000 .L110
000009ae l       .text	00000000 .L211
000009aa l       .text	00000000 .L111
000009ec l       .text	00000000 .L33
00000a3e l       .text	00000000 .L38
00800100 l     O .data	00000001 timer1Repeat
00000d12 l       .text	00000000 L0
00000d36 l       .text	00000000 L0
00000ad6 l       .text	00000000 .L39
00000b2e l       .text	00000000 .L26
00000ab4 l       .text	00000000 .L24
00000b5e l       .text	00000000 .L28
00000b26 l       .text	00000000 .L29
00000bac l       .text	00000000 .L64
00000c56 l       .text	00000000 .L76
00000c34 l       .text	00000000 .L75
00000cc2 l       .text	00000000 .L116
00000da4 l       .text	00000000 .L144
00000d76 l       .text	00000000 .L147
00000dc6 l       .text	00000000 .L162
00000dcc l       .text	00000000 .L163
00000d3a l       .text	00000000 .L149
00000d6e l       .text	00000000 .L152
00000e90 l       .text	00000000 L0
00000f32 l       .text	00000000 L0
00000f60 l       .text	00000000 L0
00000f98 l       .text	00000000 L0
00000fb6 l       .text	00000000 L0
00000fc0 l       .text	00000000 L0
0000101a l       .text	00000000 L0
00001020 l       .text	00000000 L0
00000e3c l       .text	00000000 .L1
00000ec4 l       .text	00000000 .L279
00000f44 l       .text	00000000 .L280
00000e86 l       .text	00000000 .L229
00000ee6 l       .text	00000000 .L230
00000f06 l       .text	00000000 .L231
00000f26 l       .text	00000000 .L232
00000ee2 l       .text	00000000 .L233
00000fe6 l       .text	00000000 .L234
00000e92 l       .text	00000000 .L238
00000faa l       .text	00000000 .L239
00000fa4 l       .text	00000000 .L241
00000f86 l       .text	00000000 .L243
00000f68 l       .text	00000000 .L244
00000fce l       .text	00000000 .L246
00000e9c l       .text	00000000 .L228
0000100e l       .text	00000000 .L236
000013ac l       .text	00000000 __stop_program
000013aa l       .text	00000000 .hidden exit
000013aa l       .text	00000000 .hidden _exit
00000198 l       .text	00000000 .do_clear_bss_start
00000196 l       .text	00000000 .do_clear_bss_loop
0000018e l       .text	00000010 .hidden __do_clear_bss
00001044 l       .text	00000038 .hidden __prologue_saves__
0000107c l       .text	00000036 .hidden __epilogue_restores__
00000178 l       .text	00000016 .hidden __do_copy_data
0000019e l       .text	00000016 .hidden __do_global_ctors
00001038 l       .text	0000000c .hidden __tablejump2__
000001c0 g     F .text	000006c2 vfprintf
00000000 g       .text	00000000 __vectors
0000016c  w      .text	00000000 __init
000009bc g     F .text	00000052 __vector_1
000001bc g       .text	00000000 __bad_interrupt
00000a0e g     F .text	00000052 __vector_2
000001bc  w      .text	00000000 __vector_3
000001bc  w      .text	00000000 __vector_4
000001bc  w      .text	00000000 __vector_5
00000ce4 g     F .text	000000f8 __vector_6
000001bc  w      .text	00000000 __vector_7
000001bc  w      .text	00000000 __vector_8
00000a60 g     F .text	00000104 __vector_9
000001bc  w      .text	00000000 __vector_10
00000bce g     F .text	000000a4 __vector_11
000001bc  w      .text	00000000 __vector_12
00000c72 g     F .text	00000072 __vector_13
00000b7c g     F .text	00000052 __vector_14
000001bc  w      .text	00000000 __vector_15
000001bc  w      .text	00000000 __vector_16
000001bc  w      .text	00000000 __vector_17
00000ddc g     F .text	00000074 __vector_18
000001bc  w      .text	00000000 __vector_19
000001bc  w      .text	00000000 __vector_20
000001bc  w      .text	00000000 __vector_21
000001bc  w      .text	00000000 __vector_22
000001bc  w      .text	00000000 __vector_23
00000e50 g     F .text	000001e2 __vector_24
000001bc  w      .text	00000000 __vector_25
00000000  w      .text	00000000 __vector_default
00000882 g     F .text	00000070 .protected main
0000128e g     F .text	00000060 fputc
000010b2 g     F .text	000001b0 __ftoa_engine
00001262 g     F .text	00000016 strnlen_P
00001278 g     F .text	00000016 strnlen
000012ee g     F .text	000000bc __ultoa_invert
000008f2 g     F .text	000000ca _pinMode
00001032 g     F .text	00000006 main_loop_running
00000b64 g     F .text	00000018 startTimers
00800101 g     O .data	00000001 _main_loop_running
00800102 g       .data	00000000 __data_end
00800100 g       .data	00000000 __data_start
0000016a g       .text	00000000 __ctors_start
0000016c g       .text	00000000 __ctors_end
00000068 g       .text	00000000 __trampolines_start
00000068 g       .text	00000000 __trampolines_end
0000016c g       .text	00000000 __dtors_start
0000016c g       .text	00000000 __dtors_end
000013ae g       .text	00000000 _etext
00800102 g       .data	00000000 _edata



Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 de 04 	jmp	0x9bc	; 0x9bc <__vector_1>
       8:	0c 94 07 05 	jmp	0xa0e	; 0xa0e <__vector_2>
       c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      10:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      14:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      18:	0c 94 72 06 	jmp	0xce4	; 0xce4 <__vector_6>
      1c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      20:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      24:	0c 94 30 05 	jmp	0xa60	; 0xa60 <__vector_9>
      28:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      2c:	0c 94 e7 05 	jmp	0xbce	; 0xbce <__vector_11>
      30:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      34:	0c 94 39 06 	jmp	0xc72	; 0xc72 <__vector_13>
      38:	0c 94 be 05 	jmp	0xb7c	; 0xb7c <__vector_14>
      3c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      40:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 ee 06 	jmp	0xddc	; 0xddc <__vector_18>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      58:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      5c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      60:	0c 94 28 07 	jmp	0xe50	; 0xe50 <__vector_24>
      64:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>

00000068 <__trampolines_end>:
      68:	6e 61       	ori	r22, 0x1E	; 30
      6a:	6e 00       	.word	0x006e	; ????

0000006c <__c.2228>:
      6c:	69 6e 66 00 00 40 7a 10 f3 5a 00 a0 72 4e 18 09     inf..@z..Z..rN..
      7c:	00 10 a5 d4 e8 00 00 e8 76 48 17 00 00 e4 0b 54     ........vH.....T
      8c:	02 00 00 ca 9a 3b 00 00 00 e1 f5 05 00 00 80 96     .....;..........
      9c:	98 00 00 00 40 42 0f 00 00 00 a0 86 01 00 00 00     ....@B..........
      ac:	10 27 00 00 00 00 e8 03 00 00 00 00 64 00 00 00     .'..........d...
      bc:	00 00 0a 00 00 00 00 00 01 00 00 00 00 00 2c 76     ..............,v
      cc:	d8 88 dc 67 4f 08 23 df c1 df ae 59 e1 b1 b7 96     ...gO.#....Y....
      dc:	e5 e3 e4 53 c6 3a e6 51 99 76 96 e8 e6 c2 84 26     ...S.:.Q.v.....&
      ec:	eb 89 8c 9b 62 ed 40 7c 6f fc ef bc 9c 9f 40 f2     ....b.@|o.....@.
      fc:	ba a5 6f a5 f4 90 05 5a 2a f7 5c 93 6b 6c f9 67     ..o....Z*.\.kl.g
     10c:	6d c1 1b fc e0 e4 0d 47 fe f5 20 e6 b5 00 d0 ed     m......G.. .....
     11c:	90 2e 03 00 94 35 77 05 00 80 84 1e 08 00 00 20     .....5w........ 
     12c:	4e 0a 00 00 00 c8 0c 33 33 33 33 0f 98 6e 12 83     N......3333..n..
     13c:	11 41 ef 8d 21 14 89 3b e6 55 16 cf fe e6 db 18     .A..!..;.U......
     14c:	d1 84 4b 38 1b f7 7c 1d 90 1d a4 bb e4 24 20 32     ..K8..|......$ 2
     15c:	84 72 5e 22 81 00 c9 f1 24 ec a1 e5 3d 27           .r^"....$...='

0000016a <__ctors_start>:
     16a:	b2 05       	cpc	r27, r2

0000016c <__ctors_end>:
     16c:	11 24       	eor	r1, r1
     16e:	1f be       	out	0x3f, r1	; 63
     170:	cf ef       	ldi	r28, 0xFF	; 255
     172:	d8 e0       	ldi	r29, 0x08	; 8
     174:	de bf       	out	0x3e, r29	; 62
     176:	cd bf       	out	0x3d, r28	; 61

00000178 <__do_copy_data>:
     178:	11 e0       	ldi	r17, 0x01	; 1
     17a:	a0 e0       	ldi	r26, 0x00	; 0
     17c:	b1 e0       	ldi	r27, 0x01	; 1
     17e:	ee ea       	ldi	r30, 0xAE	; 174
     180:	f3 e1       	ldi	r31, 0x13	; 19
     182:	02 c0       	rjmp	.+4      	; 0x188 <__do_copy_data+0x10>
     184:	05 90       	lpm	r0, Z+
     186:	0d 92       	st	X+, r0
     188:	a2 30       	cpi	r26, 0x02	; 2
     18a:	b1 07       	cpc	r27, r17
     18c:	d9 f7       	brne	.-10     	; 0x184 <__do_copy_data+0xc>

0000018e <__do_clear_bss>:
     18e:	21 e0       	ldi	r18, 0x01	; 1
     190:	a2 e0       	ldi	r26, 0x02	; 2
     192:	b1 e0       	ldi	r27, 0x01	; 1
     194:	01 c0       	rjmp	.+2      	; 0x198 <.do_clear_bss_start>

00000196 <.do_clear_bss_loop>:
     196:	1d 92       	st	X+, r1

00000198 <.do_clear_bss_start>:
     198:	a5 3c       	cpi	r26, 0xC5	; 197
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 1c 08 	call	0x1038	; 0x1038 <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 41 04 	call	0x882	; 0x882 <main>
     1b8:	0c 94 d5 09 	jmp	0x13aa	; 0x13aa <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <vfprintf>:
     1c0:	af e0       	ldi	r26, 0x0F	; 15
     1c2:	b0 e0       	ldi	r27, 0x00	; 0
     1c4:	e6 ee       	ldi	r30, 0xE6	; 230
     1c6:	f0 e0       	ldi	r31, 0x00	; 0
     1c8:	0c 94 22 08 	jmp	0x1044	; 0x1044 <__prologue_saves__>
     1cc:	6c 01       	movw	r12, r24
     1ce:	1b 01       	movw	r2, r22
     1d0:	5a 01       	movw	r10, r20
     1d2:	fc 01       	movw	r30, r24
     1d4:	17 82       	std	Z+7, r1	; 0x07
     1d6:	16 82       	std	Z+6, r1	; 0x06
     1d8:	83 81       	ldd	r24, Z+3	; 0x03
     1da:	81 ff       	sbrs	r24, 1
     1dc:	48 c3       	rjmp	.+1680   	; 0x86e <__DATA_REGION_LENGTH__+0x6e>
     1de:	9e 01       	movw	r18, r28
     1e0:	2f 5f       	subi	r18, 0xFF	; 255
     1e2:	3f 4f       	sbci	r19, 0xFF	; 255
     1e4:	49 01       	movw	r8, r18
     1e6:	f6 01       	movw	r30, r12
     1e8:	93 81       	ldd	r25, Z+3	; 0x03
     1ea:	f1 01       	movw	r30, r2
     1ec:	93 fd       	sbrc	r25, 3
     1ee:	85 91       	lpm	r24, Z+
     1f0:	93 ff       	sbrs	r25, 3
     1f2:	81 91       	ld	r24, Z+
     1f4:	1f 01       	movw	r2, r30
     1f6:	88 23       	and	r24, r24
     1f8:	09 f4       	brne	.+2      	; 0x1fc <vfprintf+0x3c>
     1fa:	e7 c2       	rjmp	.+1486   	; 0x7ca <vfprintf+0x60a>
     1fc:	85 32       	cpi	r24, 0x25	; 37
     1fe:	39 f4       	brne	.+14     	; 0x20e <vfprintf+0x4e>
     200:	93 fd       	sbrc	r25, 3
     202:	85 91       	lpm	r24, Z+
     204:	93 ff       	sbrs	r25, 3
     206:	81 91       	ld	r24, Z+
     208:	1f 01       	movw	r2, r30
     20a:	85 32       	cpi	r24, 0x25	; 37
     20c:	39 f4       	brne	.+14     	; 0x21c <vfprintf+0x5c>
     20e:	b6 01       	movw	r22, r12
     210:	90 e0       	ldi	r25, 0x00	; 0
     212:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     216:	35 01       	movw	r6, r10
     218:	53 01       	movw	r10, r6
     21a:	e5 cf       	rjmp	.-54     	; 0x1e6 <vfprintf+0x26>
     21c:	f1 2c       	mov	r15, r1
     21e:	51 2c       	mov	r5, r1
     220:	00 e0       	ldi	r16, 0x00	; 0
     222:	00 32       	cpi	r16, 0x20	; 32
     224:	38 f4       	brcc	.+14     	; 0x234 <vfprintf+0x74>
     226:	8b 32       	cpi	r24, 0x2B	; 43
     228:	09 f1       	breq	.+66     	; 0x26c <vfprintf+0xac>
     22a:	90 f4       	brcc	.+36     	; 0x250 <vfprintf+0x90>
     22c:	80 32       	cpi	r24, 0x20	; 32
     22e:	f9 f0       	breq	.+62     	; 0x26e <vfprintf+0xae>
     230:	83 32       	cpi	r24, 0x23	; 35
     232:	09 f1       	breq	.+66     	; 0x276 <vfprintf+0xb6>
     234:	07 fd       	sbrc	r16, 7
     236:	34 c0       	rjmp	.+104    	; 0x2a0 <vfprintf+0xe0>
     238:	20 ed       	ldi	r18, 0xD0	; 208
     23a:	28 0f       	add	r18, r24
     23c:	2a 30       	cpi	r18, 0x0A	; 10
     23e:	20 f5       	brcc	.+72     	; 0x288 <vfprintf+0xc8>
     240:	06 ff       	sbrs	r16, 6
     242:	1b c0       	rjmp	.+54     	; 0x27a <vfprintf+0xba>
     244:	fa e0       	ldi	r31, 0x0A	; 10
     246:	ff 9e       	mul	r15, r31
     248:	20 0d       	add	r18, r0
     24a:	11 24       	eor	r1, r1
     24c:	f2 2e       	mov	r15, r18
     24e:	05 c0       	rjmp	.+10     	; 0x25a <vfprintf+0x9a>
     250:	8d 32       	cpi	r24, 0x2D	; 45
     252:	79 f0       	breq	.+30     	; 0x272 <vfprintf+0xb2>
     254:	80 33       	cpi	r24, 0x30	; 48
     256:	71 f7       	brne	.-36     	; 0x234 <vfprintf+0x74>
     258:	01 60       	ori	r16, 0x01	; 1
     25a:	f1 01       	movw	r30, r2
     25c:	93 fd       	sbrc	r25, 3
     25e:	85 91       	lpm	r24, Z+
     260:	93 ff       	sbrs	r25, 3
     262:	81 91       	ld	r24, Z+
     264:	1f 01       	movw	r2, r30
     266:	81 11       	cpse	r24, r1
     268:	dc cf       	rjmp	.-72     	; 0x222 <vfprintf+0x62>
     26a:	1a c0       	rjmp	.+52     	; 0x2a0 <vfprintf+0xe0>
     26c:	02 60       	ori	r16, 0x02	; 2
     26e:	04 60       	ori	r16, 0x04	; 4
     270:	f4 cf       	rjmp	.-24     	; 0x25a <vfprintf+0x9a>
     272:	08 60       	ori	r16, 0x08	; 8
     274:	f2 cf       	rjmp	.-28     	; 0x25a <vfprintf+0x9a>
     276:	00 61       	ori	r16, 0x10	; 16
     278:	f0 cf       	rjmp	.-32     	; 0x25a <vfprintf+0x9a>
     27a:	3a e0       	ldi	r19, 0x0A	; 10
     27c:	53 9e       	mul	r5, r19
     27e:	20 0d       	add	r18, r0
     280:	11 24       	eor	r1, r1
     282:	52 2e       	mov	r5, r18
     284:	00 62       	ori	r16, 0x20	; 32
     286:	e9 cf       	rjmp	.-46     	; 0x25a <vfprintf+0x9a>
     288:	8e 32       	cpi	r24, 0x2E	; 46
     28a:	21 f4       	brne	.+8      	; 0x294 <vfprintf+0xd4>
     28c:	06 fd       	sbrc	r16, 6
     28e:	9d c2       	rjmp	.+1338   	; 0x7ca <vfprintf+0x60a>
     290:	00 64       	ori	r16, 0x40	; 64
     292:	e3 cf       	rjmp	.-58     	; 0x25a <vfprintf+0x9a>
     294:	8c 36       	cpi	r24, 0x6C	; 108
     296:	11 f4       	brne	.+4      	; 0x29c <vfprintf+0xdc>
     298:	00 68       	ori	r16, 0x80	; 128
     29a:	df cf       	rjmp	.-66     	; 0x25a <vfprintf+0x9a>
     29c:	88 36       	cpi	r24, 0x68	; 104
     29e:	e9 f2       	breq	.-70     	; 0x25a <vfprintf+0x9a>
     2a0:	9b eb       	ldi	r25, 0xBB	; 187
     2a2:	98 0f       	add	r25, r24
     2a4:	93 30       	cpi	r25, 0x03	; 3
     2a6:	08 f0       	brcs	.+2      	; 0x2aa <vfprintf+0xea>
     2a8:	5f c0       	rjmp	.+190    	; 0x368 <vfprintf+0x1a8>
     2aa:	00 61       	ori	r16, 0x10	; 16
     2ac:	80 5e       	subi	r24, 0xE0	; 224
     2ae:	06 fd       	sbrc	r16, 6
     2b0:	02 c0       	rjmp	.+4      	; 0x2b6 <vfprintf+0xf6>
     2b2:	46 e0       	ldi	r20, 0x06	; 6
     2b4:	f4 2e       	mov	r15, r20
     2b6:	10 2f       	mov	r17, r16
     2b8:	1f 73       	andi	r17, 0x3F	; 63
     2ba:	85 36       	cpi	r24, 0x65	; 101
     2bc:	09 f0       	breq	.+2      	; 0x2c0 <vfprintf+0x100>
     2be:	5b c0       	rjmp	.+182    	; 0x376 <vfprintf+0x1b6>
     2c0:	10 64       	ori	r17, 0x40	; 64
     2c2:	17 ff       	sbrs	r17, 7
     2c4:	61 c0       	rjmp	.+194    	; 0x388 <vfprintf+0x1c8>
     2c6:	8f 2d       	mov	r24, r15
     2c8:	9b e3       	ldi	r25, 0x3B	; 59
     2ca:	9f 15       	cp	r25, r15
     2cc:	08 f4       	brcc	.+2      	; 0x2d0 <vfprintf+0x110>
     2ce:	8b e3       	ldi	r24, 0x3B	; 59
     2d0:	44 24       	eor	r4, r4
     2d2:	43 94       	inc	r4
     2d4:	48 0e       	add	r4, r24
     2d6:	27 e0       	ldi	r18, 0x07	; 7
     2d8:	35 01       	movw	r6, r10
     2da:	f4 e0       	ldi	r31, 0x04	; 4
     2dc:	6f 0e       	add	r6, r31
     2de:	71 1c       	adc	r7, r1
     2e0:	f5 01       	movw	r30, r10
     2e2:	60 81       	ld	r22, Z
     2e4:	71 81       	ldd	r23, Z+1	; 0x01
     2e6:	82 81       	ldd	r24, Z+2	; 0x02
     2e8:	93 81       	ldd	r25, Z+3	; 0x03
     2ea:	04 2d       	mov	r16, r4
     2ec:	a4 01       	movw	r20, r8
     2ee:	0e 94 59 08 	call	0x10b2	; 0x10b2 <__ftoa_engine>
     2f2:	5c 01       	movw	r10, r24
     2f4:	f9 81       	ldd	r31, Y+1	; 0x01
     2f6:	fc 87       	std	Y+12, r31	; 0x0c
     2f8:	f0 ff       	sbrs	r31, 0
     2fa:	03 c0       	rjmp	.+6      	; 0x302 <vfprintf+0x142>
     2fc:	0d e2       	ldi	r16, 0x2D	; 45
     2fe:	f3 ff       	sbrs	r31, 3
     300:	07 c0       	rjmp	.+14     	; 0x310 <vfprintf+0x150>
     302:	0b e2       	ldi	r16, 0x2B	; 43
     304:	11 fd       	sbrc	r17, 1
     306:	04 c0       	rjmp	.+8      	; 0x310 <vfprintf+0x150>
     308:	01 2f       	mov	r16, r17
     30a:	04 70       	andi	r16, 0x04	; 4
     30c:	12 fd       	sbrc	r17, 2
     30e:	00 e2       	ldi	r16, 0x20	; 32
     310:	2c 85       	ldd	r18, Y+12	; 0x0c
     312:	2c 70       	andi	r18, 0x0C	; 12
     314:	e2 2e       	mov	r14, r18
     316:	09 f4       	brne	.+2      	; 0x31a <vfprintf+0x15a>
     318:	57 c0       	rjmp	.+174    	; 0x3c8 <vfprintf+0x208>
     31a:	01 11       	cpse	r16, r1
     31c:	ab c2       	rjmp	.+1366   	; 0x874 <__DATA_REGION_LENGTH__+0x74>
     31e:	f3 e0       	ldi	r31, 0x03	; 3
     320:	e1 2c       	mov	r14, r1
     322:	f5 15       	cp	r31, r5
     324:	a0 f4       	brcc	.+40     	; 0x34e <vfprintf+0x18e>
     326:	83 e0       	ldi	r24, 0x03	; 3
     328:	e5 2c       	mov	r14, r5
     32a:	e8 1a       	sub	r14, r24
     32c:	13 fd       	sbrc	r17, 3
     32e:	08 c0       	rjmp	.+16     	; 0x340 <vfprintf+0x180>
     330:	b6 01       	movw	r22, r12
     332:	80 e2       	ldi	r24, 0x20	; 32
     334:	90 e0       	ldi	r25, 0x00	; 0
     336:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     33a:	ea 94       	dec	r14
     33c:	e1 10       	cpse	r14, r1
     33e:	f8 cf       	rjmp	.-16     	; 0x330 <vfprintf+0x170>
     340:	00 23       	and	r16, r16
     342:	29 f0       	breq	.+10     	; 0x34e <vfprintf+0x18e>
     344:	b6 01       	movw	r22, r12
     346:	80 2f       	mov	r24, r16
     348:	90 e0       	ldi	r25, 0x00	; 0
     34a:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     34e:	3c 85       	ldd	r19, Y+12	; 0x0c
     350:	28 e6       	ldi	r18, 0x68	; 104
     352:	a2 2e       	mov	r10, r18
     354:	20 e0       	ldi	r18, 0x00	; 0
     356:	b2 2e       	mov	r11, r18
     358:	33 fd       	sbrc	r19, 3
     35a:	04 c0       	rjmp	.+8      	; 0x364 <vfprintf+0x1a4>
     35c:	9c e6       	ldi	r25, 0x6C	; 108
     35e:	a9 2e       	mov	r10, r25
     360:	90 e0       	ldi	r25, 0x00	; 0
     362:	b9 2e       	mov	r11, r25
     364:	10 71       	andi	r17, 0x10	; 16
     366:	22 c0       	rjmp	.+68     	; 0x3ac <vfprintf+0x1ec>
     368:	9b e9       	ldi	r25, 0x9B	; 155
     36a:	98 0f       	add	r25, r24
     36c:	93 30       	cpi	r25, 0x03	; 3
     36e:	08 f0       	brcs	.+2      	; 0x372 <vfprintf+0x1b2>
     370:	33 c1       	rjmp	.+614    	; 0x5d8 <vfprintf+0x418>
     372:	0f 7e       	andi	r16, 0xEF	; 239
     374:	9c cf       	rjmp	.-200    	; 0x2ae <vfprintf+0xee>
     376:	86 36       	cpi	r24, 0x66	; 102
     378:	11 f4       	brne	.+4      	; 0x37e <vfprintf+0x1be>
     37a:	10 68       	ori	r17, 0x80	; 128
     37c:	a2 cf       	rjmp	.-188    	; 0x2c2 <vfprintf+0x102>
     37e:	ff 20       	and	r15, r15
     380:	09 f4       	brne	.+2      	; 0x384 <vfprintf+0x1c4>
     382:	9f cf       	rjmp	.-194    	; 0x2c2 <vfprintf+0x102>
     384:	fa 94       	dec	r15
     386:	9d cf       	rjmp	.-198    	; 0x2c2 <vfprintf+0x102>
     388:	e7 e0       	ldi	r30, 0x07	; 7
     38a:	2f 2d       	mov	r18, r15
     38c:	ef 15       	cp	r30, r15
     38e:	18 f4       	brcc	.+6      	; 0x396 <vfprintf+0x1d6>
     390:	27 e0       	ldi	r18, 0x07	; 7
     392:	37 e0       	ldi	r19, 0x07	; 7
     394:	f3 2e       	mov	r15, r19
     396:	41 2c       	mov	r4, r1
     398:	9f cf       	rjmp	.-194    	; 0x2d8 <vfprintf+0x118>
     39a:	11 11       	cpse	r17, r1
     39c:	80 52       	subi	r24, 0x20	; 32
     39e:	b6 01       	movw	r22, r12
     3a0:	90 e0       	ldi	r25, 0x00	; 0
     3a2:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     3a6:	8f ef       	ldi	r24, 0xFF	; 255
     3a8:	a8 1a       	sub	r10, r24
     3aa:	b8 0a       	sbc	r11, r24
     3ac:	f5 01       	movw	r30, r10
     3ae:	84 91       	lpm	r24, Z
     3b0:	81 11       	cpse	r24, r1
     3b2:	f3 cf       	rjmp	.-26     	; 0x39a <vfprintf+0x1da>
     3b4:	ee 20       	and	r14, r14
     3b6:	09 f4       	brne	.+2      	; 0x3ba <vfprintf+0x1fa>
     3b8:	2f cf       	rjmp	.-418    	; 0x218 <vfprintf+0x58>
     3ba:	b6 01       	movw	r22, r12
     3bc:	80 e2       	ldi	r24, 0x20	; 32
     3be:	90 e0       	ldi	r25, 0x00	; 0
     3c0:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     3c4:	ea 94       	dec	r14
     3c6:	f6 cf       	rjmp	.-20     	; 0x3b4 <vfprintf+0x1f4>
     3c8:	17 ff       	sbrs	r17, 7
     3ca:	6f c0       	rjmp	.+222    	; 0x4aa <vfprintf+0x2ea>
     3cc:	4a 0c       	add	r4, r10
     3ce:	fc 85       	ldd	r31, Y+12	; 0x0c
     3d0:	f4 ff       	sbrs	r31, 4
     3d2:	04 c0       	rjmp	.+8      	; 0x3dc <vfprintf+0x21c>
     3d4:	8a 81       	ldd	r24, Y+2	; 0x02
     3d6:	81 33       	cpi	r24, 0x31	; 49
     3d8:	09 f4       	brne	.+2      	; 0x3dc <vfprintf+0x21c>
     3da:	4a 94       	dec	r4
     3dc:	14 14       	cp	r1, r4
     3de:	0c f0       	brlt	.+2      	; 0x3e2 <vfprintf+0x222>
     3e0:	86 c0       	rjmp	.+268    	; 0x4ee <vfprintf+0x32e>
     3e2:	28 e0       	ldi	r18, 0x08	; 8
     3e4:	24 15       	cp	r18, r4
     3e6:	10 f4       	brcc	.+4      	; 0x3ec <vfprintf+0x22c>
     3e8:	88 e0       	ldi	r24, 0x08	; 8
     3ea:	48 2e       	mov	r4, r24
     3ec:	85 e0       	ldi	r24, 0x05	; 5
     3ee:	90 e0       	ldi	r25, 0x00	; 0
     3f0:	17 ff       	sbrs	r17, 7
     3f2:	06 c0       	rjmp	.+12     	; 0x400 <vfprintf+0x240>
     3f4:	c5 01       	movw	r24, r10
     3f6:	b7 fe       	sbrs	r11, 7
     3f8:	02 c0       	rjmp	.+4      	; 0x3fe <vfprintf+0x23e>
     3fa:	90 e0       	ldi	r25, 0x00	; 0
     3fc:	80 e0       	ldi	r24, 0x00	; 0
     3fe:	01 96       	adiw	r24, 0x01	; 1
     400:	01 11       	cpse	r16, r1
     402:	01 96       	adiw	r24, 0x01	; 1
     404:	ff 20       	and	r15, r15
     406:	31 f0       	breq	.+12     	; 0x414 <vfprintf+0x254>
     408:	2f 2d       	mov	r18, r15
     40a:	30 e0       	ldi	r19, 0x00	; 0
     40c:	2f 5f       	subi	r18, 0xFF	; 255
     40e:	3f 4f       	sbci	r19, 0xFF	; 255
     410:	82 0f       	add	r24, r18
     412:	93 1f       	adc	r25, r19
     414:	58 16       	cp	r5, r24
     416:	19 06       	cpc	r1, r25
     418:	19 f0       	breq	.+6      	; 0x420 <vfprintf+0x260>
     41a:	14 f0       	brlt	.+4      	; 0x420 <vfprintf+0x260>
     41c:	e5 2c       	mov	r14, r5
     41e:	e8 1a       	sub	r14, r24
     420:	81 2f       	mov	r24, r17
     422:	89 70       	andi	r24, 0x09	; 9
     424:	11 f4       	brne	.+4      	; 0x42a <vfprintf+0x26a>
     426:	e1 10       	cpse	r14, r1
     428:	67 c0       	rjmp	.+206    	; 0x4f8 <vfprintf+0x338>
     42a:	00 23       	and	r16, r16
     42c:	29 f0       	breq	.+10     	; 0x438 <vfprintf+0x278>
     42e:	b6 01       	movw	r22, r12
     430:	80 2f       	mov	r24, r16
     432:	90 e0       	ldi	r25, 0x00	; 0
     434:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     438:	13 fd       	sbrc	r17, 3
     43a:	02 c0       	rjmp	.+4      	; 0x440 <vfprintf+0x280>
     43c:	e1 10       	cpse	r14, r1
     43e:	63 c0       	rjmp	.+198    	; 0x506 <vfprintf+0x346>
     440:	17 ff       	sbrs	r17, 7
     442:	7c c0       	rjmp	.+248    	; 0x53c <vfprintf+0x37c>
     444:	85 01       	movw	r16, r10
     446:	b7 fe       	sbrs	r11, 7
     448:	02 c0       	rjmp	.+4      	; 0x44e <vfprintf+0x28e>
     44a:	10 e0       	ldi	r17, 0x00	; 0
     44c:	00 e0       	ldi	r16, 0x00	; 0
     44e:	c5 01       	movw	r24, r10
     450:	84 19       	sub	r24, r4
     452:	91 09       	sbc	r25, r1
     454:	2c 01       	movw	r4, r24
     456:	6f 2d       	mov	r22, r15
     458:	70 e0       	ldi	r23, 0x00	; 0
     45a:	ee 27       	eor	r30, r30
     45c:	ff 27       	eor	r31, r31
     45e:	e6 1b       	sub	r30, r22
     460:	f7 0b       	sbc	r31, r23
     462:	ff 87       	std	Y+15, r31	; 0x0f
     464:	ee 87       	std	Y+14, r30	; 0x0e
     466:	0f 3f       	cpi	r16, 0xFF	; 255
     468:	10 07       	cpc	r17, r16
     46a:	29 f4       	brne	.+10     	; 0x476 <vfprintf+0x2b6>
     46c:	b6 01       	movw	r22, r12
     46e:	8e e2       	ldi	r24, 0x2E	; 46
     470:	90 e0       	ldi	r25, 0x00	; 0
     472:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     476:	a0 16       	cp	r10, r16
     478:	b1 06       	cpc	r11, r17
     47a:	0c f4       	brge	.+2      	; 0x47e <vfprintf+0x2be>
     47c:	4b c0       	rjmp	.+150    	; 0x514 <vfprintf+0x354>
     47e:	40 16       	cp	r4, r16
     480:	51 06       	cpc	r5, r17
     482:	0c f0       	brlt	.+2      	; 0x486 <vfprintf+0x2c6>
     484:	47 c0       	rjmp	.+142    	; 0x514 <vfprintf+0x354>
     486:	f5 01       	movw	r30, r10
     488:	e0 1b       	sub	r30, r16
     48a:	f1 0b       	sbc	r31, r17
     48c:	e8 0d       	add	r30, r8
     48e:	f9 1d       	adc	r31, r9
     490:	81 81       	ldd	r24, Z+1	; 0x01
     492:	01 50       	subi	r16, 0x01	; 1
     494:	11 09       	sbc	r17, r1
     496:	2e 85       	ldd	r18, Y+14	; 0x0e
     498:	3f 85       	ldd	r19, Y+15	; 0x0f
     49a:	02 17       	cp	r16, r18
     49c:	13 07       	cpc	r17, r19
     49e:	e4 f1       	brlt	.+120    	; 0x518 <vfprintf+0x358>
     4a0:	b6 01       	movw	r22, r12
     4a2:	90 e0       	ldi	r25, 0x00	; 0
     4a4:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     4a8:	de cf       	rjmp	.-68     	; 0x466 <vfprintf+0x2a6>
     4aa:	16 fd       	sbrc	r17, 6
     4ac:	9f cf       	rjmp	.-194    	; 0x3ec <vfprintf+0x22c>
     4ae:	ef 2d       	mov	r30, r15
     4b0:	f0 e0       	ldi	r31, 0x00	; 0
     4b2:	ea 15       	cp	r30, r10
     4b4:	fb 05       	cpc	r31, r11
     4b6:	34 f0       	brlt	.+12     	; 0x4c4 <vfprintf+0x304>
     4b8:	3c ef       	ldi	r19, 0xFC	; 252
     4ba:	a3 16       	cp	r10, r19
     4bc:	3f ef       	ldi	r19, 0xFF	; 255
     4be:	b3 06       	cpc	r11, r19
     4c0:	0c f0       	brlt	.+2      	; 0x4c4 <vfprintf+0x304>
     4c2:	10 68       	ori	r17, 0x80	; 128
     4c4:	32 96       	adiw	r30, 0x02	; 2
     4c6:	e8 0d       	add	r30, r8
     4c8:	f9 1d       	adc	r31, r9
     4ca:	01 c0       	rjmp	.+2      	; 0x4ce <vfprintf+0x30e>
     4cc:	fa 94       	dec	r15
     4ce:	ff 20       	and	r15, r15
     4d0:	19 f0       	breq	.+6      	; 0x4d8 <vfprintf+0x318>
     4d2:	82 91       	ld	r24, -Z
     4d4:	80 33       	cpi	r24, 0x30	; 48
     4d6:	d1 f3       	breq	.-12     	; 0x4cc <vfprintf+0x30c>
     4d8:	17 ff       	sbrs	r17, 7
     4da:	88 cf       	rjmp	.-240    	; 0x3ec <vfprintf+0x22c>
     4dc:	44 24       	eor	r4, r4
     4de:	43 94       	inc	r4
     4e0:	4f 0c       	add	r4, r15
     4e2:	fa 14       	cp	r15, r10
     4e4:	1b 04       	cpc	r1, r11
     4e6:	31 f0       	breq	.+12     	; 0x4f4 <vfprintf+0x334>
     4e8:	2c f0       	brlt	.+10     	; 0x4f4 <vfprintf+0x334>
     4ea:	fa 18       	sub	r15, r10
     4ec:	7f cf       	rjmp	.-258    	; 0x3ec <vfprintf+0x22c>
     4ee:	44 24       	eor	r4, r4
     4f0:	43 94       	inc	r4
     4f2:	7c cf       	rjmp	.-264    	; 0x3ec <vfprintf+0x22c>
     4f4:	f1 2c       	mov	r15, r1
     4f6:	7a cf       	rjmp	.-268    	; 0x3ec <vfprintf+0x22c>
     4f8:	b6 01       	movw	r22, r12
     4fa:	80 e2       	ldi	r24, 0x20	; 32
     4fc:	90 e0       	ldi	r25, 0x00	; 0
     4fe:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     502:	ea 94       	dec	r14
     504:	90 cf       	rjmp	.-224    	; 0x426 <vfprintf+0x266>
     506:	b6 01       	movw	r22, r12
     508:	80 e3       	ldi	r24, 0x30	; 48
     50a:	90 e0       	ldi	r25, 0x00	; 0
     50c:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     510:	ea 94       	dec	r14
     512:	94 cf       	rjmp	.-216    	; 0x43c <vfprintf+0x27c>
     514:	80 e3       	ldi	r24, 0x30	; 48
     516:	bd cf       	rjmp	.-134    	; 0x492 <vfprintf+0x2d2>
     518:	a0 16       	cp	r10, r16
     51a:	b1 06       	cpc	r11, r17
     51c:	41 f4       	brne	.+16     	; 0x52e <vfprintf+0x36e>
     51e:	9a 81       	ldd	r25, Y+2	; 0x02
     520:	96 33       	cpi	r25, 0x36	; 54
     522:	50 f4       	brcc	.+20     	; 0x538 <vfprintf+0x378>
     524:	95 33       	cpi	r25, 0x35	; 53
     526:	19 f4       	brne	.+6      	; 0x52e <vfprintf+0x36e>
     528:	3c 85       	ldd	r19, Y+12	; 0x0c
     52a:	34 ff       	sbrs	r19, 4
     52c:	05 c0       	rjmp	.+10     	; 0x538 <vfprintf+0x378>
     52e:	b6 01       	movw	r22, r12
     530:	90 e0       	ldi	r25, 0x00	; 0
     532:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     536:	3e cf       	rjmp	.-388    	; 0x3b4 <vfprintf+0x1f4>
     538:	81 e3       	ldi	r24, 0x31	; 49
     53a:	f9 cf       	rjmp	.-14     	; 0x52e <vfprintf+0x36e>
     53c:	8a 81       	ldd	r24, Y+2	; 0x02
     53e:	81 33       	cpi	r24, 0x31	; 49
     540:	19 f0       	breq	.+6      	; 0x548 <vfprintf+0x388>
     542:	9c 85       	ldd	r25, Y+12	; 0x0c
     544:	9f 7e       	andi	r25, 0xEF	; 239
     546:	9c 87       	std	Y+12, r25	; 0x0c
     548:	b6 01       	movw	r22, r12
     54a:	90 e0       	ldi	r25, 0x00	; 0
     54c:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     550:	ff 20       	and	r15, r15
     552:	a9 f0       	breq	.+42     	; 0x57e <vfprintf+0x3be>
     554:	b6 01       	movw	r22, r12
     556:	8e e2       	ldi	r24, 0x2E	; 46
     558:	90 e0       	ldi	r25, 0x00	; 0
     55a:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     55e:	f3 94       	inc	r15
     560:	f3 94       	inc	r15
     562:	e2 e0       	ldi	r30, 0x02	; 2
     564:	01 e0       	ldi	r16, 0x01	; 1
     566:	0e 0f       	add	r16, r30
     568:	e8 0d       	add	r30, r8
     56a:	f9 2d       	mov	r31, r9
     56c:	f1 1d       	adc	r31, r1
     56e:	80 81       	ld	r24, Z
     570:	b6 01       	movw	r22, r12
     572:	90 e0       	ldi	r25, 0x00	; 0
     574:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     578:	e0 2f       	mov	r30, r16
     57a:	0f 11       	cpse	r16, r15
     57c:	f3 cf       	rjmp	.-26     	; 0x564 <vfprintf+0x3a4>
     57e:	85 e6       	ldi	r24, 0x65	; 101
     580:	90 e0       	ldi	r25, 0x00	; 0
     582:	14 ff       	sbrs	r17, 4
     584:	02 c0       	rjmp	.+4      	; 0x58a <vfprintf+0x3ca>
     586:	85 e4       	ldi	r24, 0x45	; 69
     588:	90 e0       	ldi	r25, 0x00	; 0
     58a:	b6 01       	movw	r22, r12
     58c:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     590:	b7 fc       	sbrc	r11, 7
     592:	06 c0       	rjmp	.+12     	; 0x5a0 <vfprintf+0x3e0>
     594:	a1 14       	cp	r10, r1
     596:	b1 04       	cpc	r11, r1
     598:	c1 f4       	brne	.+48     	; 0x5ca <vfprintf+0x40a>
     59a:	ec 85       	ldd	r30, Y+12	; 0x0c
     59c:	e4 ff       	sbrs	r30, 4
     59e:	15 c0       	rjmp	.+42     	; 0x5ca <vfprintf+0x40a>
     5a0:	b1 94       	neg	r11
     5a2:	a1 94       	neg	r10
     5a4:	b1 08       	sbc	r11, r1
     5a6:	8d e2       	ldi	r24, 0x2D	; 45
     5a8:	b6 01       	movw	r22, r12
     5aa:	90 e0       	ldi	r25, 0x00	; 0
     5ac:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     5b0:	80 e3       	ldi	r24, 0x30	; 48
     5b2:	2a e0       	ldi	r18, 0x0A	; 10
     5b4:	a2 16       	cp	r10, r18
     5b6:	b1 04       	cpc	r11, r1
     5b8:	54 f4       	brge	.+20     	; 0x5ce <vfprintf+0x40e>
     5ba:	b6 01       	movw	r22, r12
     5bc:	90 e0       	ldi	r25, 0x00	; 0
     5be:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     5c2:	b6 01       	movw	r22, r12
     5c4:	c5 01       	movw	r24, r10
     5c6:	c0 96       	adiw	r24, 0x30	; 48
     5c8:	b4 cf       	rjmp	.-152    	; 0x532 <vfprintf+0x372>
     5ca:	8b e2       	ldi	r24, 0x2B	; 43
     5cc:	ed cf       	rjmp	.-38     	; 0x5a8 <vfprintf+0x3e8>
     5ce:	8f 5f       	subi	r24, 0xFF	; 255
     5d0:	fa e0       	ldi	r31, 0x0A	; 10
     5d2:	af 1a       	sub	r10, r31
     5d4:	b1 08       	sbc	r11, r1
     5d6:	ed cf       	rjmp	.-38     	; 0x5b2 <vfprintf+0x3f2>
     5d8:	83 36       	cpi	r24, 0x63	; 99
     5da:	c9 f0       	breq	.+50     	; 0x60e <vfprintf+0x44e>
     5dc:	83 37       	cpi	r24, 0x73	; 115
     5de:	71 f1       	breq	.+92     	; 0x63c <vfprintf+0x47c>
     5e0:	83 35       	cpi	r24, 0x53	; 83
     5e2:	09 f0       	breq	.+2      	; 0x5e6 <vfprintf+0x426>
     5e4:	5b c0       	rjmp	.+182    	; 0x69c <vfprintf+0x4dc>
     5e6:	35 01       	movw	r6, r10
     5e8:	f2 e0       	ldi	r31, 0x02	; 2
     5ea:	6f 0e       	add	r6, r31
     5ec:	71 1c       	adc	r7, r1
     5ee:	f5 01       	movw	r30, r10
     5f0:	a0 80       	ld	r10, Z
     5f2:	b1 80       	ldd	r11, Z+1	; 0x01
     5f4:	6f 2d       	mov	r22, r15
     5f6:	70 e0       	ldi	r23, 0x00	; 0
     5f8:	06 fd       	sbrc	r16, 6
     5fa:	02 c0       	rjmp	.+4      	; 0x600 <vfprintf+0x440>
     5fc:	6f ef       	ldi	r22, 0xFF	; 255
     5fe:	7f ef       	ldi	r23, 0xFF	; 255
     600:	c5 01       	movw	r24, r10
     602:	0e 94 31 09 	call	0x1262	; 0x1262 <strnlen_P>
     606:	9d 87       	std	Y+13, r25	; 0x0d
     608:	8c 87       	std	Y+12, r24	; 0x0c
     60a:	00 68       	ori	r16, 0x80	; 128
     60c:	0d c0       	rjmp	.+26     	; 0x628 <vfprintf+0x468>
     60e:	35 01       	movw	r6, r10
     610:	32 e0       	ldi	r19, 0x02	; 2
     612:	63 0e       	add	r6, r19
     614:	71 1c       	adc	r7, r1
     616:	f5 01       	movw	r30, r10
     618:	80 81       	ld	r24, Z
     61a:	89 83       	std	Y+1, r24	; 0x01
     61c:	21 e0       	ldi	r18, 0x01	; 1
     61e:	30 e0       	ldi	r19, 0x00	; 0
     620:	3d 87       	std	Y+13, r19	; 0x0d
     622:	2c 87       	std	Y+12, r18	; 0x0c
     624:	54 01       	movw	r10, r8
     626:	0f 77       	andi	r16, 0x7F	; 127
     628:	03 fd       	sbrc	r16, 3
     62a:	06 c0       	rjmp	.+12     	; 0x638 <vfprintf+0x478>
     62c:	2c 85       	ldd	r18, Y+12	; 0x0c
     62e:	3d 85       	ldd	r19, Y+13	; 0x0d
     630:	52 16       	cp	r5, r18
     632:	13 06       	cpc	r1, r19
     634:	09 f0       	breq	.+2      	; 0x638 <vfprintf+0x478>
     636:	a8 f4       	brcc	.+42     	; 0x662 <vfprintf+0x4a2>
     638:	e5 2c       	mov	r14, r5
     63a:	2b c0       	rjmp	.+86     	; 0x692 <vfprintf+0x4d2>
     63c:	35 01       	movw	r6, r10
     63e:	32 e0       	ldi	r19, 0x02	; 2
     640:	63 0e       	add	r6, r19
     642:	71 1c       	adc	r7, r1
     644:	f5 01       	movw	r30, r10
     646:	a0 80       	ld	r10, Z
     648:	b1 80       	ldd	r11, Z+1	; 0x01
     64a:	6f 2d       	mov	r22, r15
     64c:	70 e0       	ldi	r23, 0x00	; 0
     64e:	06 fd       	sbrc	r16, 6
     650:	02 c0       	rjmp	.+4      	; 0x656 <vfprintf+0x496>
     652:	6f ef       	ldi	r22, 0xFF	; 255
     654:	7f ef       	ldi	r23, 0xFF	; 255
     656:	c5 01       	movw	r24, r10
     658:	0e 94 3c 09 	call	0x1278	; 0x1278 <strnlen>
     65c:	9d 87       	std	Y+13, r25	; 0x0d
     65e:	8c 87       	std	Y+12, r24	; 0x0c
     660:	e2 cf       	rjmp	.-60     	; 0x626 <vfprintf+0x466>
     662:	b6 01       	movw	r22, r12
     664:	80 e2       	ldi	r24, 0x20	; 32
     666:	90 e0       	ldi	r25, 0x00	; 0
     668:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     66c:	5a 94       	dec	r5
     66e:	de cf       	rjmp	.-68     	; 0x62c <vfprintf+0x46c>
     670:	f5 01       	movw	r30, r10
     672:	07 fd       	sbrc	r16, 7
     674:	85 91       	lpm	r24, Z+
     676:	07 ff       	sbrs	r16, 7
     678:	81 91       	ld	r24, Z+
     67a:	5f 01       	movw	r10, r30
     67c:	b6 01       	movw	r22, r12
     67e:	90 e0       	ldi	r25, 0x00	; 0
     680:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     684:	e1 10       	cpse	r14, r1
     686:	ea 94       	dec	r14
     688:	8c 85       	ldd	r24, Y+12	; 0x0c
     68a:	9d 85       	ldd	r25, Y+13	; 0x0d
     68c:	01 97       	sbiw	r24, 0x01	; 1
     68e:	9d 87       	std	Y+13, r25	; 0x0d
     690:	8c 87       	std	Y+12, r24	; 0x0c
     692:	ec 85       	ldd	r30, Y+12	; 0x0c
     694:	fd 85       	ldd	r31, Y+13	; 0x0d
     696:	ef 2b       	or	r30, r31
     698:	59 f7       	brne	.-42     	; 0x670 <vfprintf+0x4b0>
     69a:	8c ce       	rjmp	.-744    	; 0x3b4 <vfprintf+0x1f4>
     69c:	84 36       	cpi	r24, 0x64	; 100
     69e:	19 f0       	breq	.+6      	; 0x6a6 <vfprintf+0x4e6>
     6a0:	89 36       	cpi	r24, 0x69	; 105
     6a2:	09 f0       	breq	.+2      	; 0x6a6 <vfprintf+0x4e6>
     6a4:	74 c0       	rjmp	.+232    	; 0x78e <vfprintf+0x5ce>
     6a6:	35 01       	movw	r6, r10
     6a8:	07 ff       	sbrs	r16, 7
     6aa:	66 c0       	rjmp	.+204    	; 0x778 <vfprintf+0x5b8>
     6ac:	f4 e0       	ldi	r31, 0x04	; 4
     6ae:	6f 0e       	add	r6, r31
     6b0:	71 1c       	adc	r7, r1
     6b2:	f5 01       	movw	r30, r10
     6b4:	60 81       	ld	r22, Z
     6b6:	71 81       	ldd	r23, Z+1	; 0x01
     6b8:	82 81       	ldd	r24, Z+2	; 0x02
     6ba:	93 81       	ldd	r25, Z+3	; 0x03
     6bc:	10 2f       	mov	r17, r16
     6be:	1f 76       	andi	r17, 0x6F	; 111
     6c0:	97 ff       	sbrs	r25, 7
     6c2:	08 c0       	rjmp	.+16     	; 0x6d4 <vfprintf+0x514>
     6c4:	90 95       	com	r25
     6c6:	80 95       	com	r24
     6c8:	70 95       	com	r23
     6ca:	61 95       	neg	r22
     6cc:	7f 4f       	sbci	r23, 0xFF	; 255
     6ce:	8f 4f       	sbci	r24, 0xFF	; 255
     6d0:	9f 4f       	sbci	r25, 0xFF	; 255
     6d2:	10 68       	ori	r17, 0x80	; 128
     6d4:	2a e0       	ldi	r18, 0x0A	; 10
     6d6:	30 e0       	ldi	r19, 0x00	; 0
     6d8:	a4 01       	movw	r20, r8
     6da:	0e 94 77 09 	call	0x12ee	; 0x12ee <__ultoa_invert>
     6de:	a8 2e       	mov	r10, r24
     6e0:	a8 18       	sub	r10, r8
     6e2:	ba 2c       	mov	r11, r10
     6e4:	01 2f       	mov	r16, r17
     6e6:	16 ff       	sbrs	r17, 6
     6e8:	0a c0       	rjmp	.+20     	; 0x6fe <vfprintf+0x53e>
     6ea:	0e 7f       	andi	r16, 0xFE	; 254
     6ec:	af 14       	cp	r10, r15
     6ee:	38 f4       	brcc	.+14     	; 0x6fe <vfprintf+0x53e>
     6f0:	14 ff       	sbrs	r17, 4
     6f2:	04 c0       	rjmp	.+8      	; 0x6fc <vfprintf+0x53c>
     6f4:	12 fd       	sbrc	r17, 2
     6f6:	02 c0       	rjmp	.+4      	; 0x6fc <vfprintf+0x53c>
     6f8:	01 2f       	mov	r16, r17
     6fa:	0e 7e       	andi	r16, 0xEE	; 238
     6fc:	bf 2c       	mov	r11, r15
     6fe:	04 ff       	sbrs	r16, 4
     700:	8e c0       	rjmp	.+284    	; 0x81e <__DATA_REGION_LENGTH__+0x1e>
     702:	fe 01       	movw	r30, r28
     704:	ea 0d       	add	r30, r10
     706:	f1 1d       	adc	r31, r1
     708:	80 81       	ld	r24, Z
     70a:	80 33       	cpi	r24, 0x30	; 48
     70c:	09 f0       	breq	.+2      	; 0x710 <vfprintf+0x550>
     70e:	80 c0       	rjmp	.+256    	; 0x810 <__DATA_REGION_LENGTH__+0x10>
     710:	09 7e       	andi	r16, 0xE9	; 233
     712:	f0 2f       	mov	r31, r16
     714:	f8 70       	andi	r31, 0x08	; 8
     716:	ef 2e       	mov	r14, r31
     718:	03 fd       	sbrc	r16, 3
     71a:	90 c0       	rjmp	.+288    	; 0x83c <__DATA_REGION_LENGTH__+0x3c>
     71c:	00 ff       	sbrs	r16, 0
     71e:	8a c0       	rjmp	.+276    	; 0x834 <__DATA_REGION_LENGTH__+0x34>
     720:	fa 2c       	mov	r15, r10
     722:	b5 14       	cp	r11, r5
     724:	10 f4       	brcc	.+4      	; 0x72a <vfprintf+0x56a>
     726:	f5 0c       	add	r15, r5
     728:	fb 18       	sub	r15, r11
     72a:	04 ff       	sbrs	r16, 4
     72c:	8d c0       	rjmp	.+282    	; 0x848 <__DATA_REGION_LENGTH__+0x48>
     72e:	b6 01       	movw	r22, r12
     730:	80 e3       	ldi	r24, 0x30	; 48
     732:	90 e0       	ldi	r25, 0x00	; 0
     734:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     738:	02 ff       	sbrs	r16, 2
     73a:	09 c0       	rjmp	.+18     	; 0x74e <vfprintf+0x58e>
     73c:	88 e7       	ldi	r24, 0x78	; 120
     73e:	90 e0       	ldi	r25, 0x00	; 0
     740:	01 ff       	sbrs	r16, 1
     742:	02 c0       	rjmp	.+4      	; 0x748 <vfprintf+0x588>
     744:	88 e5       	ldi	r24, 0x58	; 88
     746:	90 e0       	ldi	r25, 0x00	; 0
     748:	b6 01       	movw	r22, r12
     74a:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     74e:	af 14       	cp	r10, r15
     750:	08 f4       	brcc	.+2      	; 0x754 <vfprintf+0x594>
     752:	86 c0       	rjmp	.+268    	; 0x860 <__DATA_REGION_LENGTH__+0x60>
     754:	aa 94       	dec	r10
     756:	0a 2d       	mov	r16, r10
     758:	10 e0       	ldi	r17, 0x00	; 0
     75a:	0f 5f       	subi	r16, 0xFF	; 255
     75c:	1f 4f       	sbci	r17, 0xFF	; 255
     75e:	08 0d       	add	r16, r8
     760:	19 1d       	adc	r17, r9
     762:	f8 01       	movw	r30, r16
     764:	82 91       	ld	r24, -Z
     766:	8f 01       	movw	r16, r30
     768:	b6 01       	movw	r22, r12
     76a:	90 e0       	ldi	r25, 0x00	; 0
     76c:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     770:	80 16       	cp	r8, r16
     772:	91 06       	cpc	r9, r17
     774:	b1 f7       	brne	.-20     	; 0x762 <vfprintf+0x5a2>
     776:	1e ce       	rjmp	.-964    	; 0x3b4 <vfprintf+0x1f4>
     778:	f2 e0       	ldi	r31, 0x02	; 2
     77a:	6f 0e       	add	r6, r31
     77c:	71 1c       	adc	r7, r1
     77e:	f5 01       	movw	r30, r10
     780:	60 81       	ld	r22, Z
     782:	71 81       	ldd	r23, Z+1	; 0x01
     784:	07 2e       	mov	r0, r23
     786:	00 0c       	add	r0, r0
     788:	88 0b       	sbc	r24, r24
     78a:	99 0b       	sbc	r25, r25
     78c:	97 cf       	rjmp	.-210    	; 0x6bc <vfprintf+0x4fc>
     78e:	10 2f       	mov	r17, r16
     790:	85 37       	cpi	r24, 0x75	; 117
     792:	a9 f4       	brne	.+42     	; 0x7be <vfprintf+0x5fe>
     794:	1f 7e       	andi	r17, 0xEF	; 239
     796:	2a e0       	ldi	r18, 0x0A	; 10
     798:	30 e0       	ldi	r19, 0x00	; 0
     79a:	35 01       	movw	r6, r10
     79c:	17 ff       	sbrs	r17, 7
     79e:	2f c0       	rjmp	.+94     	; 0x7fe <vfprintf+0x63e>
     7a0:	f4 e0       	ldi	r31, 0x04	; 4
     7a2:	6f 0e       	add	r6, r31
     7a4:	71 1c       	adc	r7, r1
     7a6:	f5 01       	movw	r30, r10
     7a8:	60 81       	ld	r22, Z
     7aa:	71 81       	ldd	r23, Z+1	; 0x01
     7ac:	82 81       	ldd	r24, Z+2	; 0x02
     7ae:	93 81       	ldd	r25, Z+3	; 0x03
     7b0:	a4 01       	movw	r20, r8
     7b2:	0e 94 77 09 	call	0x12ee	; 0x12ee <__ultoa_invert>
     7b6:	a8 2e       	mov	r10, r24
     7b8:	a8 18       	sub	r10, r8
     7ba:	1f 77       	andi	r17, 0x7F	; 127
     7bc:	92 cf       	rjmp	.-220    	; 0x6e2 <vfprintf+0x522>
     7be:	19 7f       	andi	r17, 0xF9	; 249
     7c0:	8f 36       	cpi	r24, 0x6F	; 111
     7c2:	d1 f0       	breq	.+52     	; 0x7f8 <vfprintf+0x638>
     7c4:	48 f4       	brcc	.+18     	; 0x7d8 <vfprintf+0x618>
     7c6:	88 35       	cpi	r24, 0x58	; 88
     7c8:	91 f0       	breq	.+36     	; 0x7ee <vfprintf+0x62e>
     7ca:	f6 01       	movw	r30, r12
     7cc:	86 81       	ldd	r24, Z+6	; 0x06
     7ce:	97 81       	ldd	r25, Z+7	; 0x07
     7d0:	2f 96       	adiw	r28, 0x0f	; 15
     7d2:	e2 e1       	ldi	r30, 0x12	; 18
     7d4:	0c 94 3e 08 	jmp	0x107c	; 0x107c <__epilogue_restores__>
     7d8:	80 37       	cpi	r24, 0x70	; 112
     7da:	39 f0       	breq	.+14     	; 0x7ea <vfprintf+0x62a>
     7dc:	88 37       	cpi	r24, 0x78	; 120
     7de:	a9 f7       	brne	.-22     	; 0x7ca <vfprintf+0x60a>
     7e0:	14 fd       	sbrc	r17, 4
     7e2:	14 60       	ori	r17, 0x04	; 4
     7e4:	20 e1       	ldi	r18, 0x10	; 16
     7e6:	30 e0       	ldi	r19, 0x00	; 0
     7e8:	d8 cf       	rjmp	.-80     	; 0x79a <vfprintf+0x5da>
     7ea:	10 61       	ori	r17, 0x10	; 16
     7ec:	f9 cf       	rjmp	.-14     	; 0x7e0 <vfprintf+0x620>
     7ee:	04 fd       	sbrc	r16, 4
     7f0:	16 60       	ori	r17, 0x06	; 6
     7f2:	20 e1       	ldi	r18, 0x10	; 16
     7f4:	32 e0       	ldi	r19, 0x02	; 2
     7f6:	d1 cf       	rjmp	.-94     	; 0x79a <vfprintf+0x5da>
     7f8:	28 e0       	ldi	r18, 0x08	; 8
     7fa:	30 e0       	ldi	r19, 0x00	; 0
     7fc:	ce cf       	rjmp	.-100    	; 0x79a <vfprintf+0x5da>
     7fe:	f2 e0       	ldi	r31, 0x02	; 2
     800:	6f 0e       	add	r6, r31
     802:	71 1c       	adc	r7, r1
     804:	f5 01       	movw	r30, r10
     806:	60 81       	ld	r22, Z
     808:	71 81       	ldd	r23, Z+1	; 0x01
     80a:	90 e0       	ldi	r25, 0x00	; 0
     80c:	80 e0       	ldi	r24, 0x00	; 0
     80e:	d0 cf       	rjmp	.-96     	; 0x7b0 <vfprintf+0x5f0>
     810:	02 fd       	sbrc	r16, 2
     812:	02 c0       	rjmp	.+4      	; 0x818 <__DATA_REGION_LENGTH__+0x18>
     814:	b3 94       	inc	r11
     816:	7d cf       	rjmp	.-262    	; 0x712 <vfprintf+0x552>
     818:	b3 94       	inc	r11
     81a:	b3 94       	inc	r11
     81c:	7a cf       	rjmp	.-268    	; 0x712 <vfprintf+0x552>
     81e:	80 2f       	mov	r24, r16
     820:	86 78       	andi	r24, 0x86	; 134
     822:	09 f4       	brne	.+2      	; 0x826 <__DATA_REGION_LENGTH__+0x26>
     824:	76 cf       	rjmp	.-276    	; 0x712 <vfprintf+0x552>
     826:	f6 cf       	rjmp	.-20     	; 0x814 <__DATA_REGION_LENGTH__+0x14>
     828:	b6 01       	movw	r22, r12
     82a:	80 e2       	ldi	r24, 0x20	; 32
     82c:	90 e0       	ldi	r25, 0x00	; 0
     82e:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     832:	b3 94       	inc	r11
     834:	b5 14       	cp	r11, r5
     836:	c0 f3       	brcs	.-16     	; 0x828 <__DATA_REGION_LENGTH__+0x28>
     838:	e1 2c       	mov	r14, r1
     83a:	77 cf       	rjmp	.-274    	; 0x72a <vfprintf+0x56a>
     83c:	e5 2c       	mov	r14, r5
     83e:	eb 18       	sub	r14, r11
     840:	b5 14       	cp	r11, r5
     842:	08 f4       	brcc	.+2      	; 0x846 <__DATA_REGION_LENGTH__+0x46>
     844:	72 cf       	rjmp	.-284    	; 0x72a <vfprintf+0x56a>
     846:	f8 cf       	rjmp	.-16     	; 0x838 <__DATA_REGION_LENGTH__+0x38>
     848:	80 2f       	mov	r24, r16
     84a:	86 78       	andi	r24, 0x86	; 134
     84c:	09 f4       	brne	.+2      	; 0x850 <__DATA_REGION_LENGTH__+0x50>
     84e:	7f cf       	rjmp	.-258    	; 0x74e <vfprintf+0x58e>
     850:	8b e2       	ldi	r24, 0x2B	; 43
     852:	01 ff       	sbrs	r16, 1
     854:	80 e2       	ldi	r24, 0x20	; 32
     856:	07 fd       	sbrc	r16, 7
     858:	8d e2       	ldi	r24, 0x2D	; 45
     85a:	b6 01       	movw	r22, r12
     85c:	90 e0       	ldi	r25, 0x00	; 0
     85e:	75 cf       	rjmp	.-278    	; 0x74a <vfprintf+0x58a>
     860:	b6 01       	movw	r22, r12
     862:	80 e3       	ldi	r24, 0x30	; 48
     864:	90 e0       	ldi	r25, 0x00	; 0
     866:	0e 94 47 09 	call	0x128e	; 0x128e <fputc>
     86a:	fa 94       	dec	r15
     86c:	70 cf       	rjmp	.-288    	; 0x74e <vfprintf+0x58e>
     86e:	8f ef       	ldi	r24, 0xFF	; 255
     870:	9f ef       	ldi	r25, 0xFF	; 255
     872:	ae cf       	rjmp	.-164    	; 0x7d0 <vfprintf+0x610>
     874:	24 e0       	ldi	r18, 0x04	; 4
     876:	e1 2c       	mov	r14, r1
     878:	25 15       	cp	r18, r5
     87a:	08 f0       	brcs	.+2      	; 0x87e <__DATA_REGION_LENGTH__+0x7e>
     87c:	63 cd       	rjmp	.-1338   	; 0x344 <vfprintf+0x184>
     87e:	84 e0       	ldi	r24, 0x04	; 4
     880:	53 cd       	rjmp	.-1370   	; 0x328 <vfprintf+0x168>

00000882 <main>:
     882:	82 e0       	ldi	r24, 0x02	; 2
     884:	61 e0       	ldi	r22, 0x01	; 1
     886:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     88a:	83 e0       	ldi	r24, 0x03	; 3
     88c:	61 e0       	ldi	r22, 0x01	; 1
     88e:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     892:	84 e0       	ldi	r24, 0x04	; 4
     894:	61 e0       	ldi	r22, 0x01	; 1
     896:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     89a:	85 e0       	ldi	r24, 0x05	; 5
     89c:	61 e0       	ldi	r22, 0x01	; 1
     89e:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8a2:	86 e0       	ldi	r24, 0x06	; 6
     8a4:	61 e0       	ldi	r22, 0x01	; 1
     8a6:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8aa:	87 e0       	ldi	r24, 0x07	; 7
     8ac:	61 e0       	ldi	r22, 0x01	; 1
     8ae:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8b2:	88 e0       	ldi	r24, 0x08	; 8
     8b4:	61 e0       	ldi	r22, 0x01	; 1
     8b6:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8ba:	89 e0       	ldi	r24, 0x09	; 9
     8bc:	61 e0       	ldi	r22, 0x01	; 1
     8be:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8c2:	8a e0       	ldi	r24, 0x0A	; 10
     8c4:	61 e0       	ldi	r22, 0x01	; 1
     8c6:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8ca:	8b e0       	ldi	r24, 0x0B	; 11
     8cc:	61 e0       	ldi	r22, 0x01	; 1
     8ce:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8d2:	8c e0       	ldi	r24, 0x0C	; 12
     8d4:	61 e0       	ldi	r22, 0x01	; 1
     8d6:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8da:	8d e0       	ldi	r24, 0x0D	; 13
     8dc:	61 e0       	ldi	r22, 0x01	; 1
     8de:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_pinMode>
     8e2:	0e 94 19 08 	call	0x1032	; 0x1032 <main_loop_running>
     8e6:	80 30       	cpi	r24, 0x00	; 0
     8e8:	e1 f7       	brne	.-8      	; 0x8e2 <main+0x60>
     8ea:	60 e0       	ldi	r22, 0x00	; 0
     8ec:	70 e0       	ldi	r23, 0x00	; 0
     8ee:	cb 01       	movw	r24, r22
     8f0:	08 95       	ret

000008f2 <_pinMode>:
     8f2:	66 23       	and	r22, r22
     8f4:	69 f0       	breq	.+26     	; 0x910 <.L25>
     8f6:	88 30       	cpi	r24, 0x08	; 8
     8f8:	78 f5       	brcc	.+94     	; 0x958 <.L26>
     8fa:	9a b1       	in	r25, 0x0a	; 10
     8fc:	21 e0       	ldi	r18, 0x01	; 1
     8fe:	30 e0       	ldi	r19, 0x00	; 0
     900:	01 c0       	rjmp	.+2      	; 0x904 <.L2^B6>

00000902 <.L1^B6>:
     902:	22 0f       	add	r18, r18

00000904 <.L2^B6>:
     904:	8a 95       	dec	r24
     906:	ea f7       	brpl	.-6      	; 0x902 <.L1^B6>
     908:	89 2f       	mov	r24, r25
     90a:	82 2b       	or	r24, r18
     90c:	8a b9       	out	0x0a, r24	; 10
     90e:	08 95       	ret

00000910 <.L25>:
     910:	88 30       	cpi	r24, 0x08	; 8
     912:	70 f4       	brcc	.+28     	; 0x930 <.L29>
     914:	4a b1       	in	r20, 0x0a	; 10
     916:	21 e0       	ldi	r18, 0x01	; 1
     918:	30 e0       	ldi	r19, 0x00	; 0
     91a:	b9 01       	movw	r22, r18
     91c:	02 c0       	rjmp	.+4      	; 0x922 <.L2^B7>

0000091e <.L1^B7>:
     91e:	66 0f       	add	r22, r22
     920:	77 1f       	adc	r23, r23

00000922 <.L2^B7>:
     922:	8a 95       	dec	r24
     924:	e2 f7       	brpl	.-8      	; 0x91e <.L1^B7>
     926:	cb 01       	movw	r24, r22
     928:	80 95       	com	r24
     92a:	84 23       	and	r24, r20
     92c:	8a b9       	out	0x0a, r24	; 10
     92e:	08 95       	ret

00000930 <.L29>:
     930:	8e 30       	cpi	r24, 0x0E	; 14
     932:	a0 f1       	brcs	.+104    	; 0x99c <.L31>
     934:	85 31       	cpi	r24, 0x15	; 21
     936:	78 f4       	brcc	.+30     	; 0x956 <.L24>
     938:	47 b1       	in	r20, 0x07	; 7
     93a:	8e 50       	subi	r24, 0x0E	; 14
     93c:	99 0b       	sbc	r25, r25
     93e:	21 e0       	ldi	r18, 0x01	; 1
     940:	30 e0       	ldi	r19, 0x00	; 0
     942:	b9 01       	movw	r22, r18
     944:	02 c0       	rjmp	.+4      	; 0x94a <.L2^B8>

00000946 <.L1^B8>:
     946:	66 0f       	add	r22, r22
     948:	77 1f       	adc	r23, r23

0000094a <.L2^B8>:
     94a:	8a 95       	dec	r24
     94c:	e2 f7       	brpl	.-8      	; 0x946 <.L1^B8>
     94e:	cb 01       	movw	r24, r22
     950:	80 95       	com	r24
     952:	84 23       	and	r24, r20
     954:	87 b9       	out	0x07, r24	; 7

00000956 <.L24>:
     956:	08 95       	ret

00000958 <.L26>:
     958:	8e 30       	cpi	r24, 0x0E	; 14
     95a:	88 f0       	brcs	.+34     	; 0x97e <.L32>
     95c:	85 31       	cpi	r24, 0x15	; 21
     95e:	d8 f7       	brcc	.-10     	; 0x956 <.L24>
     960:	27 b1       	in	r18, 0x07	; 7
     962:	8e 50       	subi	r24, 0x0E	; 14
     964:	99 0b       	sbc	r25, r25
     966:	41 e0       	ldi	r20, 0x01	; 1
     968:	50 e0       	ldi	r21, 0x00	; 0
     96a:	ba 01       	movw	r22, r20
     96c:	02 c0       	rjmp	.+4      	; 0x972 <.L2^B9>

0000096e <.L1^B9>:
     96e:	66 0f       	add	r22, r22
     970:	77 1f       	adc	r23, r23

00000972 <.L2^B9>:
     972:	8a 95       	dec	r24
     974:	e2 f7       	brpl	.-8      	; 0x96e <.L1^B9>
     976:	cb 01       	movw	r24, r22
     978:	82 2b       	or	r24, r18
     97a:	87 b9       	out	0x07, r24	; 7
     97c:	08 95       	ret

0000097e <.L32>:
     97e:	24 b1       	in	r18, 0x04	; 4
     980:	88 50       	subi	r24, 0x08	; 8
     982:	99 0b       	sbc	r25, r25
     984:	41 e0       	ldi	r20, 0x01	; 1
     986:	50 e0       	ldi	r21, 0x00	; 0
     988:	ba 01       	movw	r22, r20
     98a:	02 c0       	rjmp	.+4      	; 0x990 <.L2^B10>

0000098c <.L1^B10>:
     98c:	66 0f       	add	r22, r22
     98e:	77 1f       	adc	r23, r23

00000990 <.L2^B10>:
     990:	8a 95       	dec	r24
     992:	e2 f7       	brpl	.-8      	; 0x98c <.L1^B10>
     994:	cb 01       	movw	r24, r22
     996:	82 2b       	or	r24, r18
     998:	84 b9       	out	0x04, r24	; 4
     99a:	08 95       	ret

0000099c <.L31>:
     99c:	44 b1       	in	r20, 0x04	; 4
     99e:	88 50       	subi	r24, 0x08	; 8
     9a0:	99 0b       	sbc	r25, r25
     9a2:	21 e0       	ldi	r18, 0x01	; 1
     9a4:	30 e0       	ldi	r19, 0x00	; 0
     9a6:	b9 01       	movw	r22, r18
     9a8:	02 c0       	rjmp	.+4      	; 0x9ae <.L2^B11>

000009aa <.L1^B11>:
     9aa:	66 0f       	add	r22, r22
     9ac:	77 1f       	adc	r23, r23

000009ae <.L2^B11>:
     9ae:	8a 95       	dec	r24
     9b0:	e2 f7       	brpl	.-8      	; 0x9aa <.L1^B11>
     9b2:	cb 01       	movw	r24, r22
     9b4:	80 95       	com	r24
     9b6:	84 23       	and	r24, r20
     9b8:	84 b9       	out	0x04, r24	; 4
     9ba:	08 95       	ret

000009bc <__vector_1>:
     9bc:	1f 92       	push	r1
     9be:	0f 92       	push	r0
     9c0:	0f b6       	in	r0, 0x3f	; 63
     9c2:	0f 92       	push	r0
     9c4:	11 24       	eor	r1, r1
     9c6:	2f 93       	push	r18
     9c8:	3f 93       	push	r19
     9ca:	4f 93       	push	r20
     9cc:	5f 93       	push	r21
     9ce:	6f 93       	push	r22
     9d0:	7f 93       	push	r23
     9d2:	8f 93       	push	r24
     9d4:	9f 93       	push	r25
     9d6:	af 93       	push	r26
     9d8:	bf 93       	push	r27
     9da:	ef 93       	push	r30
     9dc:	ff 93       	push	r31
     9de:	e0 91 04 01 	lds	r30, 0x0104	; 0x800104 <currentInt0Callback>
     9e2:	f0 91 05 01 	lds	r31, 0x0105	; 0x800105 <currentInt0Callback+0x1>
     9e6:	30 97       	sbiw	r30, 0x00	; 0
     9e8:	09 f0       	breq	.+2      	; 0x9ec <.L33>
     9ea:	09 95       	icall

000009ec <.L33>:
     9ec:	ff 91       	pop	r31
     9ee:	ef 91       	pop	r30
     9f0:	bf 91       	pop	r27
     9f2:	af 91       	pop	r26
     9f4:	9f 91       	pop	r25
     9f6:	8f 91       	pop	r24
     9f8:	7f 91       	pop	r23
     9fa:	6f 91       	pop	r22
     9fc:	5f 91       	pop	r21
     9fe:	4f 91       	pop	r20
     a00:	3f 91       	pop	r19
     a02:	2f 91       	pop	r18
     a04:	0f 90       	pop	r0
     a06:	0f be       	out	0x3f, r0	; 63
     a08:	0f 90       	pop	r0
     a0a:	1f 90       	pop	r1
     a0c:	18 95       	reti

00000a0e <__vector_2>:
     a0e:	1f 92       	push	r1
     a10:	0f 92       	push	r0
     a12:	0f b6       	in	r0, 0x3f	; 63
     a14:	0f 92       	push	r0
     a16:	11 24       	eor	r1, r1
     a18:	2f 93       	push	r18
     a1a:	3f 93       	push	r19
     a1c:	4f 93       	push	r20
     a1e:	5f 93       	push	r21
     a20:	6f 93       	push	r22
     a22:	7f 93       	push	r23
     a24:	8f 93       	push	r24
     a26:	9f 93       	push	r25
     a28:	af 93       	push	r26
     a2a:	bf 93       	push	r27
     a2c:	ef 93       	push	r30
     a2e:	ff 93       	push	r31
     a30:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
     a34:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
     a38:	30 97       	sbiw	r30, 0x00	; 0
     a3a:	09 f0       	breq	.+2      	; 0xa3e <.L38>
     a3c:	09 95       	icall

00000a3e <.L38>:
     a3e:	ff 91       	pop	r31
     a40:	ef 91       	pop	r30
     a42:	bf 91       	pop	r27
     a44:	af 91       	pop	r26
     a46:	9f 91       	pop	r25
     a48:	8f 91       	pop	r24
     a4a:	7f 91       	pop	r23
     a4c:	6f 91       	pop	r22
     a4e:	5f 91       	pop	r21
     a50:	4f 91       	pop	r20
     a52:	3f 91       	pop	r19
     a54:	2f 91       	pop	r18
     a56:	0f 90       	pop	r0
     a58:	0f be       	out	0x3f, r0	; 63
     a5a:	0f 90       	pop	r0
     a5c:	1f 90       	pop	r1
     a5e:	18 95       	reti

00000a60 <__vector_9>:
     a60:	1f 92       	push	r1
     a62:	0f 92       	push	r0
     a64:	0f b6       	in	r0, 0x3f	; 63
     a66:	0f 92       	push	r0
     a68:	11 24       	eor	r1, r1
     a6a:	2f 93       	push	r18
     a6c:	3f 93       	push	r19
     a6e:	4f 93       	push	r20
     a70:	5f 93       	push	r21
     a72:	6f 93       	push	r22
     a74:	7f 93       	push	r23
     a76:	8f 93       	push	r24
     a78:	9f 93       	push	r25
     a7a:	af 93       	push	r26
     a7c:	bf 93       	push	r27
     a7e:	ef 93       	push	r30
     a80:	ff 93       	push	r31
     a82:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <_timer2Callback>
     a86:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <_timer2Callback+0x1>
     a8a:	89 2b       	or	r24, r25
     a8c:	21 f5       	brne	.+72     	; 0xad6 <.L39>
     a8e:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <_t2Overflow>
     a92:	90 91 13 01 	lds	r25, 0x0113	; 0x800113 <_t2Overflow+0x1>
     a96:	a0 91 14 01 	lds	r26, 0x0114	; 0x800114 <_t2Overflow+0x2>
     a9a:	b0 91 15 01 	lds	r27, 0x0115	; 0x800115 <_t2Overflow+0x3>
     a9e:	01 96       	adiw	r24, 0x01	; 1
     aa0:	a1 1d       	adc	r26, r1
     aa2:	b1 1d       	adc	r27, r1
     aa4:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <_t2Overflow>
     aa8:	90 93 13 01 	sts	0x0113, r25	; 0x800113 <_t2Overflow+0x1>
     aac:	a0 93 14 01 	sts	0x0114, r26	; 0x800114 <_t2Overflow+0x2>
     ab0:	b0 93 15 01 	sts	0x0115, r27	; 0x800115 <_t2Overflow+0x3>

00000ab4 <.L24>:
     ab4:	ff 91       	pop	r31
     ab6:	ef 91       	pop	r30
     ab8:	bf 91       	pop	r27
     aba:	af 91       	pop	r26
     abc:	9f 91       	pop	r25
     abe:	8f 91       	pop	r24
     ac0:	7f 91       	pop	r23
     ac2:	6f 91       	pop	r22
     ac4:	5f 91       	pop	r21
     ac6:	4f 91       	pop	r20
     ac8:	3f 91       	pop	r19
     aca:	2f 91       	pop	r18
     acc:	0f 90       	pop	r0
     ace:	0f be       	out	0x3f, r0	; 63
     ad0:	0f 90       	pop	r0
     ad2:	1f 90       	pop	r1
     ad4:	18 95       	reti

00000ad6 <.L39>:
     ad6:	e0 91 10 01 	lds	r30, 0x0110	; 0x800110 <_timer2Callback>
     ada:	f0 91 11 01 	lds	r31, 0x0111	; 0x800111 <_timer2Callback+0x1>
     ade:	09 95       	icall
     ae0:	80 91 0f 01 	lds	r24, 0x010F	; 0x80010f <_timer2Repeat>
     ae4:	88 23       	and	r24, r24
     ae6:	19 f1       	breq	.+70     	; 0xb2e <.L26>
     ae8:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <_timer2CountUntilTrip>
     aec:	88 23       	and	r24, r24
     aee:	f9 f0       	breq	.+62     	; 0xb2e <.L26>
     af0:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <_timer2CountUntilTrip>
     af4:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     af8:	80 91 0e 01 	lds	r24, 0x010E	; 0x80010e <_timer2Sleep>
     afc:	88 23       	and	r24, r24
     afe:	d1 f2       	breq	.-76     	; 0xab4 <.L24>
     b00:	90 91 0d 01 	lds	r25, 0x010D	; 0x80010d <_timer2DisableBOD>
     b04:	83 b7       	in	r24, 0x33	; 51
     b06:	81 7f       	andi	r24, 0xF1	; 241
     b08:	86 60       	ori	r24, 0x06	; 6
     b0a:	83 bf       	out	0x33, r24	; 51
     b0c:	f8 94       	cli
     b0e:	83 b7       	in	r24, 0x33	; 51
     b10:	81 60       	ori	r24, 0x01	; 1
     b12:	83 bf       	out	0x33, r24	; 51
     b14:	99 23       	and	r25, r25
     b16:	19 f1       	breq	.+70     	; 0xb5e <.L28>
     b18:	85 b7       	in	r24, 0x35	; 53
     b1a:	80 66       	ori	r24, 0x60	; 96
     b1c:	85 bf       	out	0x35, r24	; 53
     b1e:	8f 7d       	andi	r24, 0xDF	; 223
     b20:	85 bf       	out	0x35, r24	; 53
     b22:	78 94       	sei
     b24:	88 95       	sleep

00000b26 <.L29>:
     b26:	83 b7       	in	r24, 0x33	; 51
     b28:	8e 7f       	andi	r24, 0xFE	; 254
     b2a:	83 bf       	out	0x33, r24	; 51
     b2c:	c3 cf       	rjmp	.-122    	; 0xab4 <.L24>

00000b2e <.L26>:
     b2e:	10 92 11 01 	sts	0x0111, r1	; 0x800111 <_timer2Callback+0x1>
     b32:	10 92 10 01 	sts	0x0110, r1	; 0x800110 <_timer2Callback>
     b36:	10 92 0f 01 	sts	0x010F, r1	; 0x80010f <_timer2Repeat>
     b3a:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <_timer2Sleep>
     b3e:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <_timer2DisableBOD>
     b42:	10 92 0c 01 	sts	0x010C, r1	; 0x80010c <_timer2CountUntilTrip>
     b46:	10 92 b0 00 	sts	0x00B0, r1	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     b4a:	84 e0       	ldi	r24, 0x04	; 4
     b4c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     b50:	80 91 70 00 	lds	r24, 0x0070	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     b54:	81 60       	ori	r24, 0x01	; 1
     b56:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     b5a:	78 94       	sei
     b5c:	ab cf       	rjmp	.-170    	; 0xab4 <.L24>

00000b5e <.L28>:
     b5e:	78 94       	sei
     b60:	88 95       	sleep
     b62:	e1 cf       	rjmp	.-62     	; 0xb26 <.L29>

00000b64 <startTimers>:
     b64:	10 92 b0 00 	sts	0x00B0, r1	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     b68:	84 e0       	ldi	r24, 0x04	; 4
     b6a:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     b6e:	e0 e7       	ldi	r30, 0x70	; 112
     b70:	f0 e0       	ldi	r31, 0x00	; 0
     b72:	80 81       	ld	r24, Z
     b74:	81 60       	ori	r24, 0x01	; 1
     b76:	80 83       	st	Z, r24
     b78:	78 94       	sei
     b7a:	08 95       	ret

00000b7c <__vector_14>:
     b7c:	1f 92       	push	r1
     b7e:	0f 92       	push	r0
     b80:	0f b6       	in	r0, 0x3f	; 63
     b82:	0f 92       	push	r0
     b84:	11 24       	eor	r1, r1
     b86:	2f 93       	push	r18
     b88:	3f 93       	push	r19
     b8a:	4f 93       	push	r20
     b8c:	5f 93       	push	r21
     b8e:	6f 93       	push	r22
     b90:	7f 93       	push	r23
     b92:	8f 93       	push	r24
     b94:	9f 93       	push	r25
     b96:	af 93       	push	r26
     b98:	bf 93       	push	r27
     b9a:	ef 93       	push	r30
     b9c:	ff 93       	push	r31
     b9e:	e0 91 ac 01 	lds	r30, 0x01AC	; 0x8001ac <currentTimer0IntCallback>
     ba2:	f0 91 ad 01 	lds	r31, 0x01AD	; 0x8001ad <currentTimer0IntCallback+0x1>
     ba6:	30 97       	sbiw	r30, 0x00	; 0
     ba8:	09 f0       	breq	.+2      	; 0xbac <.L64>
     baa:	09 95       	icall

00000bac <.L64>:
     bac:	ff 91       	pop	r31
     bae:	ef 91       	pop	r30
     bb0:	bf 91       	pop	r27
     bb2:	af 91       	pop	r26
     bb4:	9f 91       	pop	r25
     bb6:	8f 91       	pop	r24
     bb8:	7f 91       	pop	r23
     bba:	6f 91       	pop	r22
     bbc:	5f 91       	pop	r21
     bbe:	4f 91       	pop	r20
     bc0:	3f 91       	pop	r19
     bc2:	2f 91       	pop	r18
     bc4:	0f 90       	pop	r0
     bc6:	0f be       	out	0x3f, r0	; 63
     bc8:	0f 90       	pop	r0
     bca:	1f 90       	pop	r1
     bcc:	18 95       	reti

00000bce <__vector_11>:
     bce:	1f 92       	push	r1
     bd0:	0f 92       	push	r0
     bd2:	0f b6       	in	r0, 0x3f	; 63
     bd4:	0f 92       	push	r0
     bd6:	11 24       	eor	r1, r1
     bd8:	2f 93       	push	r18
     bda:	3f 93       	push	r19
     bdc:	4f 93       	push	r20
     bde:	5f 93       	push	r21
     be0:	6f 93       	push	r22
     be2:	7f 93       	push	r23
     be4:	8f 93       	push	r24
     be6:	9f 93       	push	r25
     be8:	af 93       	push	r26
     bea:	bf 93       	push	r27
     bec:	ef 93       	push	r30
     bee:	ff 93       	push	r31
     bf0:	e0 91 aa 01 	lds	r30, 0x01AA	; 0x8001aa <currentTimer1IntCallback>
     bf4:	f0 91 ab 01 	lds	r31, 0x01AB	; 0x8001ab <currentTimer1IntCallback+0x1>
     bf8:	30 97       	sbiw	r30, 0x00	; 0
     bfa:	69 f1       	breq	.+90     	; 0xc56 <.L76>
     bfc:	09 95       	icall
     bfe:	80 91 00 01 	lds	r24, 0x0100	; 0x800100 <__data_start>
     c02:	81 11       	cpse	r24, r1
     c04:	17 c0       	rjmp	.+46     	; 0xc34 <.L75>
     c06:	10 92 ab 01 	sts	0x01AB, r1	; 0x8001ab <currentTimer1IntCallback+0x1>
     c0a:	10 92 aa 01 	sts	0x01AA, r1	; 0x8001aa <currentTimer1IntCallback>
     c0e:	10 92 a9 01 	sts	0x01A9, r1	; 0x8001a9 <profiledTimer1IntCallback+0x1>
     c12:	10 92 a8 01 	sts	0x01A8, r1	; 0x8001a8 <profiledTimer1IntCallback>
     c16:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__TEXT_REGION_LENGTH__+0x7f806f>
     c1a:	8d 7f       	andi	r24, 0xFD	; 253
     c1c:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__TEXT_REGION_LENGTH__+0x7f806f>
     c20:	8f ef       	ldi	r24, 0xFF	; 255
     c22:	86 bb       	out	0x16, r24	; 22
     c24:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     c28:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     c2c:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__TEXT_REGION_LENGTH__+0x7f8085>
     c30:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__TEXT_REGION_LENGTH__+0x7f8084>

00000c34 <.L75>:
     c34:	ff 91       	pop	r31
     c36:	ef 91       	pop	r30
     c38:	bf 91       	pop	r27
     c3a:	af 91       	pop	r26
     c3c:	9f 91       	pop	r25
     c3e:	8f 91       	pop	r24
     c40:	7f 91       	pop	r23
     c42:	6f 91       	pop	r22
     c44:	5f 91       	pop	r21
     c46:	4f 91       	pop	r20
     c48:	3f 91       	pop	r19
     c4a:	2f 91       	pop	r18
     c4c:	0f 90       	pop	r0
     c4e:	0f be       	out	0x3f, r0	; 63
     c50:	0f 90       	pop	r0
     c52:	1f 90       	pop	r1
     c54:	18 95       	reti

00000c56 <.L76>:
     c56:	80 91 a8 01 	lds	r24, 0x01A8	; 0x8001a8 <profiledTimer1IntCallback>
     c5a:	90 91 a9 01 	lds	r25, 0x01A9	; 0x8001a9 <profiledTimer1IntCallback+0x1>
     c5e:	89 2b       	or	r24, r25
     c60:	49 f3       	breq	.-46     	; 0xc34 <.L75>
     c62:	5b 9a       	sbi	0x0b, 3	; 11
     c64:	e0 91 a8 01 	lds	r30, 0x01A8	; 0x8001a8 <profiledTimer1IntCallback>
     c68:	f0 91 a9 01 	lds	r31, 0x01A9	; 0x8001a9 <profiledTimer1IntCallback+0x1>
     c6c:	09 95       	icall
     c6e:	5b 98       	cbi	0x0b, 3	; 11
     c70:	e1 cf       	rjmp	.-62     	; 0xc34 <.L75>

00000c72 <__vector_13>:
     c72:	1f 92       	push	r1
     c74:	0f 92       	push	r0
     c76:	0f b6       	in	r0, 0x3f	; 63
     c78:	0f 92       	push	r0
     c7a:	11 24       	eor	r1, r1
     c7c:	2f 93       	push	r18
     c7e:	3f 93       	push	r19
     c80:	4f 93       	push	r20
     c82:	5f 93       	push	r21
     c84:	6f 93       	push	r22
     c86:	7f 93       	push	r23
     c88:	8f 93       	push	r24
     c8a:	9f 93       	push	r25
     c8c:	af 93       	push	r26
     c8e:	bf 93       	push	r27
     c90:	ef 93       	push	r30
     c92:	ff 93       	push	r31
     c94:	e0 91 a6 01 	lds	r30, 0x01A6	; 0x8001a6 <asyncSingleShotIntCallback>
     c98:	f0 91 a7 01 	lds	r31, 0x01A7	; 0x8001a7 <asyncSingleShotIntCallback+0x1>
     c9c:	30 97       	sbiw	r30, 0x00	; 0
     c9e:	89 f0       	breq	.+34     	; 0xcc2 <.L116>
     ca0:	09 95       	icall
     ca2:	10 92 a7 01 	sts	0x01A7, r1	; 0x8001a7 <asyncSingleShotIntCallback+0x1>
     ca6:	10 92 a6 01 	sts	0x01A6, r1	; 0x8001a6 <asyncSingleShotIntCallback>
     caa:	10 92 6f 00 	sts	0x006F, r1	; 0x80006f <__TEXT_REGION_LENGTH__+0x7f806f>
     cae:	8f ef       	ldi	r24, 0xFF	; 255
     cb0:	86 bb       	out	0x16, r24	; 22
     cb2:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     cb6:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     cba:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__TEXT_REGION_LENGTH__+0x7f8085>
     cbe:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__TEXT_REGION_LENGTH__+0x7f8084>

00000cc2 <.L116>:
     cc2:	ff 91       	pop	r31
     cc4:	ef 91       	pop	r30
     cc6:	bf 91       	pop	r27
     cc8:	af 91       	pop	r26
     cca:	9f 91       	pop	r25
     ccc:	8f 91       	pop	r24
     cce:	7f 91       	pop	r23
     cd0:	6f 91       	pop	r22
     cd2:	5f 91       	pop	r21
     cd4:	4f 91       	pop	r20
     cd6:	3f 91       	pop	r19
     cd8:	2f 91       	pop	r18
     cda:	0f 90       	pop	r0
     cdc:	0f be       	out	0x3f, r0	; 63
     cde:	0f 90       	pop	r0
     ce0:	1f 90       	pop	r1
     ce2:	18 95       	reti

00000ce4 <__vector_6>:
     ce4:	1f 92       	push	r1
     ce6:	0f 92       	push	r0
     ce8:	0f b6       	in	r0, 0x3f	; 63
     cea:	0f 92       	push	r0
     cec:	11 24       	eor	r1, r1
     cee:	2f 93       	push	r18
     cf0:	3f 93       	push	r19
     cf2:	4f 93       	push	r20
     cf4:	5f 93       	push	r21
     cf6:	6f 93       	push	r22
     cf8:	7f 93       	push	r23
     cfa:	8f 93       	push	r24
     cfc:	9f 93       	push	r25
     cfe:	af 93       	push	r26
     d00:	bf 93       	push	r27
     d02:	ef 93       	push	r30
     d04:	ff 93       	push	r31
     d06:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <_wdtCallback>
     d0a:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <_wdtCallback+0x1>
     d0e:	89 2b       	or	r24, r25
     d10:	09 f4       	brne	.+2      	; 0xd14 <L0^A+0x2>

00000d12 <L0^A>:
     d12:	48 c0       	rjmp	.+144    	; 0xda4 <.L144>
     d14:	e0 91 0a 01 	lds	r30, 0x010A	; 0x80010a <_wdtCallback>
     d18:	f0 91 0b 01 	lds	r31, 0x010B	; 0x80010b <_wdtCallback+0x1>
     d1c:	09 95       	icall
     d1e:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <_wdtRepeat>
     d22:	88 23       	and	r24, r24
     d24:	41 f1       	breq	.+80     	; 0xd76 <.L147>
     d26:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <_wdtTimeoutMultiplier>
     d2a:	88 23       	and	r24, r24
     d2c:	21 f1       	breq	.+72     	; 0xd76 <.L147>
     d2e:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <_wdtTimeoutMultiplier>
     d32:	88 30       	cpi	r24, 0x08	; 8
     d34:	08 f0       	brcs	.+2      	; 0xd38 <L0^A+0x2>

00000d36 <L0^A>:
     d36:	47 c0       	rjmp	.+142    	; 0xdc6 <.L162>
     d38:	80 5c       	subi	r24, 0xC0	; 192

00000d3a <.L149>:
     d3a:	f8 94       	cli
     d3c:	a8 95       	wdr
     d3e:	98 e1       	ldi	r25, 0x18	; 24
     d40:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     d44:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     d48:	78 94       	sei
     d4a:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <_wdtSleep>
     d4e:	88 23       	and	r24, r24
     d50:	49 f1       	breq	.+82     	; 0xda4 <.L144>
     d52:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <_wdtDisableBOD>
     d56:	83 b7       	in	r24, 0x33	; 51
     d58:	81 7f       	andi	r24, 0xF1	; 241
     d5a:	84 60       	ori	r24, 0x04	; 4
     d5c:	83 bf       	out	0x33, r24	; 51
     d5e:	f8 94       	cli
     d60:	83 b7       	in	r24, 0x33	; 51
     d62:	81 60       	ori	r24, 0x01	; 1
     d64:	83 bf       	out	0x33, r24	; 51
     d66:	91 11       	cpse	r25, r1
     d68:	31 c0       	rjmp	.+98     	; 0xdcc <.L163>
     d6a:	78 94       	sei
     d6c:	88 95       	sleep

00000d6e <.L152>:
     d6e:	83 b7       	in	r24, 0x33	; 51
     d70:	8e 7f       	andi	r24, 0xFE	; 254
     d72:	83 bf       	out	0x33, r24	; 51
     d74:	17 c0       	rjmp	.+46     	; 0xda4 <.L144>

00000d76 <.L147>:
     d76:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <_wdtCallback+0x1>
     d7a:	10 92 0a 01 	sts	0x010A, r1	; 0x80010a <_wdtCallback>
     d7e:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <_wdtRepeat>
     d82:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <_wdtSleep>
     d86:	10 92 07 01 	sts	0x0107, r1	; 0x800107 <_wdtDisableBOD>
     d8a:	10 92 06 01 	sts	0x0106, r1	; 0x800106 <_wdtTimeoutMultiplier>
     d8e:	0f b6       	in	r0, 0x3f	; 63
     d90:	f8 94       	cli
     d92:	a8 95       	wdr
     d94:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     d98:	88 61       	ori	r24, 0x18	; 24
     d9a:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     d9e:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     da2:	0f be       	out	0x3f, r0	; 63

00000da4 <.L144>:
     da4:	ff 91       	pop	r31
     da6:	ef 91       	pop	r30
     da8:	bf 91       	pop	r27
     daa:	af 91       	pop	r26
     dac:	9f 91       	pop	r25
     dae:	8f 91       	pop	r24
     db0:	7f 91       	pop	r23
     db2:	6f 91       	pop	r22
     db4:	5f 91       	pop	r21
     db6:	4f 91       	pop	r20
     db8:	3f 91       	pop	r19
     dba:	2f 91       	pop	r18
     dbc:	0f 90       	pop	r0
     dbe:	0f be       	out	0x3f, r0	; 63
     dc0:	0f 90       	pop	r0
     dc2:	1f 90       	pop	r1
     dc4:	18 95       	reti

00000dc6 <.L162>:
     dc6:	87 70       	andi	r24, 0x07	; 7
     dc8:	80 5a       	subi	r24, 0xA0	; 160
     dca:	b7 cf       	rjmp	.-146    	; 0xd3a <.L149>

00000dcc <.L163>:
     dcc:	85 b7       	in	r24, 0x35	; 53
     dce:	80 66       	ori	r24, 0x60	; 96
     dd0:	85 bf       	out	0x35, r24	; 53
     dd2:	8f 7d       	andi	r24, 0xDF	; 223
     dd4:	85 bf       	out	0x35, r24	; 53
     dd6:	78 94       	sei
     dd8:	88 95       	sleep
     dda:	c9 cf       	rjmp	.-110    	; 0xd6e <.L152>

00000ddc <__vector_18>:
     ddc:	0f 92       	push	r0
     dde:	0f b6       	in	r0, 0x3f	; 63
     de0:	0f 92       	push	r0
     de2:	1f 92       	push	r1
     de4:	11 24       	eor	r1, r1
     de6:	2f 93       	push	r18
     de8:	8f 93       	push	r24
     dea:	9f 93       	push	r25
     dec:	ef 93       	push	r30
     dee:	ff 93       	push	r31
     df0:	80 91 b8 01 	lds	r24, 0x01B8	; 0x8001b8 <bufferFull>
     df4:	81 11       	cpse	r24, r1
     df6:	22 c0       	rjmp	.+68     	; 0xe3c <.L1>
     df8:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     dfc:	90 91 be 01 	lds	r25, 0x01BE	; 0x8001be <ringBufferEnd>
     e00:	e9 2f       	mov	r30, r25
     e02:	09 2e       	mov	r0, r25
     e04:	00 0c       	add	r0, r0
     e06:	ff 0b       	sbc	r31, r31
     e08:	e0 54       	subi	r30, 0x40	; 64
     e0a:	fe 4f       	sbci	r31, 0xFE	; 254
     e0c:	80 83       	st	Z, r24
     e0e:	9f 5f       	subi	r25, 0xFF	; 255
     e10:	87 e6       	ldi	r24, 0x67	; 103
     e12:	98 02       	muls	r25, r24
     e14:	81 2d       	mov	r24, r1
     e16:	11 24       	eor	r1, r1
     e18:	85 95       	asr	r24
     e1a:	97 fd       	sbrc	r25, 7
     e1c:	83 95       	inc	r24
     e1e:	28 2f       	mov	r18, r24
     e20:	22 0f       	add	r18, r18
     e22:	22 0f       	add	r18, r18
     e24:	82 0f       	add	r24, r18
     e26:	98 1b       	sub	r25, r24
     e28:	89 2f       	mov	r24, r25
     e2a:	90 93 be 01 	sts	0x01BE, r25	; 0x8001be <ringBufferEnd>
     e2e:	91 e0       	ldi	r25, 0x01	; 1
     e30:	20 91 bf 01 	lds	r18, 0x01BF	; 0x8001bf <ringBufferStart>
     e34:	28 13       	cpse	r18, r24
     e36:	90 e0       	ldi	r25, 0x00	; 0
     e38:	90 93 b8 01 	sts	0x01B8, r25	; 0x8001b8 <bufferFull>

00000e3c <.L1>:
     e3c:	ff 91       	pop	r31
     e3e:	ef 91       	pop	r30
     e40:	9f 91       	pop	r25
     e42:	8f 91       	pop	r24
     e44:	2f 91       	pop	r18
     e46:	1f 90       	pop	r1
     e48:	0f 90       	pop	r0
     e4a:	0f be       	out	0x3f, r0	; 63
     e4c:	0f 90       	pop	r0
     e4e:	18 95       	reti

00000e50 <__vector_24>:
     e50:	1f 92       	push	r1
     e52:	0f 92       	push	r0
     e54:	0f b6       	in	r0, 0x3f	; 63
     e56:	0f 92       	push	r0
     e58:	11 24       	eor	r1, r1
     e5a:	2f 93       	push	r18
     e5c:	3f 93       	push	r19
     e5e:	4f 93       	push	r20
     e60:	5f 93       	push	r21
     e62:	6f 93       	push	r22
     e64:	7f 93       	push	r23
     e66:	8f 93       	push	r24
     e68:	9f 93       	push	r25
     e6a:	af 93       	push	r26
     e6c:	bf 93       	push	r27
     e6e:	ef 93       	push	r30
     e70:	ff 93       	push	r31
     e72:	cf 93       	push	r28
     e74:	df 93       	push	r29
     e76:	0f 92       	push	r0
     e78:	cd b7       	in	r28, 0x3d	; 61
     e7a:	de b7       	in	r29, 0x3e	; 62
     e7c:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     e80:	88 7f       	andi	r24, 0xF8	; 248
     e82:	80 36       	cpi	r24, 0x60	; 96
     e84:	f9 f0       	breq	.+62     	; 0xec4 <.L279>

00000e86 <.L229>:
     e86:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     e8a:	88 7f       	andi	r24, 0xF8	; 248
     e8c:	88 3a       	cpi	r24, 0xA8	; 168
     e8e:	09 f4       	brne	.+2      	; 0xe92 <.L238>

00000e90 <L0^A>:
     e90:	59 c0       	rjmp	.+178    	; 0xf44 <.L280>

00000e92 <.L238>:
     e92:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     e96:	85 6c       	ori	r24, 0xC5	; 197
     e98:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000e9c <.L228>:
     e9c:	0f 90       	pop	r0
     e9e:	df 91       	pop	r29
     ea0:	cf 91       	pop	r28
     ea2:	ff 91       	pop	r31
     ea4:	ef 91       	pop	r30
     ea6:	bf 91       	pop	r27
     ea8:	af 91       	pop	r26
     eaa:	9f 91       	pop	r25
     eac:	8f 91       	pop	r24
     eae:	7f 91       	pop	r23
     eb0:	6f 91       	pop	r22
     eb2:	5f 91       	pop	r21
     eb4:	4f 91       	pop	r20
     eb6:	3f 91       	pop	r19
     eb8:	2f 91       	pop	r18
     eba:	0f 90       	pop	r0
     ebc:	0f be       	out	0x3f, r0	; 63
     ebe:	0f 90       	pop	r0
     ec0:	1f 90       	pop	r1
     ec2:	18 95       	reti

00000ec4 <.L279>:
     ec4:	80 91 bc 01 	lds	r24, 0x01BC	; 0x8001bc <i2cSlaveReceiveBufferSize>
     ec8:	90 91 bd 01 	lds	r25, 0x01BD	; 0x8001bd <i2cSlaveReceiveBufferSize+0x1>
     ecc:	89 2b       	or	r24, r25
     ece:	d9 f2       	breq	.-74     	; 0xe86 <.L229>
     ed0:	80 91 ba 01 	lds	r24, 0x01BA	; 0x8001ba <i2cSlaveReceiveBuffer>
     ed4:	90 91 bb 01 	lds	r25, 0x01BB	; 0x8001bb <i2cSlaveReceiveBuffer+0x1>
     ed8:	89 2b       	or	r24, r25
     eda:	a9 f2       	breq	.-86     	; 0xe86 <.L229>
     edc:	70 e0       	ldi	r23, 0x00	; 0
     ede:	60 e0       	ldi	r22, 0x00	; 0
     ee0:	24 ec       	ldi	r18, 0xC4	; 196

00000ee2 <.L233>:
     ee2:	20 93 bc 00 	sts	0x00BC, r18	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000ee6 <.L230>:
     ee6:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     eea:	87 ff       	sbrs	r24, 7
     eec:	fc cf       	rjmp	.-8      	; 0xee6 <.L230>
     eee:	90 91 bb 00 	lds	r25, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     ef2:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     ef6:	88 7f       	andi	r24, 0xF8	; 248
     ef8:	80 38       	cpi	r24, 0x80	; 128
     efa:	29 f0       	breq	.+10     	; 0xf06 <.L231>
     efc:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     f00:	88 7f       	andi	r24, 0xF8	; 248
     f02:	88 38       	cpi	r24, 0x88	; 136
     f04:	81 f4       	brne	.+32     	; 0xf26 <.L232>

00000f06 <.L231>:
     f06:	e0 91 ba 01 	lds	r30, 0x01BA	; 0x8001ba <i2cSlaveReceiveBuffer>
     f0a:	f0 91 bb 01 	lds	r31, 0x01BB	; 0x8001bb <i2cSlaveReceiveBuffer+0x1>
     f0e:	e6 0f       	add	r30, r22
     f10:	f7 1f       	adc	r31, r23
     f12:	90 83       	st	Z, r25
     f14:	6f 5f       	subi	r22, 0xFF	; 255
     f16:	7f 4f       	sbci	r23, 0xFF	; 255
     f18:	80 91 bc 01 	lds	r24, 0x01BC	; 0x8001bc <i2cSlaveReceiveBufferSize>
     f1c:	90 91 bd 01 	lds	r25, 0x01BD	; 0x8001bd <i2cSlaveReceiveBufferSize+0x1>
     f20:	68 17       	cp	r22, r24
     f22:	79 07       	cpc	r23, r25
     f24:	f0 f2       	brcs	.-68     	; 0xee2 <.L233>

00000f26 <.L232>:
     f26:	e0 91 b6 01 	lds	r30, 0x01B6	; 0x8001b6 <currentSlaveReceiveCallback>
     f2a:	f0 91 b7 01 	lds	r31, 0x01B7	; 0x8001b7 <currentSlaveReceiveCallback+0x1>
     f2e:	30 97       	sbiw	r30, 0x00	; 0
     f30:	09 f4       	brne	.+2      	; 0xf34 <L0^A+0x2>

00000f32 <L0^A>:
     f32:	59 c0       	rjmp	.+178    	; 0xfe6 <.L234>
     f34:	80 91 ba 01 	lds	r24, 0x01BA	; 0x8001ba <i2cSlaveReceiveBuffer>
     f38:	90 91 bb 01 	lds	r25, 0x01BB	; 0x8001bb <i2cSlaveReceiveBuffer+0x1>
     f3c:	09 95       	icall
     f3e:	10 92 b9 01 	sts	0x01B9, r1	; 0x8001b9 <lastRegisterAddressed.2498>
     f42:	a7 cf       	rjmp	.-178    	; 0xe92 <.L238>

00000f44 <.L280>:
     f44:	e0 91 b4 01 	lds	r30, 0x01B4	; 0x8001b4 <currentSlaveTransmitCallback>
     f48:	f0 91 b5 01 	lds	r31, 0x01B5	; 0x8001b5 <currentSlaveTransmitCallback+0x1>
     f4c:	30 97       	sbiw	r30, 0x00	; 0
     f4e:	69 f1       	breq	.+90     	; 0xfaa <.L239>
     f50:	19 82       	std	Y+1, r1	; 0x01
     f52:	ce 01       	movw	r24, r28
     f54:	01 96       	adiw	r24, 0x01	; 1
     f56:	09 95       	icall
     f58:	bc 01       	movw	r22, r24
     f5a:	89 81       	ldd	r24, Y+1	; 0x01
     f5c:	88 23       	and	r24, r24
     f5e:	09 f4       	brne	.+2      	; 0xf62 <L0^A+0x2>

00000f60 <L0^A>:
     f60:	98 cf       	rjmp	.-208    	; 0xe92 <.L238>
     f62:	20 e0       	ldi	r18, 0x00	; 0
     f64:	a4 e8       	ldi	r26, 0x84	; 132
     f66:	34 ec       	ldi	r19, 0xC4	; 196

00000f68 <.L244>:
     f68:	42 2f       	mov	r20, r18
     f6a:	50 e0       	ldi	r21, 0x00	; 0
     f6c:	fb 01       	movw	r30, r22
     f6e:	e4 0f       	add	r30, r20
     f70:	f5 1f       	adc	r31, r21
     f72:	90 81       	ld	r25, Z
     f74:	90 93 bb 00 	sts	0x00BB, r25	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     f78:	81 50       	subi	r24, 0x01	; 1
     f7a:	99 0b       	sbc	r25, r25
     f7c:	48 17       	cp	r20, r24
     f7e:	59 07       	cpc	r21, r25
     f80:	8c f4       	brge	.+34     	; 0xfa4 <.L241>
     f82:	30 93 bc 00 	sts	0x00BC, r19	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000f86 <.L243>:
     f86:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     f8a:	87 ff       	sbrs	r24, 7
     f8c:	fc cf       	rjmp	.-8      	; 0xf86 <.L243>
     f8e:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     f92:	88 7f       	andi	r24, 0xF8	; 248
     f94:	88 3b       	cpi	r24, 0xB8	; 184
     f96:	09 f0       	breq	.+2      	; 0xf9a <L0^A+0x2>

00000f98 <L0^A>:
     f98:	7c cf       	rjmp	.-264    	; 0xe92 <.L238>
     f9a:	2f 5f       	subi	r18, 0xFF	; 255
     f9c:	89 81       	ldd	r24, Y+1	; 0x01
     f9e:	28 17       	cp	r18, r24
     fa0:	18 f3       	brcs	.-58     	; 0xf68 <.L244>
     fa2:	77 cf       	rjmp	.-274    	; 0xe92 <.L238>

00000fa4 <.L241>:
     fa4:	a0 93 bc 00 	sts	0x00BC, r26	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     fa8:	ee cf       	rjmp	.-36     	; 0xf86 <.L243>

00000faa <.L239>:
     faa:	e0 91 b0 01 	lds	r30, 0x01B0	; 0x8001b0 <currentRegisterSendCallback>
     fae:	f0 91 b1 01 	lds	r31, 0x01B1	; 0x8001b1 <currentRegisterSendCallback+0x1>
     fb2:	30 97       	sbiw	r30, 0x00	; 0
     fb4:	09 f4       	brne	.+2      	; 0xfb8 <L0^A+0x2>

00000fb6 <L0^A>:
     fb6:	6d cf       	rjmp	.-294    	; 0xe92 <.L238>
     fb8:	80 91 b9 01 	lds	r24, 0x01B9	; 0x8001b9 <lastRegisterAddressed.2498>
     fbc:	88 23       	and	r24, r24
     fbe:	09 f4       	brne	.+2      	; 0xfc2 <L0^A+0x2>

00000fc0 <L0^A>:
     fc0:	68 cf       	rjmp	.-304    	; 0xe92 <.L238>
     fc2:	09 95       	icall
     fc4:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     fc8:	84 e8       	ldi	r24, 0x84	; 132
     fca:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000fce <.L246>:
     fce:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     fd2:	87 ff       	sbrs	r24, 7
     fd4:	fc cf       	rjmp	.-8      	; 0xfce <.L246>
     fd6:	10 92 b9 01 	sts	0x01B9, r1	; 0x8001b9 <lastRegisterAddressed.2498>
     fda:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     fde:	85 6c       	ori	r24, 0xC5	; 197
     fe0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     fe4:	5b cf       	rjmp	.-330    	; 0xe9c <.L228>

00000fe6 <.L234>:
     fe6:	e0 91 b2 01 	lds	r30, 0x01B2	; 0x8001b2 <currentRegisterReceiveCallback>
     fea:	f0 91 b3 01 	lds	r31, 0x01B3	; 0x8001b3 <currentRegisterReceiveCallback+0x1>
     fee:	30 97       	sbiw	r30, 0x00	; 0
     ff0:	71 f0       	breq	.+28     	; 0x100e <.L236>
     ff2:	62 30       	cpi	r22, 0x02	; 2
     ff4:	71 05       	cpc	r23, r1
     ff6:	5c f0       	brlt	.+22     	; 0x100e <.L236>
     ff8:	a0 91 ba 01 	lds	r26, 0x01BA	; 0x8001ba <i2cSlaveReceiveBuffer>
     ffc:	b0 91 bb 01 	lds	r27, 0x01BB	; 0x8001bb <i2cSlaveReceiveBuffer+0x1>
    1000:	8c 91       	ld	r24, X
    1002:	80 93 b9 01 	sts	0x01B9, r24	; 0x8001b9 <lastRegisterAddressed.2498>
    1006:	11 96       	adiw	r26, 0x01	; 1
    1008:	6c 91       	ld	r22, X
    100a:	09 95       	icall
    100c:	42 cf       	rjmp	.-380    	; 0xe92 <.L238>

0000100e <.L236>:
    100e:	80 91 b0 01 	lds	r24, 0x01B0	; 0x8001b0 <currentRegisterSendCallback>
    1012:	90 91 b1 01 	lds	r25, 0x01B1	; 0x8001b1 <currentRegisterSendCallback+0x1>
    1016:	89 2b       	or	r24, r25
    1018:	09 f4       	brne	.+2      	; 0x101c <L0^A+0x2>

0000101a <L0^A>:
    101a:	3b cf       	rjmp	.-394    	; 0xe92 <.L238>
    101c:	67 2b       	or	r22, r23
    101e:	09 f4       	brne	.+2      	; 0x1022 <L0^A+0x2>

00001020 <L0^A>:
    1020:	38 cf       	rjmp	.-400    	; 0xe92 <.L238>
    1022:	e0 91 ba 01 	lds	r30, 0x01BA	; 0x8001ba <i2cSlaveReceiveBuffer>
    1026:	f0 91 bb 01 	lds	r31, 0x01BB	; 0x8001bb <i2cSlaveReceiveBuffer+0x1>
    102a:	80 81       	ld	r24, Z
    102c:	80 93 b9 01 	sts	0x01B9, r24	; 0x8001b9 <lastRegisterAddressed.2498>
    1030:	30 cf       	rjmp	.-416    	; 0xe92 <.L238>

00001032 <main_loop_running>:
    1032:	80 91 01 01 	lds	r24, 0x0101	; 0x800101 <_main_loop_running>
    1036:	08 95       	ret

00001038 <__tablejump2__>:
    1038:	ee 0f       	add	r30, r30
    103a:	ff 1f       	adc	r31, r31
    103c:	05 90       	lpm	r0, Z+
    103e:	f4 91       	lpm	r31, Z
    1040:	e0 2d       	mov	r30, r0
    1042:	09 94       	ijmp

00001044 <__prologue_saves__>:
    1044:	2f 92       	push	r2
    1046:	3f 92       	push	r3
    1048:	4f 92       	push	r4
    104a:	5f 92       	push	r5
    104c:	6f 92       	push	r6
    104e:	7f 92       	push	r7
    1050:	8f 92       	push	r8
    1052:	9f 92       	push	r9
    1054:	af 92       	push	r10
    1056:	bf 92       	push	r11
    1058:	cf 92       	push	r12
    105a:	df 92       	push	r13
    105c:	ef 92       	push	r14
    105e:	ff 92       	push	r15
    1060:	0f 93       	push	r16
    1062:	1f 93       	push	r17
    1064:	cf 93       	push	r28
    1066:	df 93       	push	r29
    1068:	cd b7       	in	r28, 0x3d	; 61
    106a:	de b7       	in	r29, 0x3e	; 62
    106c:	ca 1b       	sub	r28, r26
    106e:	db 0b       	sbc	r29, r27
    1070:	0f b6       	in	r0, 0x3f	; 63
    1072:	f8 94       	cli
    1074:	de bf       	out	0x3e, r29	; 62
    1076:	0f be       	out	0x3f, r0	; 63
    1078:	cd bf       	out	0x3d, r28	; 61
    107a:	09 94       	ijmp

0000107c <__epilogue_restores__>:
    107c:	2a 88       	ldd	r2, Y+18	; 0x12
    107e:	39 88       	ldd	r3, Y+17	; 0x11
    1080:	48 88       	ldd	r4, Y+16	; 0x10
    1082:	5f 84       	ldd	r5, Y+15	; 0x0f
    1084:	6e 84       	ldd	r6, Y+14	; 0x0e
    1086:	7d 84       	ldd	r7, Y+13	; 0x0d
    1088:	8c 84       	ldd	r8, Y+12	; 0x0c
    108a:	9b 84       	ldd	r9, Y+11	; 0x0b
    108c:	aa 84       	ldd	r10, Y+10	; 0x0a
    108e:	b9 84       	ldd	r11, Y+9	; 0x09
    1090:	c8 84       	ldd	r12, Y+8	; 0x08
    1092:	df 80       	ldd	r13, Y+7	; 0x07
    1094:	ee 80       	ldd	r14, Y+6	; 0x06
    1096:	fd 80       	ldd	r15, Y+5	; 0x05
    1098:	0c 81       	ldd	r16, Y+4	; 0x04
    109a:	1b 81       	ldd	r17, Y+3	; 0x03
    109c:	aa 81       	ldd	r26, Y+2	; 0x02
    109e:	b9 81       	ldd	r27, Y+1	; 0x01
    10a0:	ce 0f       	add	r28, r30
    10a2:	d1 1d       	adc	r29, r1
    10a4:	0f b6       	in	r0, 0x3f	; 63
    10a6:	f8 94       	cli
    10a8:	de bf       	out	0x3e, r29	; 62
    10aa:	0f be       	out	0x3f, r0	; 63
    10ac:	cd bf       	out	0x3d, r28	; 61
    10ae:	ed 01       	movw	r28, r26
    10b0:	08 95       	ret

000010b2 <__ftoa_engine>:
    10b2:	28 30       	cpi	r18, 0x08	; 8
    10b4:	08 f0       	brcs	.+2      	; 0x10b8 <__ftoa_engine+0x6>
    10b6:	27 e0       	ldi	r18, 0x07	; 7
    10b8:	33 27       	eor	r19, r19
    10ba:	da 01       	movw	r26, r20
    10bc:	99 0f       	add	r25, r25
    10be:	31 1d       	adc	r19, r1
    10c0:	87 fd       	sbrc	r24, 7
    10c2:	91 60       	ori	r25, 0x01	; 1
    10c4:	00 96       	adiw	r24, 0x00	; 0
    10c6:	61 05       	cpc	r22, r1
    10c8:	71 05       	cpc	r23, r1
    10ca:	39 f4       	brne	.+14     	; 0x10da <__ftoa_engine+0x28>
    10cc:	32 60       	ori	r19, 0x02	; 2
    10ce:	2e 5f       	subi	r18, 0xFE	; 254
    10d0:	3d 93       	st	X+, r19
    10d2:	30 e3       	ldi	r19, 0x30	; 48
    10d4:	2a 95       	dec	r18
    10d6:	e1 f7       	brne	.-8      	; 0x10d0 <__ftoa_engine+0x1e>
    10d8:	08 95       	ret
    10da:	9f 3f       	cpi	r25, 0xFF	; 255
    10dc:	30 f0       	brcs	.+12     	; 0x10ea <__ftoa_engine+0x38>
    10de:	80 38       	cpi	r24, 0x80	; 128
    10e0:	71 05       	cpc	r23, r1
    10e2:	61 05       	cpc	r22, r1
    10e4:	09 f0       	breq	.+2      	; 0x10e8 <__ftoa_engine+0x36>
    10e6:	3c 5f       	subi	r19, 0xFC	; 252
    10e8:	3c 5f       	subi	r19, 0xFC	; 252
    10ea:	3d 93       	st	X+, r19
    10ec:	91 30       	cpi	r25, 0x01	; 1
    10ee:	08 f0       	brcs	.+2      	; 0x10f2 <__ftoa_engine+0x40>
    10f0:	80 68       	ori	r24, 0x80	; 128
    10f2:	91 1d       	adc	r25, r1
    10f4:	df 93       	push	r29
    10f6:	cf 93       	push	r28
    10f8:	1f 93       	push	r17
    10fa:	0f 93       	push	r16
    10fc:	ff 92       	push	r15
    10fe:	ef 92       	push	r14
    1100:	19 2f       	mov	r17, r25
    1102:	98 7f       	andi	r25, 0xF8	; 248
    1104:	96 95       	lsr	r25
    1106:	e9 2f       	mov	r30, r25
    1108:	96 95       	lsr	r25
    110a:	96 95       	lsr	r25
    110c:	e9 0f       	add	r30, r25
    110e:	ff 27       	eor	r31, r31
    1110:	e6 53       	subi	r30, 0x36	; 54
    1112:	ff 4f       	sbci	r31, 0xFF	; 255
    1114:	99 27       	eor	r25, r25
    1116:	33 27       	eor	r19, r19
    1118:	ee 24       	eor	r14, r14
    111a:	ff 24       	eor	r15, r15
    111c:	a7 01       	movw	r20, r14
    111e:	e7 01       	movw	r28, r14
    1120:	05 90       	lpm	r0, Z+
    1122:	08 94       	sec
    1124:	07 94       	ror	r0
    1126:	28 f4       	brcc	.+10     	; 0x1132 <__ftoa_engine+0x80>
    1128:	36 0f       	add	r19, r22
    112a:	e7 1e       	adc	r14, r23
    112c:	f8 1e       	adc	r15, r24
    112e:	49 1f       	adc	r20, r25
    1130:	51 1d       	adc	r21, r1
    1132:	66 0f       	add	r22, r22
    1134:	77 1f       	adc	r23, r23
    1136:	88 1f       	adc	r24, r24
    1138:	99 1f       	adc	r25, r25
    113a:	06 94       	lsr	r0
    113c:	a1 f7       	brne	.-24     	; 0x1126 <__ftoa_engine+0x74>
    113e:	05 90       	lpm	r0, Z+
    1140:	07 94       	ror	r0
    1142:	28 f4       	brcc	.+10     	; 0x114e <__ftoa_engine+0x9c>
    1144:	e7 0e       	add	r14, r23
    1146:	f8 1e       	adc	r15, r24
    1148:	49 1f       	adc	r20, r25
    114a:	56 1f       	adc	r21, r22
    114c:	c1 1d       	adc	r28, r1
    114e:	77 0f       	add	r23, r23
    1150:	88 1f       	adc	r24, r24
    1152:	99 1f       	adc	r25, r25
    1154:	66 1f       	adc	r22, r22
    1156:	06 94       	lsr	r0
    1158:	a1 f7       	brne	.-24     	; 0x1142 <__ftoa_engine+0x90>
    115a:	05 90       	lpm	r0, Z+
    115c:	07 94       	ror	r0
    115e:	28 f4       	brcc	.+10     	; 0x116a <__ftoa_engine+0xb8>
    1160:	f8 0e       	add	r15, r24
    1162:	49 1f       	adc	r20, r25
    1164:	56 1f       	adc	r21, r22
    1166:	c7 1f       	adc	r28, r23
    1168:	d1 1d       	adc	r29, r1
    116a:	88 0f       	add	r24, r24
    116c:	99 1f       	adc	r25, r25
    116e:	66 1f       	adc	r22, r22
    1170:	77 1f       	adc	r23, r23
    1172:	06 94       	lsr	r0
    1174:	a1 f7       	brne	.-24     	; 0x115e <__ftoa_engine+0xac>
    1176:	05 90       	lpm	r0, Z+
    1178:	07 94       	ror	r0
    117a:	20 f4       	brcc	.+8      	; 0x1184 <__ftoa_engine+0xd2>
    117c:	49 0f       	add	r20, r25
    117e:	56 1f       	adc	r21, r22
    1180:	c7 1f       	adc	r28, r23
    1182:	d8 1f       	adc	r29, r24
    1184:	99 0f       	add	r25, r25
    1186:	66 1f       	adc	r22, r22
    1188:	77 1f       	adc	r23, r23
    118a:	88 1f       	adc	r24, r24
    118c:	06 94       	lsr	r0
    118e:	a9 f7       	brne	.-22     	; 0x117a <__ftoa_engine+0xc8>
    1190:	84 91       	lpm	r24, Z
    1192:	10 95       	com	r17
    1194:	17 70       	andi	r17, 0x07	; 7
    1196:	41 f0       	breq	.+16     	; 0x11a8 <__ftoa_engine+0xf6>
    1198:	d6 95       	lsr	r29
    119a:	c7 95       	ror	r28
    119c:	57 95       	ror	r21
    119e:	47 95       	ror	r20
    11a0:	f7 94       	ror	r15
    11a2:	e7 94       	ror	r14
    11a4:	1a 95       	dec	r17
    11a6:	c1 f7       	brne	.-16     	; 0x1198 <__ftoa_engine+0xe6>
    11a8:	e0 e7       	ldi	r30, 0x70	; 112
    11aa:	f0 e0       	ldi	r31, 0x00	; 0
    11ac:	68 94       	set
    11ae:	15 90       	lpm	r1, Z+
    11b0:	15 91       	lpm	r17, Z+
    11b2:	35 91       	lpm	r19, Z+
    11b4:	65 91       	lpm	r22, Z+
    11b6:	95 91       	lpm	r25, Z+
    11b8:	05 90       	lpm	r0, Z+
    11ba:	7f e2       	ldi	r23, 0x2F	; 47
    11bc:	73 95       	inc	r23
    11be:	e1 18       	sub	r14, r1
    11c0:	f1 0a       	sbc	r15, r17
    11c2:	43 0b       	sbc	r20, r19
    11c4:	56 0b       	sbc	r21, r22
    11c6:	c9 0b       	sbc	r28, r25
    11c8:	d0 09       	sbc	r29, r0
    11ca:	c0 f7       	brcc	.-16     	; 0x11bc <__ftoa_engine+0x10a>
    11cc:	e1 0c       	add	r14, r1
    11ce:	f1 1e       	adc	r15, r17
    11d0:	43 1f       	adc	r20, r19
    11d2:	56 1f       	adc	r21, r22
    11d4:	c9 1f       	adc	r28, r25
    11d6:	d0 1d       	adc	r29, r0
    11d8:	7e f4       	brtc	.+30     	; 0x11f8 <__ftoa_engine+0x146>
    11da:	70 33       	cpi	r23, 0x30	; 48
    11dc:	11 f4       	brne	.+4      	; 0x11e2 <__ftoa_engine+0x130>
    11de:	8a 95       	dec	r24
    11e0:	e6 cf       	rjmp	.-52     	; 0x11ae <__ftoa_engine+0xfc>
    11e2:	e8 94       	clt
    11e4:	01 50       	subi	r16, 0x01	; 1
    11e6:	30 f0       	brcs	.+12     	; 0x11f4 <__ftoa_engine+0x142>
    11e8:	08 0f       	add	r16, r24
    11ea:	0a f4       	brpl	.+2      	; 0x11ee <__ftoa_engine+0x13c>
    11ec:	00 27       	eor	r16, r16
    11ee:	02 17       	cp	r16, r18
    11f0:	08 f4       	brcc	.+2      	; 0x11f4 <__ftoa_engine+0x142>
    11f2:	20 2f       	mov	r18, r16
    11f4:	23 95       	inc	r18
    11f6:	02 2f       	mov	r16, r18
    11f8:	7a 33       	cpi	r23, 0x3A	; 58
    11fa:	28 f0       	brcs	.+10     	; 0x1206 <__ftoa_engine+0x154>
    11fc:	79 e3       	ldi	r23, 0x39	; 57
    11fe:	7d 93       	st	X+, r23
    1200:	2a 95       	dec	r18
    1202:	e9 f7       	brne	.-6      	; 0x11fe <__ftoa_engine+0x14c>
    1204:	10 c0       	rjmp	.+32     	; 0x1226 <__ftoa_engine+0x174>
    1206:	7d 93       	st	X+, r23
    1208:	2a 95       	dec	r18
    120a:	89 f6       	brne	.-94     	; 0x11ae <__ftoa_engine+0xfc>
    120c:	06 94       	lsr	r0
    120e:	97 95       	ror	r25
    1210:	67 95       	ror	r22
    1212:	37 95       	ror	r19
    1214:	17 95       	ror	r17
    1216:	17 94       	ror	r1
    1218:	e1 18       	sub	r14, r1
    121a:	f1 0a       	sbc	r15, r17
    121c:	43 0b       	sbc	r20, r19
    121e:	56 0b       	sbc	r21, r22
    1220:	c9 0b       	sbc	r28, r25
    1222:	d0 09       	sbc	r29, r0
    1224:	98 f0       	brcs	.+38     	; 0x124c <__ftoa_engine+0x19a>
    1226:	23 95       	inc	r18
    1228:	7e 91       	ld	r23, -X
    122a:	73 95       	inc	r23
    122c:	7a 33       	cpi	r23, 0x3A	; 58
    122e:	08 f0       	brcs	.+2      	; 0x1232 <__ftoa_engine+0x180>
    1230:	70 e3       	ldi	r23, 0x30	; 48
    1232:	7c 93       	st	X, r23
    1234:	20 13       	cpse	r18, r16
    1236:	b8 f7       	brcc	.-18     	; 0x1226 <__ftoa_engine+0x174>
    1238:	7e 91       	ld	r23, -X
    123a:	70 61       	ori	r23, 0x10	; 16
    123c:	7d 93       	st	X+, r23
    123e:	30 f0       	brcs	.+12     	; 0x124c <__ftoa_engine+0x19a>
    1240:	83 95       	inc	r24
    1242:	71 e3       	ldi	r23, 0x31	; 49
    1244:	7d 93       	st	X+, r23
    1246:	70 e3       	ldi	r23, 0x30	; 48
    1248:	2a 95       	dec	r18
    124a:	e1 f7       	brne	.-8      	; 0x1244 <__ftoa_engine+0x192>
    124c:	11 24       	eor	r1, r1
    124e:	ef 90       	pop	r14
    1250:	ff 90       	pop	r15
    1252:	0f 91       	pop	r16
    1254:	1f 91       	pop	r17
    1256:	cf 91       	pop	r28
    1258:	df 91       	pop	r29
    125a:	99 27       	eor	r25, r25
    125c:	87 fd       	sbrc	r24, 7
    125e:	90 95       	com	r25
    1260:	08 95       	ret

00001262 <strnlen_P>:
    1262:	fc 01       	movw	r30, r24
    1264:	05 90       	lpm	r0, Z+
    1266:	61 50       	subi	r22, 0x01	; 1
    1268:	70 40       	sbci	r23, 0x00	; 0
    126a:	01 10       	cpse	r0, r1
    126c:	d8 f7       	brcc	.-10     	; 0x1264 <strnlen_P+0x2>
    126e:	80 95       	com	r24
    1270:	90 95       	com	r25
    1272:	8e 0f       	add	r24, r30
    1274:	9f 1f       	adc	r25, r31
    1276:	08 95       	ret

00001278 <strnlen>:
    1278:	fc 01       	movw	r30, r24
    127a:	61 50       	subi	r22, 0x01	; 1
    127c:	70 40       	sbci	r23, 0x00	; 0
    127e:	01 90       	ld	r0, Z+
    1280:	01 10       	cpse	r0, r1
    1282:	d8 f7       	brcc	.-10     	; 0x127a <strnlen+0x2>
    1284:	80 95       	com	r24
    1286:	90 95       	com	r25
    1288:	8e 0f       	add	r24, r30
    128a:	9f 1f       	adc	r25, r31
    128c:	08 95       	ret

0000128e <fputc>:
    128e:	0f 93       	push	r16
    1290:	1f 93       	push	r17
    1292:	cf 93       	push	r28
    1294:	df 93       	push	r29
    1296:	18 2f       	mov	r17, r24
    1298:	09 2f       	mov	r16, r25
    129a:	eb 01       	movw	r28, r22
    129c:	8b 81       	ldd	r24, Y+3	; 0x03
    129e:	81 fd       	sbrc	r24, 1
    12a0:	09 c0       	rjmp	.+18     	; 0x12b4 <fputc+0x26>
    12a2:	1f ef       	ldi	r17, 0xFF	; 255
    12a4:	0f ef       	ldi	r16, 0xFF	; 255
    12a6:	81 2f       	mov	r24, r17
    12a8:	90 2f       	mov	r25, r16
    12aa:	df 91       	pop	r29
    12ac:	cf 91       	pop	r28
    12ae:	1f 91       	pop	r17
    12b0:	0f 91       	pop	r16
    12b2:	08 95       	ret
    12b4:	82 ff       	sbrs	r24, 2
    12b6:	14 c0       	rjmp	.+40     	; 0x12e0 <fputc+0x52>
    12b8:	2e 81       	ldd	r18, Y+6	; 0x06
    12ba:	3f 81       	ldd	r19, Y+7	; 0x07
    12bc:	8c 81       	ldd	r24, Y+4	; 0x04
    12be:	9d 81       	ldd	r25, Y+5	; 0x05
    12c0:	28 17       	cp	r18, r24
    12c2:	39 07       	cpc	r19, r25
    12c4:	3c f4       	brge	.+14     	; 0x12d4 <fputc+0x46>
    12c6:	e8 81       	ld	r30, Y
    12c8:	f9 81       	ldd	r31, Y+1	; 0x01
    12ca:	cf 01       	movw	r24, r30
    12cc:	01 96       	adiw	r24, 0x01	; 1
    12ce:	99 83       	std	Y+1, r25	; 0x01
    12d0:	88 83       	st	Y, r24
    12d2:	10 83       	st	Z, r17
    12d4:	8e 81       	ldd	r24, Y+6	; 0x06
    12d6:	9f 81       	ldd	r25, Y+7	; 0x07
    12d8:	01 96       	adiw	r24, 0x01	; 1
    12da:	9f 83       	std	Y+7, r25	; 0x07
    12dc:	8e 83       	std	Y+6, r24	; 0x06
    12de:	e3 cf       	rjmp	.-58     	; 0x12a6 <fputc+0x18>
    12e0:	e8 85       	ldd	r30, Y+8	; 0x08
    12e2:	f9 85       	ldd	r31, Y+9	; 0x09
    12e4:	81 2f       	mov	r24, r17
    12e6:	09 95       	icall
    12e8:	89 2b       	or	r24, r25
    12ea:	a1 f3       	breq	.-24     	; 0x12d4 <fputc+0x46>
    12ec:	da cf       	rjmp	.-76     	; 0x12a2 <fputc+0x14>

000012ee <__ultoa_invert>:
    12ee:	fa 01       	movw	r30, r20
    12f0:	aa 27       	eor	r26, r26
    12f2:	28 30       	cpi	r18, 0x08	; 8
    12f4:	51 f1       	breq	.+84     	; 0x134a <__ultoa_invert+0x5c>
    12f6:	20 31       	cpi	r18, 0x10	; 16
    12f8:	81 f1       	breq	.+96     	; 0x135a <__ultoa_invert+0x6c>
    12fa:	e8 94       	clt
    12fc:	6f 93       	push	r22
    12fe:	6e 7f       	andi	r22, 0xFE	; 254
    1300:	6e 5f       	subi	r22, 0xFE	; 254
    1302:	7f 4f       	sbci	r23, 0xFF	; 255
    1304:	8f 4f       	sbci	r24, 0xFF	; 255
    1306:	9f 4f       	sbci	r25, 0xFF	; 255
    1308:	af 4f       	sbci	r26, 0xFF	; 255
    130a:	b1 e0       	ldi	r27, 0x01	; 1
    130c:	3e d0       	rcall	.+124    	; 0x138a <__ultoa_invert+0x9c>
    130e:	b4 e0       	ldi	r27, 0x04	; 4
    1310:	3c d0       	rcall	.+120    	; 0x138a <__ultoa_invert+0x9c>
    1312:	67 0f       	add	r22, r23
    1314:	78 1f       	adc	r23, r24
    1316:	89 1f       	adc	r24, r25
    1318:	9a 1f       	adc	r25, r26
    131a:	a1 1d       	adc	r26, r1
    131c:	68 0f       	add	r22, r24
    131e:	79 1f       	adc	r23, r25
    1320:	8a 1f       	adc	r24, r26
    1322:	91 1d       	adc	r25, r1
    1324:	a1 1d       	adc	r26, r1
    1326:	6a 0f       	add	r22, r26
    1328:	71 1d       	adc	r23, r1
    132a:	81 1d       	adc	r24, r1
    132c:	91 1d       	adc	r25, r1
    132e:	a1 1d       	adc	r26, r1
    1330:	20 d0       	rcall	.+64     	; 0x1372 <__ultoa_invert+0x84>
    1332:	09 f4       	brne	.+2      	; 0x1336 <__ultoa_invert+0x48>
    1334:	68 94       	set
    1336:	3f 91       	pop	r19
    1338:	2a e0       	ldi	r18, 0x0A	; 10
    133a:	26 9f       	mul	r18, r22
    133c:	11 24       	eor	r1, r1
    133e:	30 19       	sub	r19, r0
    1340:	30 5d       	subi	r19, 0xD0	; 208
    1342:	31 93       	st	Z+, r19
    1344:	de f6       	brtc	.-74     	; 0x12fc <__ultoa_invert+0xe>
    1346:	cf 01       	movw	r24, r30
    1348:	08 95       	ret
    134a:	46 2f       	mov	r20, r22
    134c:	47 70       	andi	r20, 0x07	; 7
    134e:	40 5d       	subi	r20, 0xD0	; 208
    1350:	41 93       	st	Z+, r20
    1352:	b3 e0       	ldi	r27, 0x03	; 3
    1354:	0f d0       	rcall	.+30     	; 0x1374 <__ultoa_invert+0x86>
    1356:	c9 f7       	brne	.-14     	; 0x134a <__ultoa_invert+0x5c>
    1358:	f6 cf       	rjmp	.-20     	; 0x1346 <__ultoa_invert+0x58>
    135a:	46 2f       	mov	r20, r22
    135c:	4f 70       	andi	r20, 0x0F	; 15
    135e:	40 5d       	subi	r20, 0xD0	; 208
    1360:	4a 33       	cpi	r20, 0x3A	; 58
    1362:	18 f0       	brcs	.+6      	; 0x136a <__ultoa_invert+0x7c>
    1364:	49 5d       	subi	r20, 0xD9	; 217
    1366:	31 fd       	sbrc	r19, 1
    1368:	40 52       	subi	r20, 0x20	; 32
    136a:	41 93       	st	Z+, r20
    136c:	02 d0       	rcall	.+4      	; 0x1372 <__ultoa_invert+0x84>
    136e:	a9 f7       	brne	.-22     	; 0x135a <__ultoa_invert+0x6c>
    1370:	ea cf       	rjmp	.-44     	; 0x1346 <__ultoa_invert+0x58>
    1372:	b4 e0       	ldi	r27, 0x04	; 4
    1374:	a6 95       	lsr	r26
    1376:	97 95       	ror	r25
    1378:	87 95       	ror	r24
    137a:	77 95       	ror	r23
    137c:	67 95       	ror	r22
    137e:	ba 95       	dec	r27
    1380:	c9 f7       	brne	.-14     	; 0x1374 <__ultoa_invert+0x86>
    1382:	00 97       	sbiw	r24, 0x00	; 0
    1384:	61 05       	cpc	r22, r1
    1386:	71 05       	cpc	r23, r1
    1388:	08 95       	ret
    138a:	9b 01       	movw	r18, r22
    138c:	ac 01       	movw	r20, r24
    138e:	0a 2e       	mov	r0, r26
    1390:	06 94       	lsr	r0
    1392:	57 95       	ror	r21
    1394:	47 95       	ror	r20
    1396:	37 95       	ror	r19
    1398:	27 95       	ror	r18
    139a:	ba 95       	dec	r27
    139c:	c9 f7       	brne	.-14     	; 0x1390 <__ultoa_invert+0xa2>
    139e:	62 0f       	add	r22, r18
    13a0:	73 1f       	adc	r23, r19
    13a2:	84 1f       	adc	r24, r20
    13a4:	95 1f       	adc	r25, r21
    13a6:	a0 1d       	adc	r26, r0
    13a8:	08 95       	ret

000013aa <_exit>:
    13aa:	f8 94       	cli

000013ac <__stop_program>:
    13ac:	ff cf       	rjmp	.-2      	; 0x13ac <__stop_program>

Disassembly of section .data:

00800100 <__data_start>:
  800100:	01        	movw	r0, r2

00800101 <_main_loop_running>:
  800101:	01                                                  .
