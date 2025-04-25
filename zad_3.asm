.model small
.stack 100h

.code
main proc
    mov ah, 01h
    int 21h ; Odczytaj znak do AL

    mov ah, 02h
    mov dl, al ; Przenieś odczytany znak do DL
    int 21h ; Wypisz znak

    mov ah, 4ch
    int 21h
main endp
