; -----------------------------------------------
; UNIVERSIDAD DEL VALLE DE GUATEMALA
; Organización de computadoras y Assembler
; Ciclo 1 - 2023
;
; Nombre: Laboratorio 8 pt2
; Descripción: Pre-calificador de préstamos bancarios
; Autores: Diego Valenzuela 22309
;		   Ruth de Leon 22428
;
; GitHub: https://github.com/Anaru03/Laboratorio-8-Assembler-pt2.git 
; ----------------------------------------------- */
.386
.model flat, stdcall, c

.stack 4096
;ExitProcess proto,dwExitCode:dword

.data
nameApe db "Juan Perez ", 0Ah, 0
edad db 30
age byte "Edad: %d años ", 0Ah, 0
ingresosM dw 20000
Mensualidad byte "Ingresos mensuales: Q%d ", 0Ah, 0
mesesCL db 16
montoSoli dd 80000 
calificacion db "A"",0



.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib
includelib msvcrt.lib

extrn printf:near
extrn exit:near


public main
main proc

salir:

    push 0
    call exit


main endp
end