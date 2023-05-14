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
noAplica DWORD 0

nameApe db "Nombre y Apellido: Mariana Rosales ", 0Ah, 0
edad db 30
age byte "Edad: %d años ", 0Ah, 0
montoSoli dd 30000
mensualidad byte "Ingresos mensuales: Q%d ", 0Ah, 0
ingresosM dw 20000
calificacion db "A" ; Excelente, "B" para bueno, "C" para regular, "D" para malo, "E" para fatal, 0Ah, 0
aprov db "OK", 0Ah, 0
noAprov "Denegado", 0Ah, 0
mesesCL db 16
MontoPS byte "Monto solicitado: Q%d ", 0Ah, 0
calificacionSIB byte "Calificación promedio SIB: %c ", 0Ah, 0

msg1 byte "Datos         Valor         Aprobado ", 0Ah, 0
msg2 byte ""
msg3Aprov db "El préstamo se puede otorgar. ", 0Ah, 0
msg4NoAprov db "El préstamo no puede ser otorgado. ", 0Ah, 0


;ingresosAprov db "OK", 0Ah, 0
;mesesTAprov db "OK", 0Ah, 0
;calificacionAprov db "OK", 0Ah, 0






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