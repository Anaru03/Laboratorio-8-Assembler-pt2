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
; GitHub: https://github.com/DiegovalExe/Laboratorio-8-Assembler 
; ----------------------------------------------- */
.386
.model flat, stdcall, c

.stack 4096
;ExitProcess proto,dwExitCode:dword

.data


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