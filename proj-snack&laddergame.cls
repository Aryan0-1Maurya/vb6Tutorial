'Snake and ladder program
Option Base 1Dim c(10) As VariantDim r(10) As Variant
Dim x As IntegerDim m As IntegerDim n As IntegerDim num As IntegerDim totalnum As SingleDim totalnum1 As SingleDim player As IntegerDim t As Integer

Private Sub Command2_Click()'To move the chess pieces to the original positionImage1(0).Move 10200, 5520Image1(1).Move 10200, 6480totalnum = 0totalnum1 = 0Label2.Caption = ""MMControl1.Command = "close"End Sub
Private Sub Command3_Click()EndEnd Sub
Private Sub Form_Load()' To assign the column and row coordinates to all the boxes
c(1) = 600r(1) = 8200For i = 1 To 9c(i + 1) = c(i) + 800
NextFor j = 1 To 9r(j + 1) = r(j) - 800NextEnd Sub

'To initiate the rolling of dicePrivate Sub roll()x = x + 10Randomize Timern = Int(1 + Rnd * 6)For i = 0 To 6Shape1(i).Visible = FalseNextIf n = 1 ThenShape1(3).Visible = TrueShape2.FillColor = &HC0C0C0
End IfIf n = 2 ThenShape1(2).Visible = TrueShape1(4).Visible = TrueShape2.FillColor = &H8080FFEnd IfIf n = 3 ThenShape1(2).Visible = TrueShape1(3).Visible = TrueShape1(4).Visible = TrueShape2.FillColor = &H80FF&End IfIf n = 4 ThenShape1(0).Visible = TrueShape1(2).Visible = TrueShape1(4).Visible = TrueShape1(6).Visible = TrueShape2.FillColor = &HFFFF00End IfIf n = 5 ThenShape1(0).Visible = TrueShape1(2).Visible = TrueShape1(3).Visible = TrueShape1(4).Visible = TrueShape1(6).Visible = TrueShape2.FillColor = &HFFFF&End IfIf n = 6 ThenShape1(0).Visible = TrueShape1(1).Visible = TrueShape1(2).Visible = TrueShape1(4).Visible = TrueShape1(5).Visible = TrueShape1(6).Visible = TrueShape2.FillColor = &HFF00FFEnd IfEnd SubPrivate Sub Command1_Click(Index As Integer)'To indentify which player click the roll dice commandIf Index = 0 Thenplayer = 1End IfIf Index = 1 Thenplayer = 2End If
Timer1.Enabled = Truex = 0End Sub
Private Sub Timer1_Timer()If x < 100 ThenCall rollElse
Timer1.Enabled = False
'To check the number on the dice
If Shape1(3).Visible = True Thennum = 1End If
If (Shape1(2).Visible = True) And (Shape1(4).Visible = True) Thennum = 2End If
If (Shape1(2).Visible = True) And (Shape1(3).Visible = True) And (Shape1(4).Visible = True) Thennum = 3End If
If (Shape1(0).Visible = True) And (Shape1(2).Visible = True) And (Shape1(4).Visible = True) And (Shape1(6).Visible = True) Thennum = 4End If

If (Shape1(0).Visible = True) And (Shape1(2).Visible = True) And (Shape1(3).Visible = True) And (Shape1(4).Visible = True) And (Shape1(6).Visible = True) Thennum = 5End If

If (Shape1(0).Visible = True) And (Shape1(1).Visible = True) And (Shape1(2).Visible = True) And (Shape1(4).Visible = True) And (Shape1(5).Visible = True) Then
num = 6
End If'To move player 1 according to the total score of the dice
'Movement across colum1 to column 10 and row 1 to row 10
If player = 1 Then
totalnum = totalnum + numIf totalnum < 11 ThenImage1(0).Move c(totalnum), r(1)If totalnum = 10 ThenImage1(0).Move c(8), r(3)totalnum = 28End If
End If
If totalnum > 10 And totalnum < 21 ThenImage1(0).Move c(21 - totalnum), r(2)If totalnum = 17 ThenImage1(0).Move c(4), r(4)totalnum = 37End IfEnd IfIf totalnum > 20 And totalnum < 31 ThenImage1(0).Move c(totalnum - 20), r(3)End IfIf totalnum > 30 And totalnum < 41 ThenImage1(0).Move c(41 - totalnum), r(4)If totalnum = 34 ThenImage1(0).Move c(5), r(2)totalnum = 16End IfIf totalnum = 31 ThenImage1(0).Move c(10), r(7)totalnum = 70End IfEnd If

