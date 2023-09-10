
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [ autoHokey 문법 정리 ]
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift
; &: 두개의 키 조합
; send는 한문자 일일이 타이핑하게 되고 (속도가 느리고)
; sendinput은 복사하여 붙여넣는 스피드로 (속도가 빠르다)
; { } 안에는 특정 키를 누르게 되며, { } 없는 것은 문자열로 인식하게 되어 타이핑 쳐지게 된다.
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#SingleInstance, Force             ; 하나의 프로세스만 실행되도록 함
SendMode Input                     ; 모든 SendMode를 SendInput으로 설정함
SetWorkingDir, %A_ScriptDir%       ; 프로그램 실행 공간 설정

; 기본 capslock기능을 꺼둠
SetCapsLockState, AlwaysOff

; capslock + c 키로 기본 capslock를 키고 끔
Capslock & c::Capslock

;--------------------------------------------------------------------------------------------------
; [ 캡스락 키를 누르고 있을 때 ]
#If GetKeyState("Capslock","P")

; ---- 코딩 기능 ----
; 방향키 ijkl
i::Up
j::Left
k::Down
l::Right

; 캡스락 + uo : 단어 건너뛰는 이동
u::^Left
o::^Right

; 캡스락 + Enter : 커서를 끝까지 옮기지 않고 그 자리에서 바로 엔터처리
Enter::^Enter

; ---- 디자인 기능 ----
; 캡스락 + s : Backspace
s::BackSpace
; 캡스락 + d : Delete
d::Del

; 캡스락 + Space : 한/영 단축키
Space::
    Send, {vk15sc138}
return

; 캡스락 + Esc : 프로그램 종료
Esc::
    MsgBox, 0, KeyFunc, KeyFunc was closed., 5
    ExitApp

#If
;--------------------------------------------------------------------------------------------------