# My AHK Snippets

Here are snippets of AutoHotKey code I *used to* have running on startup:

*Edit: The functions I previously used AHK for can now be done using [Microsoft Powertoys](https://learn.microsoft.com/en-us/windows/powertoys/). Combining diacritics are accessed in Powertoys using the `.` key.*

## Volume Control and Media pausing.

(Insert is also mapped to pause because I kept hitting it by accident when typing Backspace.)

```
#PgUp::
  SoundSet +2
return

#PgDn::
  SoundSet -2
return

#Pause::Send {Media_Play_Pause}

Ins::Send {Media_Play_Pause}
```


## Remap Caps Lock key to mouse click

```
Capslock::
    if( not GetKeyState("LButton" , "P") )
        Click down
return

Capslock Up::Click up
```

## Pinyin tone accents

Pinyin accents. alt+n for nth tone on preceding character. āáǎà

```
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
```


