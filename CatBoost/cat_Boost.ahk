/*
================================================================================
Project Name: cat Boost
Version: v1.0.0
Date: 2026/04/22
Author: Payton Lin
Email: paytonljs.mm324@gmail.com
Descript:
To play the "Bongo Cat" game, you can download it from Steam.
This is a simple script to speed up the accumulation of hits in the game Bongo Cat.
Each hit grants a 50x multiplier to the hit count, but this only applies to hitting the A through Z keys.
A simple delay is included to prevent the game from detecting hits too quickly and not counting them.
A section is also included to address the issue of the shift key. To try it out, press F1 to start the game!

Statement
1. Prohibition of Illegal Use: This code is for technical exchange and reference only. It is strictly prohibited to use this script for any purpose that violates the online service user agreement. unfair competition, or disruption. Any form of illegal cheating is discouraged.
2. Risks of Use: Users assume all risks arising from executing this script, including but not limited to: account bans or system instability. The developer is not liable for any losses resulting from the use of this program.
3. Licensing and Distribution: This project is provided "as is". Please retain the integrity of this disclaimer when citing it.
================================================================================
*/

#Requires AutoHotkey v2.0

; Setting output mode and frequency limit (Avoid counter crush)
SendMode "Event"
SetKeyDelay 15, 15
; Increase the spacing between keys to prevent the system from detecting malicious input and stopping the count.

Global TurboMode := false

; --- On/Off：push F1 ---

F1:: {
    Global TurboMode := !TurboMode
    if (TurboMode) {
        ;
        SoundBeep(800, 300)
        TrayTip "Bongo mode on"
    } else {
        SoundBeep(400, 300)
        TrayTip "Bongo mode off"
    }
}

; Stop：Esc
Esc:: ExitApp()


#HotIf TurboMode

~a::
~b::
~c::
~d::
~e::
~f::
~g::
~h::
~i::
~j::
~k::
~l::
~m::
~n::
~o::
~p::
~q::
~r::
~s::
~t::
~u::
~v::
~w::
~x::
~y::
~z:: {
    ; Add Blind，AHK should not interfere with your Shift key state.
    Loop 50 {
        ; Avoid the locking side effects of Scroll Lock
        Send "{Blind}{F13 down}"
        Sleep 1
        Send "{Blind}{F13 up}"
        Sleep 1
    }
}

#HotIf