;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; - Taken from:
;   http://superuser.com/questions/241889/macbook-pro-windows-7-remap-cmd-key-to-ctrl-except-cmdtab-to-alttab
; - Quick cheatsheet:
;   #:win  ^:ctrl  !:alt  +:shift
; - To load it on startup put a link into the folder
;   C:\Users\...\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv
#SingleInstance force
SendMode Input
SetCapsLockState, alwaysoff

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Win+Tab fix ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; At the moment I didn't find a way to replicate CMD+SHIFT+TAB to cycle 
; in reverse order. I'm settling on using LWin+CapsLock to do the job
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LWin & Tab::AltTab
LWin & Esc::ShiftAltTab
;LWin & CapsLock::ShiftAltTab ; doesn't work reliably
;~CapsLock Up:: return
;*CapsLock Up::return
~LWin Up::return              ; Disable the annoying effect of showing windows menu

;;;;;;;;;;;;;;;;;;;;;;;;;; Common key remapping ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Some of these are provided by vmware so there's no need to replicate them
; here, apart from being scripted
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#r::Send ^r     ;reload
;#f::Send ^f    ; find inside apps
;#a::Send ^a    ; select all
;#s::Send ^s    ; save inside apps
#t::Send ^t     ; new tab in browser (IE, Safari, Firefox, etc)
#d::Send ^d     ; duplicate
!5::Send ~      ; Simulate Alt+5 in OSX
#n::Send ^n     ; New window in most apps
;#w::Send ^{f4}
#q::Send !{f4}

#Up::Send {PgUp} ; PgUp
#Down::Send {PgDn} ; PgDown

#Left::SendInput {home} ; Home
#Right::SendInput {end} ; End
#+Left::SendInput, +{Home} ; Shift-command left
#+Right::SendInput, +{End} ; Shift-command right

!Left::SendInput, ^{Left} ; Alt left
!Right::SendInput, ^{Right} ; Alt right
!+Left::SendInput, ^+{Left} ; Shift-alt left
!+Right::SendInput, ^+{Right} ; Shift-alt right

#LButton::SendEvent ^{Click}