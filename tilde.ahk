#Requires AutoHotkey v2.0
#Warn
#NoTrayIcon
#SingleInstance

; Combinazione AltGr + ì (i accentata) per inserire il carattere tilde
<^>!ì::~

; Combinazione AltGr + ' (apostrofo) per inserire il carattere backtick
<^>!'::`

; Combinazione AltGr + Shift + A per inserire il carattere À (A accentata)
<^>!+A:: Send("{Raw}À")

; Combinazione AltGr + Shift + E per inserire il carattere È (E accentata)
<^>!+E:: Send("{Raw}È")

; Combinazione AltGr + Shift + I per inserire il carattere Ì (I accentata)
<^>!+I:: Send("{Raw}Ì")

; Combinazione AltGr + Shift + O per inserire il carattere Ò (O accentata)
<^>!+O:: Send("{Raw}Ò")

; Combinazione AltGr + Shift + U per inserire il carattere Ù (U accentata)
<^>!+U:: Send("{Raw}Ù")