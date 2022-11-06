;---shortcuts for common hotkeys---
; ! = {alt}
; ^ = {ctrl}
; + = {shift}
; # = {windows_key}

;To do: Initialize them all, and then copy/paste them?
coordmode,mouse,screen					; COORDINATE MODE RELATIVE TO SCREEN.
settitlematchmode, 2
setkeydelay, 0, 0


;`::
;send, ^a
;sleep, 100
;send, ^c
;sleep, 100
;send, !{f4}
;sleep, 100
;send, {Right}{Enter}
;sleep, 100
;send, ^{End}
;sleep, 100
;send, {Enter 2}
;sleep, 100
;send, ^v
;return

;send, {Delete 2}
;sleep, 50
;send, ^h
;sleep, 50
;send, [
;sleep, 50
;send, !a
;sleep, 50
;send, +{Left}
;sleep, 50
;send, ]
;sleep, 50
;send, !a
;sleep, 50
;send, +{Left}
;sleep, 50
;send, y
;sleep, 50
;send, {Enter}
;sleep, 50
;send, {Escape}
;sleep, 50
;send, {Left}{Backspace}{Enter 2}
;return

Insert::
suspend
teggle := !teggle
tooltip % (teggle ? "EQ EDITOR SUSPENDED" : "EQ EDITOR UNSUSPENDED")
settimer,tooltipoff,500
return

+PrintScreen::
WinGet, pid, PID, A
tooltip, %pid%
settimer,tooltipoff,500
return

#If WinActive("Word") or WinActive("OneNote")

	Capslock::
	toggle := !toggle
	tooltip % "toggle: " (toggle ? "ON" : "OFF")
	settimer,tooltipoff,-500
	return

		#If toggle
		#i::
		toggle := false
		send, \iota{space}
		return
		
		^d::
		;keywait, Control
		;if GetKeyState(1,P) {
		;
		;}
		; this is supposed to send \dot, \ddot, or \dddot depending on whether or not 1, 2, or 3 is held down while control is released
		toggle := false
		send, \ddot{space 2}
		return
		
		!c::
		toggle := false
		send, {\}chi{space}
		return
		
		#+p::
		toggle := false
		send, {\}varpi{space}
		return
		
		!+p::
		toggle := false
		send, {\}varphi{space}
		return
		
		!+r::
		toggle := false
		send, {\}varrho{space}
		return
		
		+r::
		toggle := false
		send, {\}rho{space}
		return
		
		#t::
		toggle := false
		send, {\}Theta{space}
		return
		
		+z::
		toggle := false
		send, {\}zeta{space}
		return
		
		^i::
		toggle := false
		send, {\}in{space}
		return
		
		^e::
		toggle := false
		send, {\}exists{space}
		return
		
		^p::
		toggle := false
		send, {\}varphi{space}
		return
		
		#p::
		toggle := false
		send, {\}psi{space}
		return
		
		+n::
		toggle := false
		send, {\}nabla{space}
		return
		
		!e::
		toggle := false
		send, {\}varepsilon{space}
		return
		
		+k::
		toggle := false
		send, {\}bra{\}ket{space 2}{Left}
		return
		
		z::^z
		
		^c::
		toggle := false
		send, {\}coint{space}
		return
		
		~+Right::
		keywait, Shift
		toggle := false
		send, ^b^i{left}^b
		return
		
		~+Left::
		keywait, Shift
		toggle := false
		send, ^b^i{right}
		return
		
		+f::
		toggle := false
		send, {\}fraktur
		return

		!p::
		toggle := false
		send, {\}prod{space}
		return
		
		!+d::
		toggle := false
		send, {\}Delta{space}
		return
		
		+x::
		toggle := false
		send, {\}xi{space}
		return
		
		!t::
		toggle := false
		send, {\}tilde{space 2}
		return
		
		!d::
		toggle := false
		send, {\}delta{space}
		return
		
		+a::
		toggle := false
		send, {\}approx{space}
		return
		
		m::
		toggle := false
		send, {\}mu{space}
		return
		
		+p::
		toggle := false
		send, {\}phi{space}
		return
		
		v::
		toggle := false
		send, {\}vec{space 2}
		return
		
		+i::
		toggle := false
		send, {\}int{space}
		return

		^s::
		toggle := false
		send, {\}script
		return
		
		#s::
		toggle := false
		send, {\}script
		return

		+e::
		toggle := false
		send, {\}eta{space}
		return
		
		+c::
		toggle := false
		send, {\}cdot{space}
		return
		
		+o::
		toggle := false
		send, {\}Omega{space}
		return
		
		k::
		toggle := false
		send, {\}kappa{space}
		return

		+l::
		toggle := false
		send, {\}Lambda{space}
		return
		
		l::
		toggle := false
		send, {\}lambda{space}
		return
		
		f::
		toggle := false
		send, {\}forall{space}
		return
		
		e::
		toggle := false
		send, {\}epsilon{space}
		return
		
		!s::
		toggle := false
		send, {\}sum{space}
		return
		
		6::
		send, {^}
		keywait, Space, D
		toggle := false
		return
		
		-::
		toggle := false
		send, _
		;Input, UserInput,v,{Space}{=} ; if space or = is pressed, then toggle off
		;if ErrorLevel=EndKey:Space
		;{
		;	toggle := false
		;}
		;else if ErrorLevel=EndKey:=
		;{
		;	toggle := false
		;}
		return
		
		h::
		toggle := false
		send, {\}hat{space 2}
		return
		
		+s::
		toggle := false
		send, {\}sigma{space}
		return
		
		+b::
		toggle := false
		send, {\}bar{space 2}
		return
		
		+m::
		toggle := false
		send, {\}matrix{space}(&){Left}
		return
		
		s::
		toggle := false
		send, {\}sqrt{space}
		return
		
		+g::
		toggle := false
		send, {\}Gamma{space}
		return
		
		g::
		toggle := false
		send, {\}gamma{space}
		return
		
		n::
		toggle := false
		send, {\}norm{\}norm{space 2}{left}
		return
		
		t::
		toggle := false
		send, {\}theta{space}
		return
		
		b::
		toggle := false
		send, {\}beta{space}
		return
		
		a::
		toggle := false
		send, {\}alpha{space}
		return
		
		+t::
		toggle := false
		send, {\}times{Space}
		return
		
		i::
		toggle := false
		send, {\}infty{Space}
		return
		
		+d::
		toggle := false
		send, {\}double
		return
		
		d::
		toggle := false
		send, {\}partial{space}
		return
		
		r::
		toggle := false
		keywait, r
		if !getkeystate("l")
			send, {\}Rightarrow{space}
		else
			send, {Backspace}{\}Longleftrightarrow{space}
		return

		Up::
		toggle := false
		send, {\}above{space}
		return

		Down::
		toggle := false
		send, {\}below{space}
		return

		!o::
		toggle := false
		send, {\}open{space}
		return
		
		o::
		toggle := false
		send, {\}omega{space}
		return

		p::
		toggle := false
		send, {\}pi{space}
		return
		
		c::
		toggle := false
		send, {\}close{space 2}
		return
		
		+Backspace::
		toggle := false
		send, {Backspace 5}
		return
		
		Tab::
		toggle := false
		send, {space 10}
		return
		
		]::
		send, +{F10}
		sleep, 50
		toggle := false
		send, in
		return
		
		[::
		send, +{F10}
		sleep, 50
		toggle := false
		send, iu
		return
		
		=::
		toggle := false
		send, !=
		;Input, UserInput,v,{Space}{=} ; if space or = is pressed, then toggle off
		;if ErrorLevel=EndKey:Space
		;{
		;	toggle := false
		;}
		;else if ErrorLevel=EndKey:=
		;{
		;	toggle := false
		;}
		return
		
		9::
		toggle := false
		send, (
		return
		
		0::
		toggle := false
		send, )
		return
		
		`::
		toggle := false
		send, \
		return
		
		#If
#If

tooltipoff:
settimer,tooltipoff,off
tooltip
return
