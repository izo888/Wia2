.model small
.stack 100h

.code
main proc
    mov ah, 02h
    mov dl, 0Ah ; Nowa linia
    int 21h

    mov ah, 02h
    mov dl, 'C' ; Trzeci znak z 'ABC...'
    int 21h

    mov ah, 4ch
    int 21h
main endp
