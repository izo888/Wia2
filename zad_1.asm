.model small
.stack 100h

.code
main proc
    mov ah, 01h
    int 21h ; Odczytaj znak do AL

    cmp al, '_'
    jg wiekszy
    jl mniejszy

    mov dl, '=' ; Równy
    jmp wypisz

wiekszy:
    mov dl, '>'
    jmp wypisz

mniejszy:
    mov dl, '<'

wypisz:
    mov ah, 02h
    int 21h ; Wypisz znak z DL

    mov ah, 4ch
    int 21h
main endp

end main
