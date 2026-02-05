#name: MIPS16 address mapping to debug line information
#as: -march=mips2 -mabi=32
#ld: -Ttext 0x400020
#objdump: -dlr
#source: mips16-lineno.s

.*: +file format .*mips.*

Disassembly of section \.text:

00400020 <\_\_start>:
	\.\.\.

00400030 <foo>:
foo\(\):
  400030:	e820      	jr	ra
.*mips16-lineno.c:1
  400032:	6500      	nop

00400034 <bar>:
.*mips16-lineno.c:2
  400034:	03e00008 	jr	ra
bar\(\):
.*mips16-lineno.c:2
  400038:	00000000 	nop

0040003c <baz>:
baz\(\):
  40003c:	e820      	jr	ra
.*mips16-lineno.c:3
  40003e:	6500      	nop
