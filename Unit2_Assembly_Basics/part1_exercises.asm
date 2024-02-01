; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec
;gives you acces to what's inside the file
%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss

;global gives esxternal scope to asm_main, meaning that asm_main can be used outside of file
segment .text
        global  asm_main
asm_main:; code label
        enter   0,0               ; setup routine
        pusha

		; TODO: add code
        ;prints register and FLAGS values to stdout
        dump_regs 1
        call print_nl; prints new line

        mov eax, 0 ; makes eax = 0
        mov ah, 18 ; AH = 18 (base 10)
        mov al, 0BA1H ; AL = 0xBA (base 16)
        dump_regs 2

        mov eax, 3 ; eax = 3
        mov ebx, 4 ; ebx = 4

        add eax, ebx ; eax += ebx, eax = 7
        dump_regs 1

        mov eax, 0BEEFCAFEH
        dump_regs 3

        mov eax, 40
        dump_regs 4
        mov ebx, 2

        dump_regs 5
        call print_nl
        
        add ebx, eax
        dump_regs 6

        mov eax, 10 ; sets eax = 10
        mov ebx, 4 ; sets ebx = 4

        sub eax, ebx ; eax -=ebx (6)
        dump_regs 1
        call print_nl

        inc ebx
        dump_regs 2

        ;exercise
        mov eax, 16 ; eax = 16
        dump_regs 1
        call print_nl

        mov ebx, 4 ; ebx = -4
        dump_regs 2
        call print_nl

        sub eax, ebx
        dump_regs 3
        call print_nl

        mov ecx, eax
        inc ecx
        dump_regs 4
        call print_nl

        ;given 12 multiply by 4
        mov eax, 12 ; sets eax = 12
        add eax, eax ; eax += 12 (eax = 24)
        add eax, eax ; eax += 24 (eax = 48

        ;given 4 multiply 12
        mov eax, 4 ; sets eax = 12
        add eax, eax ; eax += 12 (eax = 24)
        add eax, eax ; eax += 24 (eax = 48)
        mov ebx, eax ; ebx = 4a

        add eax, eax ; 4a + 4a = 8a

        add eax, ebx ; 8a + 4a = 12

        dump_regs 1



        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


