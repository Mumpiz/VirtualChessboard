

Global XMouse:Int, YMouse:Int
Global Mouse1Hit:Int, Mouse2Hit:Int


Function UpdateInput()
	XMouse = MouseX()
	YMouse = MouseY()
	Mouse1Hit = MouseHit(1)
	Mouse2Hit = MouseHit(2)
End Function
