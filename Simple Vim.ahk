/**
 * ******************** Simple Vim ********************
 * 
 * 이 프로그램은 Vim의 h, j, k, l로 커서를 이동하는 방식을
 * 일반 환경에서 편리하게 사용하기 위해 개발된 프로그램입니다.
 * 
 * 원래 Vim의 커서 이동 조작키보다 w, a, s, d와 유사한 형태인
 * i, j, k, l 키가 더 익숙하기 때문에 단축키에 수정이 있었습니다.
 * 
 *     [i]
 * [j] [k] [l]
 * 
 * [단축키]
 * Alt + i: 윗쪽 화살표
 * Alt + j: 왼쪽 화살표
 * Alt + k: 아랫쪽 화살표
 * Alt + l: 오른쪽 화살표
 * 
 * Alt + Ctrl + i: 윗쪽 화살표 x 2
 * Alt + Ctrl + j: 왼쪽 화살표 x 2
 * Alt + Ctrl + k: 아랫쪽 화살표 x 2
 * Alt + Ctrl + l: 오른쪽 화살표 x 2
 * 
 * Alt + Esc: 프로그램 종료
 * Alt + `: 프로그램 실행 표시
*/

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Alt + i
!i::
    Send, {Up}
    Return
; Alt + j
!j::
    send, {Left}
    Return
; Alt + k
!k::
    send, {Down}
    Return
; Alt + l
!l::
    send, {Right}
    Return

; Alt + Ctrl + i
!^i::
    Send, {Up}
    Send, {Up}
    Return
; Alt + Ctrl + j
!^j::
    send, {Left}
    send, {Left}
    Return
; Alt + Ctrl + k
!^k::
    send, {Down}
    send, {Down}
    Return
; Alt + Ctrl + l
!^l::
    send, {Right}
    send, {Right}
    Return

; Alt + `
!`::
    MsgBox, 0, Simple Vim, Simple Vim process is working., 5
    Return
; Alt + Esc
!Esc::
    MsgBox, 0, Simple Vim, Simple Vim was closed., 5
    ExitApp
