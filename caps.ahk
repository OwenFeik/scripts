^Insert::Exitapp
Insert::Suspend

CapsLock::^#+Enter

#IfWinActive ahk_exe C:\Users\Owen Feik\AppData\Local\Programs\Microsoft VS Code\Code.exe ;VsCode
    RControl::^`
#IfWinActive ahk_exe C:\Program Files (x86)\Google\Chrome\Application\chrome.exe ;Chrome
    RControl::^Tab
    +RControl::^+Tab
#IfWinActive ahk_class MozillaWindowClass ;Firefox
    RControl::^Tab
    +RControl::^+Tab
#IfWinActive ahk_class Qt5QWindowIcon ;Fusion360
    RControl::Del
#IfWinActive ahk_class CabinetWClass ;Explorer
    RControl::Send, ^lcmd{Enter}
    +RControl::Send, ^lpowershell{Enter}
#IfWinActive ahk_class Windows.UI.Core.CoreWindow ;Cortana
    RControl::Esc
#IfWinActive
    RControl::#s
