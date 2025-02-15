<<<<<<< HEAD
; Original Author: Paul Carter
; Updated by: Megan Avery Summer 2023
; 
; Purpose: skeleton file for writing an assembly program

%include "asm_io.inc"

segment .data
    num_prompt db "Enter your favorite number number: ", 0 ; Asking user for a number
    start db "Starting number: ", 0 ; string
    ten db "Number * 10: ", 0 ; string
    seven_two db "Number * 72: ", 0 ; string
    eight_one db "Number * 81: ", 0 ; string

segment .bss
    start_num resd 1 ; space for 1 integer
    result resd 1 ; for 2 times start_num
    num_cubed resd 1 ; cube numbers
    num_fourth resd 1 ; number to the power of 4

segment .text
    global asm_main

asm_main:
    enter 0,0
    pusha

    ; Asking user for input
    mov eax, num_prompt
    call print_string
    call read_int
    mov dword [start_num], eax
    call print_nl
    
    mov eax, start
    call print_string
    mov eax, [start_num]
    call print_int
    call print_nl
    
    ; Using repeated addition to multiply by 10
    mov eax, ten
    call print_string
    mov eax, [start_num]
    add eax, eax ; Multiply by 2
    mov [result], eax
    add eax, eax
    add eax, eax
    add eax, [result]
    call print_int
    call print_nl
    
    ; Multiplying by 72
    mov eax, seven_two
    call print_string
    mov eax, [start_num]
    add eax, eax
    add eax, eax
    add eax, eax
    mov [num_cubed], eax
    add eax, eax
    add eax, eax
    add eax, eax
    add eax, [num_cubed]
    call print_int
    call print_nl

    ; Multiply by 81
    mov eax, eight_one
    call print_string
    mov eax, [start_num]
    add eax, eax
    add eax, eax
    add eax, eax
    add eax, eax
    mov [num_fourth], eax
    add eax, eax
    add eax, eax
    add eax, [num_fourth]
    add eax, [start_num]
    call print_int

    popa
    mov     eax, 0            ; return back to C
    leave                     
    ret
=======
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
>>>>>>> 0cc9698aac6e4ad092c22d107ba8b2db71181939
