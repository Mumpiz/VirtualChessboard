



Global Btn_New:TButton 		= TButton.Create(ImgButtonNew, 550, 20, 64, 32)
Global Btn_Load:TButton 		= TButton.Create(ImgButtonLoad, 620, 20, 64, 32)
Global Btn_Save:TButton 		= TButton.Create(ImgButtonSave, 690, 20, 64, 32)
Global Btn_Undo:TButton 		= TButton.Create(ImgButtonUndo, 620, 60, 64, 32)

Global Btn_RotateBoard:TButton 	= TButton.Create(ImgButtonRotateBoard, 620, 120, 64, 32)

Global Btn_DeletePiece:TButton 	= TButton.Create(ImgButtonDeletePiece, 620, 200, 64, 64)


Global Btn_AddWhitePawn:TButton 	= TButton.Create(ImgButtonAddWhitePawn, 580, 280, 64, 32)
Global Btn_AddWhiteRook:TButton 	= TButton.Create(ImgButtonAddWhiteRook, 580, 320, 64, 32)
Global Btn_AddWhiteKnight:TButton 	= TButton.Create(ImgButtonAddWhiteKnight, 580, 360, 64, 32)
Global Btn_AddWhiteBishop:TButton 	= TButton.Create(ImgButtonAddWhiteBishop, 580, 400, 64, 32)
Global Btn_AddWhiteQueen:TButton 	= TButton.Create(ImgButtonAddWhiteQueen, 580, 440, 64, 32)
Global Btn_AddWhiteKing:TButton 	= TButton.Create(ImgButtonAddWhiteKing, 580, 480, 64, 32)

Global Btn_AddBlackPawn:TButton 	= TButton.Create(ImgButtonAddBlackPawn, 660, 280, 64, 32)
Global Btn_AddBlackRook:TButton 	= TButton.Create(ImgButtonAddBlackRook, 660, 320, 64, 32)
Global Btn_AddBlackKnight:TButton 	= TButton.Create(ImgButtonAddBlackKnight, 660, 360, 64, 32)
Global Btn_AddBlackBishop:TButton 	= TButton.Create(ImgButtonAddBlackBishop, 660, 400, 64, 32)
Global Btn_AddBlackQueen:TButton 	= TButton.Create(ImgButtonAddBlackQueen, 660, 440, 64, 32)
Global Btn_AddBlackKing:TButton 	= TButton.Create(ImgButtonAddBlackKing, 660, 480, 64, 32)



Global AddPieceMode:Int = False

Function UpdateButtons(board:TBoard)

	' New Board
	If Btn_New.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			If Confirm("Do you want to create a new game?") = True
				board.LoadPieces("Default.dflt")
			End If
		End If
	End If

	' Load Board
	If Btn_Load.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.LoadPieces("chess.vcb")
		End If
	End If
	
	' Save Board
	If Btn_Save.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.SavePieces("chess.vcb")
		End If
	End If
	
	' Undo
	If Btn_Undo.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			LoadUndoStep:Int(board)
		End If
	End If


	' Rotate Board
	If Btn_RotateBoard.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.RotateBoard()
		End If
	End If
	
	
	' Delete Piece
	If Btn_DeletePiece.IsPressed()
		If board.MousePicked.Piece <> 99
			board.MousePicked.Piece = 99
			TSquare.SetAllUnpicked(board)
			AddPieceMode = False
		End If
	End If
	
	
	' Add White Pawn
	If Btn_AddWhitePawn.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 0 ' Picked piece is white pawn
			AddPieceMode = True
		End If
	End If
	' Add White Rook
	If Btn_AddWhiteRook.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 1 ' Picked piece is white rook
			AddPieceMode = True
		End If
	End If
	' Add White Knight
	If Btn_AddWhiteKnight.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 2 ' Picked piece is white knight
			AddPieceMode = True
		End If
	End If
	' Add White Bishop
	If Btn_AddWhiteBishop.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 3 ' Picked piece is white bishop
			AddPieceMode = True
		End If
	End If
	' Add White Queen
	If Btn_AddWhiteQueen.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 4 ' Picked piece is white queen
			AddPieceMode = True
		End If
	End If
	' Add White King
	If Btn_AddWhiteKing.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 5 ' Picked piece is white king
			AddPieceMode = True
		End If
	End If
	
	
	' Add Black Pawn
	If Btn_AddBlackPawn.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 6 ' Picked piece is black pawn
			AddPieceMode = True
		End If
	End If
	' Add Black Rook
	If Btn_AddBlackRook.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 7 ' Picked piece is black rook
			AddPieceMode = True
		End If
	End If
	' Add Black Knight
	If Btn_AddBlackKnight.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 8 ' Picked piece is black knight
			AddPieceMode = True
		End If
	End If
	' Add Black Bishop
	If Btn_AddBlackBishop.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 9 ' Picked piece is black bishop
			AddPieceMode = True
		End If
	End If
	' Add Black Queen
	If Btn_AddBlackQueen.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 10 ' Picked piece is black queen
			AddPieceMode = True
		End If
	End If
	' Add Black King
	If Btn_AddBlackKing.IsPressed()
		If board.MousePicked.Piece = 99 ' If no piece is picked
			board.MousePicked.Piece = 11 ' Picked piece is black king
			AddPieceMode = True
		End If
	End If






End Function


Function DrawButtons()

	DrawLine(550, 180, 754, 180)

	For Local button:TButton = EachIn TButton.ButtonList
		button.Draw()
	Next
	
End Function



