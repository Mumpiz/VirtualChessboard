
' Pieces
	' 0 = White Pawn
	' 1 = White Rook
	' 2 = White Knight
	' 3 = White Bishop
	' 4 = White Queen
	' 5 = White King
	' 6 = Black Pawn
	' 7 = Black Rook
	' 8 = Black Knight
	' 9 = Black Bishop
	' 10 = Black Queen
	' 11 = Black King



Type TSquare

	Global ListPicked:TList = New TList

	Const SQUARE_SIZE:Int = 64 	' Size of a Square (64x64 px)
	Field x:Int, y:Int
	Field Color:Int ' 0 = White, 1 = Black
	Field Piece:Int ' 0 - 11
	Field Picked:Int = False
	
	Method DrawSquare(imgBoard:TImage)
		If Picked Then SetColor(180, 255, 180)
		DrawImage(imgBoard, x, y, Color)
		SetColor(255, 255, 255)
	End Method
	
	Method DrawPiece(imgPieces:TImage)
		If Piece <= 11 Then DrawImage(imgPieces, x, y, Piece)
	End Method
	
	Method MouseOver:Int()
		If (XMouse >= x And XMouse <= x + SQUARE_SIZE) And (YMouse >= y And YMouse <= y + SQUARE_SIZE)
			Return True
		End If
		Return False
	End Method
	
	Method MousePicked:Int(board:TBoard)
		If MouseOver() And Mouse1Hit
			If Piece <> 99 Or board.MousePicked.Piece <> 99
				If AddPieceMode = False
					SetPicked()
				Else
					AddPieceMode = False
				End If
			End If
			FlushMouse()
			Return True
		End If
		Return False
	End Method
	
	Method SetPicked()
		If ListPicked.Count() < 2 ' Maximum of two squares can be involved per move
			Picked = True
			ListPicked.AddFirst(Self)
		Else
			For Local last:TSquare = EachIn ListPicked
				last.Picked = False
			Next
			ListPicked.Clear()
			Picked = True
			ListPicked.AddFirst(Self)
		End If
	End Method
	
	Function SetAllUnpicked(board:TBoard)
		For Local y:Int = 7 To 0 Step -1
			For Local x:Int = 0 To 7
				board.Square[x, y].Picked = False
			Next
		Next
		TSquare.ListPicked.Clear()
	End Function

End Type






