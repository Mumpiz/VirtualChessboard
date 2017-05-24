
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



Function CountCapturedPieces(board:TBoard)

	' Calculate

	Local whitePawnCount:Int
	Local whiteRookCount:Int
	Local whiteKnightCount:Int
	Local whiteBishopCount:Int
	Local whiteQueenCount:Int
	
	Local blackPawnCount:Int
	Local blackRookCount:Int
	Local blackKnightCount:Int
	Local blackBishopCount:Int
	Local blackQueenCount:Int
	
	Local maxPawns:Int = 8
	Local maxRooks:Int = 2
	Local maxKnights:Int = 2
	Local maxBishops:Int = 2
	Local maxQueens:Int = 1
	
	Local piece:Int
	For Local y:Int = 7 To 0 Step -1
		For Local x:Int = 0 To 7
			piece = board.Square[x, y].Piece
			
			Select piece
				Case 0 whitePawnCount = whitePawnCount + 1
				Case 1 whiteRookCount = whiteRookCount + 1
				Case 2 whiteKnightCount = whiteKnightCount + 1
				Case 3 whiteBishopCount = whiteBishopCount + 1
				Case 4 whiteQueenCount = whiteQueenCount + 1
				
				Case 6 blackPawnCount = blackPawnCount + 1
				Case 7 blackRookCount = blackRookCount + 1
				Case 8 blackKnightCount = blackKnightCount + 1
				Case 9 blackBishopCount = blackBishopCount + 1
				Case 10 blackQueenCount = blackQueenCount + 1
			End Select
		Next
	Next
	
	piece = board.MousePicked.Piece
	Select piece
		Case 0 whitePawnCount = whitePawnCount + 1
		Case 1 whiteRookCount = whiteRookCount + 1
		Case 2 whiteKnightCount = whiteKnightCount + 1
		Case 3 whiteBishopCount = whiteBishopCount + 1
		Case 4 whiteQueenCount = whiteQueenCount + 1
		
		Case 6 blackPawnCount = blackPawnCount + 1
		Case 7 blackRookCount = blackRookCount + 1
		Case 8 blackKnightCount = blackKnightCount + 1
		Case 9 blackBishopCount = blackBishopCount + 1
		Case 10 blackQueenCount = blackQueenCount + 1
	End Select


	
	Local capturedWhitePawns:Int = maxPawns - whitePawnCount
	Local capturedWhiteRooks:Int = maxRooks - whiteRookCount
	Local capturedWhiteKnights:Int = maxKnights - whiteKnightCount
	Local capturedWhiteBishops:Int = maxBishops - whiteBishopCount
	Local capturedWhiteQueens:Int = maxQueens - whiteQueenCount
	
	Local capturedBlackPawns:Int = maxPawns - blackPawnCount
	Local capturedBlackRooks:Int = maxRooks - blackRookCount
	Local capturedBlackKnights:Int = maxKnights - blackKnightCount
	Local capturedBlackBishops:Int = maxBishops - blackBishopCount
	Local capturedBlackQueens:Int = maxQueens - blackQueenCount

	
	
	' Draw
	SetColor(110, 110, 110)
	DrawRect(70, 534, 380, 70)
	SetColor(255, 255, 225)
	
	'White Pawn
	SetScale(0.6, 0.6)
	DrawImage(imgPieces, 80, 560, 0)
	DrawImage(imgPieces, 112, 560, 1)
	DrawImage(imgPieces, 144, 560, 2)
	DrawImage(imgPieces, 176, 560, 3)
	DrawImage(imgPieces, 208, 560, 4)
	
	DrawImage(imgPieces, 272, 560, 6)
	DrawImage(imgPieces, 304, 560, 7)
	DrawImage(imgPieces, 336, 560, 8)
	DrawImage(imgPieces, 368, 560, 9)
	DrawImage(imgPieces, 400, 560, 10)
	
	SetScale(1, 1)
	
	
	If capturedWhitePawns >= 0 Then DrawText(capturedWhitePawns, 95, 540) Else DrawText("0", 95, 540)
	If capturedWhiteRooks >= 0 Then DrawText(capturedWhiteRooks, 127, 540) Else DrawText("0", 127, 540)
	If capturedWhiteKnights >= 0 Then DrawText(capturedWhiteKnights, 159, 540) Else DrawText("0", 159, 540)
	If capturedWhiteBishops >= 0 Then DrawText(capturedWhiteBishops, 191, 540) Else DrawText("0", 191, 540)
	If capturedWhiteQueens >= 0 Then DrawText(capturedWhiteQueens, 223, 540) Else DrawText("0", 223, 540)
	
	If capturedBlackPawns >= 0 Then DrawText(capturedBlackPawns, 287, 540) Else DrawText("0", 287, 540)
	If capturedBlackRooks >= 0 Then DrawText(capturedBlackRooks, 319, 540) Else DrawText("0", 319, 540)
	If capturedBlackKnights >= 0 Then DrawText(capturedBlackKnights, 351, 540) Else DrawText("0", 351, 540)
	If capturedBlackBishops >= 0 Then DrawText(capturedBlackBishops, 383, 540) Else DrawText("0", 383, 540)
	If capturedBlackQueens >= 0 Then DrawText(capturedBlackQueens, 415, 540) Else DrawText("0", 415, 540)

End Function















