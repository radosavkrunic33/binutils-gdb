#objdump: -dr
#as: -mips64r6 -mmicromips -32
#name: Paired LL/SC for micromips mips64r6
#source: llpscp-64.s

.*: +file format .*

Disassembly of section \.text:

00000000 <test>:
   0:	6044 5030 	lldp	v0,v1,a0
   4:	6044 5030 	lldp	v0,v1,a0
   8:	3044 1234 	addiu	v0,a0,4660
   c:	6042 5000 	lldp	v0,zero,v0
  10:	3062 0000 	addiu	v1,v0,0
			10: R_MICROMIPS_LO16	sync_mem
  14:	6043 5030 	lldp	v0,v1,v1
  18:	1040 0123 	lui	v0,0x123
  1c:	0062 1150 	addu	v0,v0,v1
  20:	3042 4567 	addiu	v0,v0,17767
  24:	6042 5030 	lldp	v0,v1,v0
  28:	1020 0000 	lui	at,0x0
			28: R_MICROMIPS_HI16	sync_mem
  2c:	3021 0000 	addiu	at,at,0
			2c: R_MICROMIPS_LO16	sync_mem
  30:	0081 0950 	addu	at,at,a0
  34:	6001 5000 	lldp	zero,zero,at
  38:	6044 d030 	scdp	v0,v1,a0
  3c:	6044 d030 	scdp	v0,v1,a0
  40:	3024 1234 	addiu	at,a0,4660
  44:	6041 d000 	scdp	v0,zero,at
  48:	3022 0000 	addiu	at,v0,0
			48: R_MICROMIPS_LO16	sync_mem
  4c:	6041 d030 	scdp	v0,v1,at
  50:	1020 0123 	lui	at,0x123
  54:	0061 0950 	addu	at,at,v1
  58:	3021 4567 	addiu	at,at,17767
  5c:	6041 d030 	scdp	v0,v1,at
  60:	1020 0000 	lui	at,0x0
			60: R_MICROMIPS_HI16	sync_mem
  64:	3021 0000 	addiu	at,at,0
			64: R_MICROMIPS_LO16	sync_mem
  68:	0081 0950 	addu	at,at,a0
  6c:	6001 d000 	scdp	zero,zero,at
	...
