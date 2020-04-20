; 19.04.2020
; Ýsmet Haktan Taha Koçyiði
; 171418011
; BLM2008.1.2
; Mikroiþlemciler
; 1.Ödev

org 100h

mov bx,1000h
mov ds, bx

mov bx,0350h
mov si,bx
mov dx,[bx]

mov ax,01d ;çarpým hesabý için ax'e 1 atadýk

modal:
    mov cx,dx
    cmp dx,10
    jb dongu ; jump below, dx<10 ise 10 sürekli 10 azaltýp mod aldýðýmýz bölüm
    
    sub dx,10h
    jmp modal

dongu:
    mul cx
    loop dongu

mov bx,2000h ;sonucu yazdýrmak için 2000h adresine geçildi
mov ds,bx
mov [0350h],ax    
