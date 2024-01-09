'Star wars program
Dim x As VariantDim a As VariantDim t As VariantDim y As VariantDim w As VariantDim i As VariantDim score As IntegerDim left1, left2, left3, top1, top2, top3 As VariantDim backgr As Integer
Sub showfire()Timer2.Enabled = True
End Sub


Private Sub Command1_Click()Timer1.Enabled = TrueEnd Sub
Private Sub Command2_Click()w = 0Image1.Visible = TrueTimer1.Enabled = FalseLabel4(0).Visible = FalseLabel4(1).Visible = FalseLabel4(2).Visible = FalseLabel3.Caption = ""Image1.Move 360, 6360t = 0
End Sub
Private Sub Form_Click()Label5.Visible = FalseEnd Sub
Private Sub Form_Load()Randomize Timer

left1 = Int(Rnd * 7000) + 1000left2 = Int(Rnd * 7000) + 1000left3 = Int(Rnd * 7000) + 1000top1 = Int(Rnd * 5000) + 100top2 = Int(Rnd * 5000) + 100top3 = Int(Rnd * 5000) + 100

'To set the initial positions of the objectsImage2.Left = left1Image3.Left = left2Image4.Left = left3Image2.Top = top1Image3.Top = top2Image4.Top = top3w = 0score = 0Label7.Caption = Str$(score)End Sub
Private Sub Image7_Click()Label5.Visible = FalseEnd Sub
Private Sub Instruct_Click()Label5.Visible = TrueLabel5.Caption = "To play the game, you need to key in the velocity and the angle. The range of angle should be between 0 and 90 degree. After entering the above values, click launch to play. After every trial, you have to reset the game. After striking all the objects, press File menu and select new game to play again."End Sub
Private Sub mnuExit_Click()EndEnd Sub
Private Sub mnunew_Click()w = 0Randomize Timer
'To display all the objects again
left1 = Int(Rnd * 7000) + 1000left2 = Int(Rnd * 7000) + 1000left3 = Int(Rnd * 7000) + 1000top1 = Int(Rnd * 5000) + 100top2 = Int(Rnd * 5000) + 100top3 = Int(Rnd * 5000) + 100Image2.Left = left1Image3.Left = left2Image4.Left = left3Image2.Top = top1Image3.Top = top2Image4.Top = top3Image2.Visible = TrueImage3.Visible = TrueImage4.Visible = TrueImage1.Visible = TrueTimer1.Enabled = FalseLabel4(0).Visible = FalseLabel4(1).Visible = FalseLabel4(0).Visible = FalseLabel3.Caption = ""Image1.Move 360, 6360t = 0
End Sub
 
'To simulate rocket flight using projectile equation
Private Sub Timer1_Timer()
MMControl1.Command = "close"
If Image1.Left < 15000 And Image1.Top < 9000 Then
v = Val(Text1.Text)a = Val(Text2.Text)t = t + 1y = v * Sin(a * 3.141592654 / 180) * t - 4.9 * (t ^ 2)x = v * Cos(a * 3.141592654 / 180) * tImage1.Move Image1.Left + x, Image1.Top - yIf Image4.Visible = True And (Image1.Left < left3 + 240 And Image1.Left > left3 - 240) And (Image1.Top < top3 + 240 And Image1.Top > top3 - 240) Theni = 2Timer1.Enabled = FalseshowfireImage4.Visible = FalseImage1.Visible = FalseMMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Tito\VB program\audio\explosion.wav"
MMControl1.Command = "Open"MMControl1.Command = "Play"Label3.Caption = "You strike the satellite!"Label4(2).Left = left3 + 240Label4(2).Top = top3 + 240Label4(2).Visible = TrueImage5(2).Left = left3 + 240Image5(2).Top = top3 + 240score = score + 50
ElseIf Image3.Visible = True And (Image1.Left < left2 + 240 And Image1.Left > left2 - 240) And (Image1.Top < top2 + 240 And Image1.Top > top2 - 240) ThenTimer1.Enabled = Falsei = 1showfireImage3.Visible = FalseImage1.Visible = FalseMMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Tito\VB program\audio\explosion.wav"MMControl1.Command = "Open"MMControl1.Command = "Play"Label3.Caption = "You strike the rocket!"Label4(1).Left = left2 + 240Label4(1).Top = top2 + 240Label4(1).Visible = TrueImage5(1).Left = left2 + 240Image5(1).Top = top2 + 240score = score + 100
ElseIf Image2.Visible = True And (Image1.Left < left1 + 240 And Image1.Left > left1 - 240) And (Image1.Top < top1 + 240 And Image1.Top > top1 - 240) ThenTimer1.Enabled = Falsei = 0showfireImage2.Visible = False Image1.Visible = FalseMMControl1.Notify = FalseMMControl1.Wait = TrueMMControl1.Shareable = FalseMMControl1.DeviceType = "WaveAudio"MMControl1.FileName = "D:\Tito\VB program\audio\explosion.wav"MMControl1.Command = "Open"MMControl1.Command = "Play"Label3.Caption = "You strike the Saturn!"Label4(0).Left = left1 + 240Label4(0).Top = top1 + 240
End If
ElseLabel3.Caption = "You miss the target!"Timer1.Enabled = False
End If
Label7.Caption = Str$(score)
End Sub
Private Sub Timer2_Timer()w = w + 1If w < 30 ThenImage5(i).Visible = TrueLabel4(i).Visible = TrueElseImage5(i).Visible = FalseLabel4(i).Visible = FalseTimer2.Enabled = FalseEnd IfEnd Sub