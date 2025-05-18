; filepath: HyperSpace.ahk
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#Persistent
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

; Global variable to track if HyperSpace is active
global hyperSpaceActive := false

; ========== HyperSpace Basics ==========

; Space key: tap = space, hold = enable hyper layer
*Space::
    KeyWait, Space, T0.2  ; Wait for release up to 200ms
    if (ErrorLevel) {  ; If timeout (key still held)
        hyperSpaceActive := true
        KeyWait, Space  ; Wait for key release
        hyperSpaceActive := false
    } else {  ; If tapped
        Send, {Space}
    }
return

; Hyper + b = space
b::
    if (hyperSpaceActive) {
        Send, {Space}
    } else {
        Send, b
    }
return

; Navigation keys
i::
    if (hyperSpaceActive) {
        Send, {Up}
    } else {
        Send, i
    }
return

j::
    if (hyperSpaceActive) {
        Send, {Left}
    } else {
        Send, j
    }
return

k::
    if (hyperSpaceActive) {
        Send, {Down}
    } else {
        Send, k
    }
return

l::
    if (hyperSpaceActive) {
        Send, {Right}
    } else {
        Send, l
    }
return

p::
    if (hyperSpaceActive) {
        Send, {PgUp}
    } else {
        Send, p
    }
return

SC027::  ; Semicolon
    if (hyperSpaceActive) {
        Send, {PgDn}
    } else {
        Send, `;
    }
return

u::
    if (hyperSpaceActive) {
        Send, {Home}
    } else {
        Send, u
    }
return

o::
    if (hyperSpaceActive) {
        Send, {End}
    } else {
        Send, o
    }
return

; ========== HyperSpace Editing ==========

a::
    if (hyperSpaceActive) {
        Send, ^a  ; Ctrl+A (Select All)
    } else {
        Send, a
    }
return

x::
    if (hyperSpaceActive) {
        Send, ^x  ; Ctrl+X (Cut)
    } else {
        Send, x
    }
return

c::
    if (hyperSpaceActive) {
        Send, ^c  ; Ctrl+C (Copy)
    } else {
        Send, c
    }
return

v::
    if (hyperSpaceActive) {
        Send, ^v  ; Ctrl+V (Paste)
    } else {
        Send, v
    }
return

z::
    if (hyperSpaceActive) {
        if (GetKeyState("Shift")) {
            Send, ^y  ; Ctrl+Y (Redo - Windows standard, different from Mac)
        } else {
            Send, ^z  ; Ctrl+Z (Undo)
        }
    } else {
        Send, z
    }
return

; ========== HyperSpace Commands ==========

q::
    if (hyperSpaceActive) {
        Send, !{F4}  ; Alt+F4 (Quit application)
    } else {
        Send, q
    }
return

w::
    if (hyperSpaceActive) {
        Send, ^w  ; Ctrl+W (Close tab/window)
    } else {
        Send, w
    }
return

s::
    if (hyperSpaceActive) {
        Send, ^s  ; Ctrl+S (Save)
    } else {
        Send, s
    }
return

r::
    if (hyperSpaceActive) {
        Send, {F5}  ; F5 (Refresh in Windows)
    } else {
        Send, r
    }
return

f::
    if (hyperSpaceActive) {
        Send, ^f  ; Ctrl+F (Find)
    } else {
        Send, f
    }
return

t::
    if (hyperSpaceActive) {
        Send, ^t  ; Ctrl+T (New tab)
    } else {
        Send, t
    }
return

n::
    if (hyperSpaceActive) {
        Send, ^n  ; Ctrl+N (New window)
    } else {
        Send, n
    }
return
