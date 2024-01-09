' Drawing pad program
Private Sub cmd_Rectangle_Click()x1 = Text1.Texty1 = Text2.Textx2 = Text3.Texty2 = Text4.TextPicture1.Line (x1, y1)-(x2, y2), color, BEnd Sub
Private Sub cmd_Color_Click()CommonDialog1.Flags = &H1&CommonDialog1.ShowColorcolor = CommonDialog1.color
End Sub
Private Sub cmd_Circle_Click()On Error GoTo addvaluesx3 = Text5.Texty3 = Text6.Textr = Text7.Text
Picture1.FillStyle = vbSolidPicture1.FillColor = colorPicture1.Circle (x3, y3), r, colorExit Sub
addvalues:MsgBox ("Please fill in the coordinates ,the radius and the color")
End Sub
Private Sub Command5_Click()Picture1.ClsEnd Sub
Private Sub cmd_SolidRect_Click()x1 = Text1.Texty1 = Text2.Textx2 = Text3.Texty2 = Text4.TextPicture1.Line (x1, y1)-(x2, y2), color, BFEnd Sub



'Picture viewer program
Private Sub Combo1_Change()'To list all graphics files or all filesIf ListIndex = 0 ThenFile1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")ElseFiel1.Pattern = ("*.*")End IfEnd Sub
Private Sub Dir1_Change()'To choose driveFile1.Path = Dir1.PathFile1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")End Sub
Private Sub Drive1_Change()Dir1.Path = Drive1.DriveEnd Sub
Private Sub File1_Click()'To select a fileIf Combo1.ListIndex = 0 ThenFile1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")ElseFile1.Pattern = ("*.*")End If
If Right(File1.Path, 1) <> "\" Thenfilenam = File1.Path + "\" + File1.FileNameElsefilenam = File1.Path + File1.FileNameEnd IfEnd SubPrivate Sub show_Click()'To show the selected graphics fileIf Right(File1.Path, 1) <> "\" Thenfilenam = File1.Path + "\" + File1.FileNameElsefilenam = File1.Path + File1.FileNameEnd IfPicture1.Picture = LoadPicture(filenam)End Sub