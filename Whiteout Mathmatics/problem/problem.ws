# First, read 2 integer
PUSH 1
GETINT
PUSH 2
GETINT
PUSH 3
PUSH -1
STORE
# a
PUSH 1
RETRIEVE
# LOOP START
LABEL LOOP
DUP
PUSH 2
RETRIEVE
PUSH 1
ADD
SUB
JUMPIFNEG LOOP_CONTINUE
JUMP LOOP_EXIT
LABEL LOOP_CONTINUE

DUP
CALL FUNC
# sum(i)
DUP
PUSH 3
RETRIEVE
# ret
SUB
JUMPIFNEG CONT
PUSH 3
SWAP
STORE
PUSH 0
LABEL CONT
POP
PUSH 1
ADD
JUMP LOOP
LABEL LOOP_EXIT
PUSH 3
RETRIEVE
# TWCTF{
PUSH 84
PUTCHAR
PUSH 87
PUTCHAR
PUSH 67
PUTCHAR
PUSH 84
PUTCHAR
PUSH 70
PUTCHAR
PUSH 123
PUTCHAR
# END
PUTINT
PUSH 125
PUTCHAR
PUSH 10
PUTCHAR
END

LABEL FUNC
# sum of factor
# i = 1
PUSH 5
PUSH 0
STORE
PUSH 1
LABEL F_LOOP
COPY 1
COPY 1
MOD
JUMPIFZERO F_ADD
JUMP F_NONADD
LABEL F_ADD
DUP
PUSH 5
RETRIEVE
ADD
PUSH 5
SWAP
STORE
LABEL F_NONADD
# インクリメント
PUSH 1
ADD
# [i, a] i <= a
DUP
COPY 2
SUB
PUSH 1
SUB
JUMPIFNEG F_LOOP
POP
POP
PUSH 5
RETRIEVE
RET
