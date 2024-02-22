; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

; initialized data
segment .data
fav_color db "purple",0 ; string
letter db "A" ; character
number dd 95 ; integer

first dd 82 ; ascii value letter(R)

least_fav_color db "yellow", 0 ; string

hello_world db "Hello World!", 0
char_prompt db "enter a character: ", 0
number_prompt db "enter a number: ", 0

index dd 0 ; setting up an index num for accessing values

many_numbers times 5 dd 4 ; creates an array of size 5 filled with 4

many_chars times 5 db "Z"

; uninitialized data
segment .bss

space_for_number resd 1 ; space for 1 integer
space_for_char resb 1 ; space for 1 character


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; mov dword [number], 116
        ; mov eax,[number]
        ; ;dump_regs 1

        ; call print_int ; print number in base 10
        ; call print_nl

        ; mov al, [letter] ; [] is to dereference 
        ; call print_char ; 116 is going to become an ascii value
        ; call print_nl

        ; mov eax, [first]
        ; call print_int ; 116 is going to become an ascii value
        ; call print_nl
        ; call print_char

        ; call print_nl
        ; dump_mem 1, fav_color, 0

        ; mov eax, fav_color + 3 ; +3 skips the first three letters
        ; call print_string

        ; mov eax, hello_world 
        ; call print_string
        ; call print_nl

        ; dump_mem 1, hello_world, 0

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; call print_nl
        ; call print_char

        ; mov eax, [space_for_number]
        ; call print_int
        ; call print_nl

        ; mov eax, number_prompt
        ; call print_string
        ; call read_int
        ; mov dword [space_for_number], eax

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; call print_char

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; mov byte [space_for_char], al

        ; call read_int
        ; mov dword [space_for_number], eax

        dump_mem 1, many_chars, 0
        call print_nl
        dump_mem 2, many_chars + 3, 0


		; TODO: add code

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


