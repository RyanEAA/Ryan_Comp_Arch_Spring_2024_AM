; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

		; TODO: add code
        mov eax, 10
        shl eax, 3 ; 2^3 = 8 
        call print_int ; will print 10*8
        call print_nl

        mov eax, 080000045H
        call print_int
        call print_nl
        shl eax, 1
        call print_int

        ; INCORRECT
        mov ebx, 3
        mov eax, 20
        ;shl eax, ebx
        call print_int

        mov eax, 23
        shr eax, 2 ; dividing by 4 ; doing interger division
        call print_int 

        mov eax, 4 ; 100
        mov ebx, 2 ; 010
        test eax, ebx ;000
        dump_regs 1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


