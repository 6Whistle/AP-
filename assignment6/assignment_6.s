 AREA ARMex, CODE, READONLY
	 ENTRY
	
	LDR r0, =STRING
	LDR r1, STORE
	
LOOP
	LDRB r2, [r0], #1							;read 1 char

	CMP r2, #0
	STRB r2, [r1], #1							;store 1 char
	BNE LOOP									;while char is not 0, do Loop
	
	MOV pc, lr									;end
	
	
STRING DCB "Hello, World", 0			;string to copy
STORE &  &40000								;store address
	
	END