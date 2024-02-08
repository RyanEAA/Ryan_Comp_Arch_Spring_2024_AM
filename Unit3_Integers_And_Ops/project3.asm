; Base Author: Ryan Aparicio Spring 2024
; Exercise Author: Ryan Aparicio
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.asm"
%include "asm_io.inc"

section .data
    ;hello db 'Hello, NASM World!', 0 ; checking to make sure file 
    fav_num_prompt db "Enter your favorite number: ", 0 ; prompting user for favorite number

section .bss
    starting_num resd 1 ; space for 1 integer

section .text
    global asm_main

asm_main:
        ;code
        enter 0,0

        mov eax, fav_num_prompt
        call print_char
        call print_nl

        ; Exit the program
        mov     eax, 0            ; return back to C
        leave                     
        ret
