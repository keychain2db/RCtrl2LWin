#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon
#UseHook

global RCtrlHeld := false
SetWinKeyState(state) {
    global RCtrlHeld
    RCtrlHeld := state
    Send state ? "{Blind}{LWin down}" : "{Blind}{LWin up}"
}

*RCtrl:: {
    SetWinKeyState(true)
}

*RCtrl up:: {
    SetWinKeyState(false)
}

#HotIf RCtrlHeld
*L:: {
    DllCall("LockWorkStation")
    SetWinKeyState(false)
}
#HotIf
