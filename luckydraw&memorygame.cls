'Program for lucky draw

Private Sub Command1_Click(Index As Integer)
Dim n As Integer
For n = 0 To 8
Command1(n).Caption = ""
Next
Randomize Timer
n = Int(Rnd * 9)
If Index = n Then
Command1(n).Caption = "Prize"
Else: Command1(n).Caption = "The Prize is here!"
End If

End Sub










'Program to create memory game

Sub check()
'check whether the pictures are the same or not
For i = 0 To 11
If Picture1(i).Visible = False Then
For j = 0 To 11
If Picture1(j).Visible = False Then
If i <> j And Image1(i).Tag = Image1(j).Tag Then
Image1(j).Visible = False
Image1(i).Visible = False
Picture1(j).Visible = False
Picture1(i).Visible = False
End If
If i <> j And Image1(i).Tag <> Image1(j).Tag And Image1(i).Visible = True And Image1(j).Visible = True Then
Picture1(j).Visible = True
Picture1(i).Visible = True
End If
End If

Next j

End If

Next i
 

End Sub


Private Sub picture1_Click(Index As Integer)
Picture1(Index).Visible = False
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
check
End Sub