

Global LastPickedX1:Int = Null, LastPickedY1:Int = Null
Global LastPickedX2:Int = Null, LastPickedY2:Int = Null



Function UpdateLastMove(board:TBoard)

Function DrawLastMove(board:TBoard)
	If (LastPickedX1 <> Null And LastPickedY1 <> Null) And (LastPickedX2 <> Null And LastPickedY2 <> Null)
		SetColor(0, 250, 0)
		DrawLine(LastPickedX1, LastPickedY1, LastPickedX2, LastPickedY2)
		SetColor(255, 255, 255)
	End If
End Function
