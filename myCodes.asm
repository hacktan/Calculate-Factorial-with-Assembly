; 19.04.2020
; �smet Haktan Taha Ko�yi�i
; 171418011
; BLM2008.1.2
; Mikroi�lemciler
; 1.�dev

org 100h

mov bx,1000h
mov ds, bx

mov bx,0350h
mov si,bx
mov dx,[bx]

mov ax,01d ;�arp�m hesab� i�in ax'e 1 atad�k

modal:
    mov cx,dx
    cmp dx,10
    jb dongu ; jump below, dx<10 ise 10 s�rekli 10 azalt�p mod ald���m�z b�l�m
    
    sub dx,10h
    jmp modal

dongu:
    mul cx
    loop dongu

mov bx,2000h ;sonucu yazd�rmak i�in 2000h adresine ge�ildi
mov ds,bx
mov [0350h],ax    
