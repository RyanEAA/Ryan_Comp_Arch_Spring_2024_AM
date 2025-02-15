

;
; file: math.asm
; This program demonstrates how the integer multiplication and division
; instructions work.
;
; To create executable:
; nasm -f coff math.asm
; gcc -o math math.o driver.c asm_io.o

%include "asm_io.inc"

segment .data
;
; Output strings
;
prompt          db    "Enter a number: ", 0
square_msg      db    "Square of input is ", 0
cube_msg        db    "Cube of input is ", 0
cube25_msg      db    "Cube of input times 25 is ", 0
quot_msg        db    "Quotient of cube/100 is ", 0
rem_msg         db    "Remainder of cube/100 is ", 0
neg_msg         db    "The negation of the remainder is ", 0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov     eax, prompt     ; setup prompt to be printer
        call    print_string    ; print prompt

        call    read_int        ; reading int from user
        mov     [input], eax    ; moving eax into [input]

        imul    eax               ; edx:eax = eax * eax
        mov     ebx, eax          ; save answer in ebx
        mov     eax, square_msg ; setup square number
        call    print_string    ; print square message
        mov     eax, ebx        ; eax = ebx
        call    print_int       ; print eax (squared #)
        call    print_nl        ; print newline

        mov     ebx, eax        ; ebx = eax  - (number ^ 2 )
        imul    ebx, [input]      ; ebx *= [input] - (number ^ 3)
        mov     eax, cube_msg   ; print out prompt
        call    print_string
        mov     eax, ebx       ; print out number ^ 3
        call    print_int       
        call    print_nl

        imul    ecx, ebx, 25      ; ecx = ebx*25
        mov     eax, cube25_msg
        call    print_string
        mov     eax, ecx
        call    print_int
        call    print_nl

        mov     eax, ebx
        cdq                       ; initialize edx by sign extension - zeroing out edx
        mov     ecx, 100          ; can't divide by immediate value
        idiv    ecx               ; edx:eax / ecx
        mov     ecx, eax          ; save quotient into ecx
        mov     eax, quot_msg
        call    print_string
        mov     eax, ecx
        call    print_int
        call    print_nl
        mov     eax, rem_msg
        call    print_string
        mov     eax, edx
        call    print_int
        call    print_nl
        
        neg     edx               ; negate the remainder
        mov     eax, neg_msg
        call    print_string
        mov     eax, edx
        call    print_int
        call    print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret






