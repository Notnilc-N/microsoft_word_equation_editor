;---shortcuts for common hotkeys---
; ! = {alt}
; ^ = {ctrl}
; + = {shift}
; # = {windows_key}

;Initialize them all, and then copy/paste them.
coordmode,mouse,screen					; COORDINATE MODE RELATIVE TO SCREEN.
settitlematchmode, 2
setkeydelay, 0, 0

Insert::
suspend
toggle := !toggle
tooltip % (toggle ? "SUSPENDED" : "UNSUSPENDED")
settimer,tooltipoff,500
return



;Insert::
;WinGet, pid, PID, A
;tooltip, %pid%
;settimer,tooltipoff,500
;return

#If WinActive("Word") or WinActive("OneNote")

	Capslock::
	toggle := !toggle
	tooltip % "toggle: " (toggle ? "ON" : "OFF")
	settimer,tooltipoff,-500
	return

		#If toggle
		z::
		send, +{Left}^b^i{Right}
		toggle := !toggle
		return
		
		v::
		send, {\}vec{space 2}
		toggle := !toggle
		return
		
		+i::
		send, {\}int{space}
		toggle := !toggle
		return

		^s::
		send, {\}script
		toggle := !toggle
		return

		+e::
		send, {\}equiv{space}
		toggle := !toggle
		return
		
		+c::
		send, {\}cdot{space}
		toggle := !toggle
		return
		
		+o::
		send, {\}Omega{space}
		toggle := !toggle
		return
		
		k::
		send, {\}kappa{space}
		toggle := !toggle
		return

		+l::
		send, {\}Lambda{space}
		toggle := !toggle
		return
		
		l::
		send, {\}lambda{space}
		toggle := !toggle
		return
		
		f::
		send, {\}forall{space}
		toggle := !toggle
		return
		
		e::
		send, {\}epsilon{space}
		toggle := !toggle
		return
		
		!s::
		send, {\}sum{space}
		toggle := !toggle
		return
		
		6::
		send, {^}
		toggle := !toggle
		return
		
		-::
		send, _
		toggle := !toggle
		return
		
		h::
		send, {\}hat{space 2}
		toggle := !toggle
		return
		
		+s::
		send, {\}sigma{space}
		toggle := !toggle
		return
		
		+b::
		send, {\}bar{space 2}
		toggle := !toggle
		return
		
		m::
		send, {\}matrix{space}(&){Left}
		toggle := !toggle
		return
		
		s::
		send, {\}sqrt{space}
		toggle := !toggle
		return
		
		+g::
		send, {\}Gamma{space}
		toggle := !toggle
		return
		
		g::
		send, {\}gamma{space}
		toggle := !toggle
		return
		
		n::
		send, {\}nabla{space}
		toggle := !toggle
		return
		
		t::
		send, {\}theta{space}
		toggle := !toggle
		return
		
		b::
		send, {\}beta{space}
		toggle := !toggle
		return
		
		a::
		send, {\}alpha{space}
		toggle := !toggle
		return
		
		+t::
		send, {\}therefore{Space}
		toggle := !toggle
		return
		
		i::
		send, {\}infty{Space}
		toggle := !toggle
		return
		
		+d::
		send, {\}double
		toggle := !toggle
		return
		
		d::
		send, {\}partial{space}
		toggle := !toggle
		return
		
		r::
		send, {\}Rightarrow{space}
		toggle := !toggle
		return

		Up::
		send, {\}above{space}
		toggle := !toggle
		return

		Down::
		send, {\}below{space}
		toggle := !toggle
		return

		!o::
		send, {\}open{space}
		toggle := !toggle
		return
		
		o::
		send, {\}omega{space}
		toggle := !toggle
		return

		p::
		send, {\}pi{space}
		toggle := !toggle
		return
		
		c::
		send, {\}close{space 2}
		toggle := !toggle
		return
		
		+Backspace::
		send, {Backspace 5}
		toggle := !toggle
		return
		
		Tab::
		send, {space 10}
		toggle := !toggle
		return
		
		]::
		send, +{F10}
		sleep, 50
		send, in
		toggle := !toggle
		return
		
		[::
		send, +{F10}
		sleep, 50
		send, iu
		toggle := !toggle
		return
		
		=::
		send, {+}
		toggle := !toggle
		return
		
		9::
		send, (
		toggle := !toggle
		return
		
		0::
		send, )
		toggle := !toggle
		return
		
		`::
		send, ^b!hfc
		mousemove, 630, 425
		toggle := !toggle
		return
		
		#If
#If

tooltipoff:
settimer,tooltipoff,off
tooltip
return

#If WinActive("ahk_pid" . 9268) or WinActive("PotPlayer") or WinActive("Photos")
`::
;send, {down}
;sleep, 100
;send, {enter}
;sleep, 100

global loopcount

send, {alt}
sleep, 50
send, v
sleep, %loopcount%
send, l{down}{right}
sleep, %loopcount%
send, {Enter}
;sleep, 100
;send, {alt down}{up}{alt up}
return
;_____________________________________________________________________________________________________________
w::Up
a::left
s::down
d::right
^w::^w
^s::^s
!d::!d
#d::#d
#+s::#+s

#esc::
send, {Delete}
return

!Capslock::
send, {Enter}
return

#Capslock::
send, {Enter}
return

!+s::
send, {pgdn}
return

!+w::
send, {pgup}
return

!+a::
send, {home}
return

!+d::
send, {end}
return
#if