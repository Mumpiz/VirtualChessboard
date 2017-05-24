SuperStrict

Framework BRL.GLMax2D
Import BRL.StandardIO
Import BRL.PNGLoader
Import BRL.Retro

' modules which may be required:
' Import BRL.BMPLoader
' Import BRL.TGALoader
' Import BRL.JPGLoader


SetGraphicsDriver GLMax2DDriver()

AppTitle = "Virtual Chess Board v1.0     |   by Michael Frank"

Graphics 780,610,0
SetClsColor 180, 180, 180 '125, 75, 0




Include "Media.bmx"
Include "TBoard.bmx"
Include "TSquare.bmx"
Include "TPieces.bmx"
Include "Input.bmx"
Include "TButton.bmx"
Include "Buttons.bmx"
Include "Undo.bmx"
Include "CountCapturedPieces.bmx"


Local Board:TBoard = TBoard.Create()


Repeat

	Board.UpdateBoard()
	Board.DrawBoard(imgBoard)
	Board.DrawCoordinates()

	DrawButtons()
	CountCapturedPieces(board:TBoard)
	Board.DrawPieces(imgPieces)
	UpdateButtons(Board)
	UpdateInput()
	
	
Flip;Cls
If AppTerminate() Or KeyDown(KEY_ESCAPE)
	
	End
End If
Forever






