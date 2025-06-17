.model small
.stack

.data
  msg db 'Hello World $'

.code
main PROC
  mov ax, @data
  mov ds, ax
  xor ax, ax
  mov dx, offset msg
  mov ah, 9
  int 21h
  .exit
main ENDP

end main