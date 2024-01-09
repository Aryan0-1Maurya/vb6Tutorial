'Program for Slot Machine
Dim amount ,x, a, b, c As Integer

Private Sub Command1_Click()Timer1.Enabled = TrueMMControl1.Command = "Close"MMControl2.Command = "close"
x = 0Label2.Caption = "Your Credits"amount = Val(Text1)End Sub

Private Sub Form_Load()Label1.Caption = " Welcome to Play"Label3.Visible = FalseEnd Sub
Private Sub instruct_click()Label3.Visible = TrueEnd Sub
Private Sub Text1_Change()amount = Val(Text1)End Sub
Private Sub Timer1_Timer()If x < 500 ThenspinElseTimer1.Enabled = FalseMMControl1.Command = "Stop"Label1.Alignment = 2 
If (a = 3 And b = 3 And c <> 3) Or (a = 3 And c = 3 And b <> 3) Or (b = 3 And c = 3 And a <> 3) ThenLabel1.Caption = " You win 20 dollars"amount = amount + 20End If
If (a = 4 And b = 4 And c <> 4) Or (a = 4 And c = 4 And b <> 4) Or (b = 4 And c = 4 And a <> 4) ThenLabel1.Caption = " You win 30 dollars"amount = amount + 30End If

If (a = 5 And b = 5 And c <> 5) Or (a = 5 And c = 5 And b <> 5) Or (b = 5 And c = 5 And a <> 5) ThenLabel1.Caption = " You win 40 dollars"amount = amount + 40End If
If (a = 3 And b = 3 And c = 3) Or (a = 4 And b = 4 And c = 4) Or (a = 5 And b = 5 And c = 5) ThenMMControl2.Notify = FalseMMControl2.Wait = TrueMMControl2.Shareable = FalseMMControl2.DeviceType = "WaveAudio"MMControl2.FileName = "D:\Liew Folder\VB program\audio\endgame.wav"MMControl2.Command = "Open"MMControl2.Command = "Play"

Label1.Caption = " Congratulation! Jackpot!!! You win 200 dollars!"amount = amount + 200End If
If (a = 3 And b = 4 And c = 5) Or (a = 3 And b = 5 And c = 4) Or (a = 4 And b = 3 And c = 5)
Or (a = 4 And b = 5 And c = 3) Or (a = 5 And b = 4 And c = 3) Or (a = 5 And b = 3 And c = 4) Then
Label1.Caption = " Too bad, you lost 50 dollars"amount = amount - 50End If
If amount < 0 ThenLabel1.Caption = "Oh! you're bankrupt!"End IfText1.Text = Str$(amount)End IfEnd Sub
Sub spin( )
x = x + 10Randomize Timera = 3 + Int(Rnd * 3)b = 3 + Int(Rnd * 3)c = 3 + Int(Rnd * 3)

MMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Liew Folder\VB program\audio\slot2.wav"MMControl1.Command = "Open"MMControl1.Command = "Play"
Label1.Caption = "Good Luck!"Label1.Alignment = a - 3Shape1(0).Shape = aIf a = 3 ThenShape1(0).FillColor = &HFF00&End IfIf a = 4 ThenShape1(0).FillColor = &HFF00FFEnd IfIf a = 5 ThenShape1(0).FillColor = &HFF0000End If
Shape1(1).Shape = bIf b = 3 ThenShape1(1).FillColor = &HFF00&End IfIf b = 4 ThenShape1(1).FillColor = &HFF00FFEnd If
If b = 5 ThenShape1(1).FillColor = &HFF0000End If
Shape1(2).Shape = cIf c = 3 ThenShape1(2).FillColor = &HFF00&End IfIf c = 4 ThenShape1(2).FillColor = &HFF00FFEnd IfIf c = 5 ThenShape1(2).FillColor = &HFF0000End If
End Sub