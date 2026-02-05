#objdump: -dr --prefix-addresses --show-raw-insn
#name: MIPS DADD immediate expansion for R6
#as: -32
#source: daddi.s

# Check MIPS DADD macro expansion with an immediate operand.

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> 5020 8000 	li	at,0x8000
[0-9a-f]+ <[^>]*> 582e 7910 	dadd	t7,t6,at
[0-9a-f]+ <[^>]*> 1020 ffff 	lui	at,0xffff
[0-9a-f]+ <[^>]*> 5021 7fff 	ori	at,at,0x7fff
[0-9a-f]+ <[^>]*> 5830 8910 	dadd	s1,s0,at
[0-9a-f]+ <[^>]*> 5020 8200 	li	at,0x8200
[0-9a-f]+ <[^>]*> 5832 9910 	dadd	s3,s2,at
[0-9a-f]+ <[^>]*> 1020 ffff 	lui	at,0xffff
[0-9a-f]+ <[^>]*> 5021 7dff 	ori	at,at,0x7dff
[0-9a-f]+ <[^>]*> 5834 a910 	dadd	s5,s4,at
	\.\.\.
