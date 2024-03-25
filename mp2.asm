section .text
    global _start

_start:


    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  '>>--'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 4      ; edx should contain how many characters to print
    int   80h        

    ; return value in EAX = 1 (byte written), or error (-errno)

    add   esp, 4      ; restore esp if necessary

    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  '----'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 4      ; edx should contain how many characters to print
    int   80h        

    ; return value in EAX = 1 (byte written), or error (-errno)

    add   esp, 4      ; restore esp if necessary

    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  '>'
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h        

    ; return value in EAX = 1 (byte written), or error (-errno)

    add   esp, 4      ; restore esp if necessary

    mov   eax, 4      ; set assembler to write
    mov   ebx, 1      ; stdout fileno

    push  0x0A
    mov   ecx, esp    ; esp now points to your char
    mov   edx, 1      ; edx should contain how many characters to print
    int   80h         ; sys_write(1, "A", 1)

    add esp, 4

    ; System exit
    mov eax,1            
    mov ebx,0            
    int 80h

;sudo apt-get update
;sudo apt-get -y install nasm
;nasm -f elf mp1.asm
;ld -m  elf_i386 mp1.o -o mp1
;./mp1
