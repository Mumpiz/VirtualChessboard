


Type TButton
	Field Image:TImage
	Field x:Int, y:Int
	Field w:Int, h:Int
	
	Global ButtonList:TList = New TList
	
	Function Create:TButton(img:TImage, x:Int, y:Int, w:Int, h:Int)
		Local b:TButton = New TButton
		b.Image = img
		b.x = x
		b.y = y
		b.w = w
		b.h = h
		TButton.ButtonList.AddLast(b)
		Return b
	End Function
	
	Method MouseOver:Int()
		If (XMouse >= x And XMouse <= x + w) And (YMouse >= y And YMouse <= y + h)
			Return True
		End If
		Return False
	End Method
	
	Method IsPressed:Int()
		If MouseOver() And Mouse1Hit
			FlushMouse()
			Return True
		End If
		Return False
	End Method
	
	Method Draw()
		If MouseOver()
			SetColor 255, 255, 220
		End If
		DrawImage(Image, x, y)
		SetColor 255, 255, 255
	End Method
	
	Method Update()
	
	End Method
End Type















