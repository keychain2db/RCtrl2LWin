#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon
#UseHook

global RCtrlHeld := false

*RCtrl:: {
    global RCtrlHeld
    RCtrlHeld := true
    Send "{Blind}{LWin down}"
}

*RCtrl up:: {
    global RCtrlHeld
    RCtrlHeld := false
    Send "{Blind}{LWin up}"
}

#HotIf RCtrlHeld
*L:: {
    ; Send "{Blind}{LWin up}"
    DllCall("LockWorkStation")
}
#HotIf
