'Program to simulate a dice roll

Private Sub Command1_Click()
Randomize Timer
n = Int(1 + Rnd * 6)
For i = 0 To 6
Shape1(i).Visible = False
Next


If n = 1 Then
Shape1(3).Visible = True

End If


If n = 2 Then
Shape1(2).Visible = True
Shape1(4).Visible = True
End If

If n = 3 Then
Shape1(2).Visible = True
Shape1(3).Visible = True
Shape1(4).Visible = True
End If 
If n = 4 Then
Shape1(0).Visible = True
Shape1(2).Visible = True
Shape1(4).Visible = True
Shape1(6).Visible = True
End If


If n = 5 Then
Shape1(0).Visible = True
Shape1(2).Visible = True
Shape1(3).Visible = True
Shape1(4).Visible = True
Shape1(6).Visible = True

End If
If n = 6 Then
Shape1(0).Visible = True
Shape1(1).Visible = True
Shape1(2).Visible = True
Shape1(4).Visible = True
Shape1(5).Visible = True
Shape1(6).Visible = True

End If
End Sub







Dim char(25) As String

Dim I As Integer
Dim J As Integer

Private Sub Command1_Click()
char(0) = "A"
char(1) = "B"
char(2) = "C"
char(3) = "D"
char(4) = "E"
char(5) = "E"
char(6) = "G"
char(7) = "H"
char(8) = "I"
char(9) = "J"
char(10) = "K"
char(11) = "L"
char(12) = "M"
char(13) = "N"
char(14) = "O"
char(15) = "P"
char(16) = "Q"
char(17) = "R"
char(18) = "S"
char(19) = "T"
char(20) = "U"
char(21) = "V"
char(22) = "W"
char(23) = "X"
char(24) = "Y"
char(25) = "Z"

Randomize Timer
For I = 0 To 24
J = Int((Rnd * 26))
Next

End Sub