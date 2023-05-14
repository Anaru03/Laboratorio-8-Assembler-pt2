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
ExitProcess proto,dwExitCode:dword

.data
noAplica DWORD 0

nameApe db "Nombre y Apellido: Mariana Rosales ", 0Ah, 0
edad db 30
age byte "Edad: %d años ", 0Ah, 0
montoSoli dd 30000
mensualidad byte "Ingresos mensuales: Q%d ", 0Ah, 0
ingresosAge dw 20000
calificacion dd "A" ; Excelente, "B" para bueno, "C" para regular, "D" para malo, "E" para fatal, 0Ah, 0
aprov db "Aprobado", 0
noAprov db "No Aprobado", 0
ageEL dd 3
MontoPS byte "Monto solicitado: Q%d ", 0Ah, 0
calificacionSIB byte "Calificación promedio SIB: %c ", 0Ah, 0

msg1 byte "Datos         Valor         Aprobado ", 0Ah, 0
msg2 byte "null"
msg3Aprov db "El préstamo se puede otorgar. ", 0Ah, 0
msg4NoAprov db "El préstamo no puede ser otorgado. ", 0Ah, 0



.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib

extrn printf:near
extrn exit:near



public main
main proc


;Verificar edad mayor o igual a 18 años
.IF byte ptr [edad] >= 18
    mov edx, OFFSET aprov
.ELSE
    mov edx, OFFSET noAprov
.ENDIF


;Verificar monto solicitado menor o igual a 400% del salario actual
mov ax, [ingresosAge] 
mov ebx, [montoSoli] 

mov ecx, 400         
mul ecx              

cmp ebx, eax         
.IF ingresosAge 
    mov edx, OFFSET aprov
.ELSE                
    mov edx, OFFSET noAprov
    mov noAplica, 1
.ENDIF


;Verificar al menos 1 año de estabilidad laboral
mov eax, [ageEL]
.IF eax >= 1
    mov edx, OFFSET aprov
.ELSE    
    mov edx, OFFSET noAprov
.ENDIF   



;Verificar calificación en Super Intendencia de Bancos es "A"
mov eax, [calificacion]
cmp eax, "A"

.IF calificacion == "A"
    mov edx, OFFSET aprov
.ELSE
    mov edx, OFFSET noAprov
.ENDIF


RET



salir:

    push 0
    call exit


main endp
end