If totalnum > 40 And totalnum < 51 ThenImage1(0).Move c(totalnum - 40), r(5)If totalnum = 45 ThenImage1(0).Move c(4), r(9)totalnum = 84End IfIf totalnum = 44 ThenImage1(0).Move c(1), r(3)totalnum = 21End If
End If
If totalnum > 50 And totalnum < 61 ThenImage1(0).Move c(61 - totalnum), r(6)End IfIf totalnum > 60 And totalnum < 71 ThenImage1(0).Move c(totalnum - 60), r(7)If totalnum = 68 ThenImage1(0).Move c(8), r(5)totalnum = 48End IfEnd If
If totalnum > 70 And totalnum < 81 ThenImage1(0).Move c(81 - totalnum), r(8)If totalnum = 79 ThenImage1(0).Move c(2), r(6)totalnum = 59End IfIf totalnum = 78 ThenImage1(0).Move c(4), r(10)totalnum = 97End IfEnd If
If totalnum > 80 And totalnum < 91 ThenImage1(0).Move c(totalnum - 80), r(9)End IfIf totalnum > 90 And totalnum < 101 ThenImage1(0).Move c(101 - totalnum), r(10)If totalnum = 95 ThenImage1(0).Move c(8), r(8)totalnum = 73End IfEnd If
If totalnum > 100 Or totalnum = 100 ThenImage1(0).Move c(1), r(10)End If
End If
'To move player 2 according to the total score of the dice
If player = 2 Thentotalnum1 = totalnum1 + numIf totalnum1 < 11 ThenImage1(1).Move c(totalnum1), r(1)If totalnum1 = 10 ThenImage1(1).Move c(8), r(3)totalnum1 = 28End IfEnd IfIf totalnum1 > 10 And totalnum1 < 21 ThenImage1(1).Move c(21 - totalnum1), r(2)If totalnum1 = 17 ThenImage1(1).Move c(4), r(4)totalnum1 = 37End IfEnd IfIf totalnum1 > 20 And totalnum1 < 31 ThenImage1(1).Move c(totalnum1 - 20), r(3)End IfIf totalnum1 > 30 And totalnum1 < 41 ThenImage1(1).Move c(41 - totalnum1), r(4)If totalnum1 = 34 ThenImage1(1).Move c(5), r(2)totalnum1 = 16End IfIf totalnum1 = 31 ThenImage1(1).Move c(10), r(7)totalnum1 = 70End IfEnd If
If totalnum1 > 40 And totalnum1 < 51 ThenImage1(1).Move c(totalnum1 - 40), r(5)If totalnum1 = 45 ThenImage1(1).Move c(4), r(9)totalnum1 = 84End IfIf totalnum1 = 44 ThenImage1(1).Move c(1), r(3)totalnum1 = 21End IfEnd If
If totalnum1 > 50 And totalnum1 < 61 ThenImage1(1).Move c(61 - totalnum1), r(6)End IfIf totalnum1 > 60 And totalnum1 < 71 ThenImage1(1).Move c(totalnum1 - 60), r(7)If totalnum1 = 68 ThenImage1(1).Move c(8), r(5)totalnum1 = 48End IfEnd IfIf totalnum1 > 70 And totalnum1 < 81 ThenImage1(1).Move c(81 - totalnum1), r(8)If totalnum1 = 79 ThenImage1(1).Move c(2), r(6)totalnum1 = 59End IfIf totalnum1 = 78 ThenImage1(1).Move c(4), r(10)totalnum1 = 97End IfEnd IfIf totalnum1 > 80 And totalnum1 < 91 ThenImage1(1).Move c(totalnum1 - 80), r(9)End IfIf totalnum1 > 90 And totalnum1 < 101 ThenImage1(1).Move c(101 - totalnum1), r(10)If totalnum1 = 95 ThenImage1(1).Move c(8), r(8)totalnum1 = 73End IfEnd IfIf totalnum1 > 100 Or totalnum1 = 100 ThenImage1(1).Move c(1), r(10)End If
End If

'To play the applause sound when any one player reach 100

If (totalnum > 100 Or totalnum = 100) And totalnum1 < 100 ThenLabel2.Caption = "Player 1 Wins"MMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Liew Folder\VB program\audio\applause.wav"MMControl1.Command = "Open"MMControl1.Command = "Play"
End IfIf (totalnum1 > 100 Or totalnum1 = 100) And totalnum < 100 ThenLabel2.Caption = "Player 2 Wins"MMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Liew Folder\VB program\audio\applause.wav"MMControl1.Command = "Open"MMControl1.Command = "Play"
End If
End If
End Sub
Private Sub Timer2_Timer()delayIf t < 1000 ThenElseTimer2.Enabled = FalseEnd If
End Sub
Sub delay()t = t + 1
End Sub