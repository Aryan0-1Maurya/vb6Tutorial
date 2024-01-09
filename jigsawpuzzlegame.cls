'Program to create a simple Jigsaw puzzle
'To be able to drag and drop an object, we need to use the DragDrop method.
Dim	imgindex As IntegerDim imgtag As String
Private Sub Image1_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
imgtag = Source.Tagimgindex = IndexSelect Case imgindex
Case 0If imgtag = "11" ThenImage1(0).Picture = Image1(9).Picture Source.Visible = FalseElseSource.Visible = TrueEnd If
Case 1
If imgtag = "12" ThenImage1(1).Picture = Image1(10).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 2
If imgtag = 13 ThenImage1(2).Picture = Image1(11).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 3If imgtag = 21 ThenImage1(3).Picture = Image1(12).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 4
If imgtag = 22 ThenImage1(4).Picture = Image1(13).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 5If imgtag = 23 ThenImage1(5).Picture = Image1(14).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 6If imgtag = 31 ThenImage1(6).Picture = Image1(15).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 7
If imgtag = 32 ThenImage1(7).Picture = Image1(16).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
Case 8
If imgtag = 33 ThenImage1(8).Picture = Image1(17).PictureSource.Visible = FalseElseSource.Visible = TrueEnd If
End Select
End Sub