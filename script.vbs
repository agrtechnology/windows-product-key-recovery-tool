Set WshShell = CreateObject("WScript.Shell")MsgBox ConvertToKey(WshShell.RegRead("HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\DigitalProductId"))Function ConvertToKey(Key)Const KeyOffset = 52i = 28Chars = "BCDFGHJKMPQRTVWXY2346789"DoCur = 0x = 14DoCur = Cur * 256Cur = Key(x + KeyOffset) + CurKey(x + KeyOffset) = (Cur \ 24) And 255Cur = Cur Mod 24x = x -1Loop While x >= 0i = i -1KeyOutput = Mid(Chars, Cur + 1, 1) & KeyOutputIf (((29 - i) Mod 6) = 0) And (i <> -1) Theni = i -1KeyOutput = "-" & KeyOutputEnd IfLoop While i >= 0ConvertToKey = KeyOutputEnd Function
