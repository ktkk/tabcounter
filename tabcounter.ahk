Count := 0

~TAB::   ;Default behavior is to block keystroke, ~ allows it to pass through 
  Count := Count + 1
  Filelocation = %A_ScriptDir%\TabCounter.txt
  FileRead, Contents, %Filelocation%
  file := FileOpen(Filelocation, "w")
  file.close()
  New = Tabs pressed: %Count%
  FileAppend, %New%, %A_ScriptDir%\TabCounter.txt
  KeyWait, TAB  ;Wait for Tab to be released
return
