; https://github.com/leewonz
; Free to use, modify, or redistribute

state := 0
Gosub ToggleState

Capslock & LShift::
    Gosub ToggleState
return

LShift & Capslock::
    Gosub ToggleState
return

*i::SendInput, {blind}{Up}
*k::SendInput, {blind}{Down}
*j::SendInput, {blind}{Left}
*l::SendInput, {blind}{Right}
*m::SendInput, {blind}{Home}
*,::SendInput, {blind}{PgUp}
*.::SendInput, {blind}{PgDn}
*/::SendInput, {blind}{End}
*o::SendInput, {blind}{BS}
*p::SendInput, {blind}{Del}
*u::SendInput, {blind}{Esc}
*g::SendInput, {blind}{RButton}
*h::SendInput, {blind}{LButton}
*b::SendInput, {blind}{MButton}

ToggleState:
if(state == 0) {
    state := 1

    ToolTip, Nav Mode ON, 0, 0
    SetTimer, RemoveTooltip, -600

    Hotkey, *i, On
    Hotkey, *k, On
    Hotkey, *j, On
    Hotkey, *l, On
    Hotkey, *m, On
    Hotkey, *`,, On
    Hotkey, *., On
    Hotkey, */, On
    Hotkey, *o, On
    Hotkey, *p, On
    Hotkey, *u, On
    Hotkey, *g, On
    Hotkey, *h, On
    Hotkey, *b, On
} else if (state == 1) {
    state := 0

    ToolTip, Nav Mode OFF, 0, 0
    SetTimer, RemoveTooltip, -600

    Hotkey, *i, Off
    Hotkey, *k, Off
    Hotkey, *j, Off
    Hotkey, *l, Off
    Hotkey, *m, Off
    Hotkey, *`,, Off
    Hotkey, *., Off
    Hotkey, */, Off
    Hotkey, *o, Off
    Hotkey, *p, Off
    Hotkey, *u, Off
    Hotkey, *g, Off
    Hotkey, *h, Off
    Hotkey, *b, Off
}
return

RemoveTooltip:
    ToolTip
return
