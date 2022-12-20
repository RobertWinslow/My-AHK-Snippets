#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxHotkeysPerInterval 200

SetStoreCapslockMode, off



#PgUp::
  SoundSet +2
return

#PgDn::
  SoundSet -2
return

#Pause::Send {Media_Play_Pause}

Ins::Send {Media_Play_Pause}


Capslock::
    if( not GetKeyState("LButton" , "P") )
        Click down
return

Capslock Up::Click up




+Capslock::Send {MButton}

^`::send {BackSpace}



;Pinyin accents. alt+N for nth tone on preceding character. āáǎà

!1::
send {U+0304}
return

!2::
send {U+0301}
return

!3::
send {U+030C}
return

!4::
send {U+0300}
return

