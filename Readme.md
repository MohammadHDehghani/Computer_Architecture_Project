We have two kinds of instructions

R-Type instructions

"xxxx"  "xxxx"   "xxxx"   "xxxx"   "xxxx"
op code     RS      RT      RD      function

and I-Type instructions

"xxxx"  "xxxx"   "xxxx"   "xxxxxxxx"
op code     RS      RT    immediate


instruction         Type        op code         example                function

and                 R           0000            and RD, RS, RT          0000
or                  R           0000            or  RD, RS, RT          0001
xor                 R           0000            xor RD, RS, RT          0010
sum                 R           0000            add RD, RS, RT          0011                           
sub                 R           0000            sub RD, RS, RT          0100
mul                 R           0000            mul RD, RS, RT          0101
div                 R           0000            div RD, RS, RT          0110
rem                 R           0000            rem RD, RS, RT          0111
sw                  I           0001            sw RT, RS,  immediate    -
lw                  I           0010            lw RT, RS,  immediate    -
beq                 I           0011            beq RS, RT, immediate    -                           

This processor supports 8 registers, R0 to R7

Examples:

1.for loop
lw $R1, $R0, 1
lw $R2, $R0, 10	
sum $R3, $R1, $R2
sw $R3, $R0, 0	
sum $R3, $R0, $R0
beq $R0, $R0, 11111100
=
R1 = 1			
R2 = 2	
R3 = R1 + R2		
mem[0] = R1 + R2 = 3		
if(R0 == R0): PC-4

---------------------

2.fibo:
lw $R1, $R0, 1
lw $R2, $R0, 10
sum $R3, $R1, $R2
sw $R3, $R0, 10
sw $R2, $R0, 1
beq $R0, $R0, 11111011

