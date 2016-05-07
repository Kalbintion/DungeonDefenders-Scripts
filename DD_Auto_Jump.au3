#include <Constants.au3>

; Author: Kalbintion
;   Desc: Repeatedly sends the spacebar key to the game Dungeon Defenders
;		  when it is the active window.

Local $winTitle = "Dungeon Defenders"
Local $isFound = false
Local $iCount = 0

AutoItSetOption("SendKeyDownDelay", 50)

Do
   waitForActiveWindow($winTitle)
   ConsoleWrite($iCount & @CRLF)
   Send("{SPACE}")
   Sleep(2000)
   $iCount = $iCount + 1
Until $iCount = 0

Func waitForActiveWindow($title)
   $isFound = false
   If WinGetTitle("[ACTIVE]") = $winTitle Then

   Else
	  ConsoleWrite("Waiting for active window: " & $winTitle & @CRLF)
	  Do
		 Local $winTitle = WinGetTitle("[ACTIVE]")
		 If $winTitle = $title Then
			$isFound = true
		 EndIf
	  Until $isFound = true
	  ConsoleWrite("Active window found: " & $winTitle & @CRLF)
   EndIf

EndFunc
