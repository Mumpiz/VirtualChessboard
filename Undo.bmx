

Global UndoList:TList = New TList


Function AddUndoStep(board:TBoard)
	Local undoPiece:String[,] = New String[8,8]
	For Local y:Int = 7 To 0 Step -1
		For Local x:Int = 0 To 7
			If board.Square[x, y].Picked = True
				undoPiece[x, y] = board.Square[x, y].Piece + "-" ' Square is a picked Square
			Else
				undoPiece[x, y] = board.Square[x, y].Piece
			End If
		Next	
	Next
	UndoList.AddFirst(undoPiece)
End Function


Function LoadUndoStep:Int(board:TBoard)
	Local undoPiece:String[,] = New String[8,8]
	If UndoList.Count() > 1
		UndoList.RemoveFirst()
		undoPiece = String[,](UndoList.First())
		For Local y:Int = 7 To 0 Step -1
			For Local x:Int = 0 To 7
				If undoPiece[x, y].Contains("-")' Square was a picked Square
					board.Square[x, y].SetPicked()
					undoPiece[x, y] = Replace(undoPiece[x, y],"-","")
				Else
					board.Square[x, y].Picked = False
				End If
				board.Square[x, y].Piece = Int(undoPiece[x, y])
			Next	
		Next
	End If
End Function







