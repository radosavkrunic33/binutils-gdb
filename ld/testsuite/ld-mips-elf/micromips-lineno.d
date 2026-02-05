#name: MICROMIPS address mapping to debug line information
#as: -march=mips64r6
#ld: -Ttext 0x400020
#objdump: -dlr
#source: micromips-lineno.s

.*: +file format .*mips.*

Disassembly of section \.text:

00400020 <__start>:
	\.\.\.

00400030 <foo>:
foo\(\):
  400030:	0c00      	nop
.*micromips-lineno.c:1
  400032:	47e3      	jrc	ra

00400034 <bar>:
.*micromips-lineno.c:2
  400034:	03e00009 	jr	ra
bar\(\):
.*micromips-lineno.c:2
  400038:	00000000 	nop

0040003c <baz>:
baz\(\):
  40003c:	0c00      	nop
.*micromips-lineno.c:3
  40003e:	47e3      	jrc	ra

#pass
