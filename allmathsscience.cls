'Program for applying sin rule
Private Sub Cal_Click()Dim A, B, l, X, Y, d As SingleA = Val(Txt_angleA.Text)B = Val(Txt_angleB.Text)l = Val(Txt_sideA.Text)
'To convert the angle to radian X = (3.14159 / 180) * AY = (3.14159 / 180) * B
d = l * Sin(X) / Sin(Y)
'To correct the answer to two decimal placesLbl_Answer.Caption = Str(Format(d, "0.00"))
End Sub





'Program to compute equations with two variables using substitution method
Private Sub Command1_Click()Dim a, b, c, d, m, n As IntegerDim x1, x2, y1, y2 As Double
a = Val(Txt_a.Text)b = Val(Txt_b.Text)m = Val(Txt_m.Text)c = Val(Txt_c.Text)d = Val(Txt_d.Text)n = Val(Txt_n.Text)x1 = (m * a * d + Sqr(m ^ 2 * a ^ 2 * d ^ 2 - (b ^ 2 * c + a ^ 2 * d) * (d * m ^ 2 - b ^ 2 * n))) / (b ^ 2 * c + a ^ 2 * d)
x2 = (m * a * d - Sqr(m ^ 2 * a ^ 2 * d ^ 2 - (b ^ 2 * c + a ^ 2 * d) * (d * m ^ 2 - b ^ 2 * n))) / (b ^ 2 * c + a ^ 2 * d)
y1 = (m - a * x1) / by2 = (m - a * x2) / bLbl_x1.Caption = Round(x1, 2)Lbl_y1.Caption = Round(y1, 2)Lbl_x2.Caption = Round(x2, 2)Lbl_y2.Caption = Round(y2, 2)
End Sub







'Following code can be used to compute simultaneous equations with two variables
Private Sub Solve_Click()Dim a, b, c, d, m, n As IntegerDim x, y As Double
a = Val(Txt_a.Text)b = Val(Txt_b.Text)m = Val(Txt_m.Text)c = Val(Txt_c.Text)d = Val(Txt_d.Text)n = Val(Txt_n.Text)x = (b * n - d * m) / (b * c - a * d)y = (a * n - c * m) / (a * d - b * c)Lbl_x.Caption = Round(x, 2)Lbl_y.Caption = Round(y, 2)
End Sub
' To get new equations
Private Sub New_Click()Txt_a.Text = ""Txt_b.Text = ""Txt_m.Text = ""Txt_c.Text = ""Txt_d.Text = ""Txt_n.Text = ""Lbl_x.Caption = ""Lbl_y.Caption = ""
End Sub






'Program for simple harmonic motion
Dim t As Integer
Private Sub cmd_Start_Click()
Timer1.Enabled = True
End Sub

Private Sub cmd_Stop_Click()Timer1.Enabled = False
End Sub
Private Sub Timer1_Timer()t = t + 1x = 500 * Cos(50 * t)Shape1.Move Shape1.Left + xEnd Sub






Private Sub cmd_draw_Click()Dim a, b, c As IntegerDim w, v As Singlea = Val(txt_a.Text)b = Val(txt_b.Text)c = Val(txt_c.Text)
'Using a scale of 0.5 cm to represent i unit to draw the graph ' Need to make some transformation as the coordinates in VB start from top left
For w = 0 To 10 Step 0.001
v = a * (5 - w) ^ 2 - b * (5 - w) + cpic_graph.PSet (w, 5 - v)
Next w
End Sub

Private Sub Command1_Click()pic_graph.Cls
txt_a.Text = ""txt_b.Text = ""txt_c.Text = ""
End Sub






'Program to solve a quadratic equation
Private Sub Form_Load()Dim a, b, c, det As IntegerDim root1, root2 As SingleDim numroot As IntegerEnd Sub
Private Sub new_Click()' To set all values to zeroCoeff_a.Text = ""Coeff_b.Text = ""Coeff_c.Text = ""Answers.Caption = ""txt_root1.Visible = Falsetxt_root2.Visible = Falsetxt_root1.Text = ""txt_root2.Text = ""Lbl_and.Visible = FalseLbl_numroot.Caption = ""End Sub
Private Sub Solve_Click()a = Val(Coeff_a.Text)b = Val(Coeff_b.Text)c = Val(Coeff_c.Text)
'To compute the value of the determinant
det = (b ^ 2) - (4 * a * c)If det > 0 ThenLbl_numroot.Caption = 2root1 = (-b + Sqr(det)) / (2 * a)root2 = (-b - Sqr(det)) / (2 * a)Answers.Caption = "The roots are "Lbl_and.Visible = Truetxt_root1.Visible = Truetxt_root2.Visible = Truetxt_root1.Text = Round(root1, 4)txt_root2.Text = Round(root2, 4)
ElseIf det = 0 Thenroot1 = (-b) / 2 * aLbl_numroot.Caption = 1Answers.Caption = "The root is "txt_root1.Visible = Truetxt_root1.Text = root1ElseLbl_numroot.Caption = 0Answers.Caption = "There is no root "End IfEnd Sub







'Program to find out side length using Pythagorean theorem
Private Sub Command1_Click()
Dim AB, AC, BC As Single
AB = Val(Txt_AB.Text)
AC = Val(Txt_AC.Text)
BC = Val(Txt_BC.Text)
If AB <> 0 And AC <> 0 Then
BC = Sqr(AB ^ 2 + AC ^ 2)
Txt_BC.Text = Round(BC, 2)
ElseIf AB <> 0 And BC <> 0 Then
AC = Sqr(BC ^ 2 - AB ^ 2)
Txt_AC.Text = Round(AC, 2)
ElseIf AC <> 0 And BC <> 0 Then
AB = Sqr(BC ^ 2 - AC ^ 2)
Txt_AB.Text = Round(AB, 2)
End If
End Sub





'Program to estimate path of a projectile
Private Sub cmd_Draw_Click()
Dim x, y, v, t, a As Singlev = Txt_Speed.Texta = Txt_Angle.TextPic_Curve.Cls
Dot = t + 0.01y = v * Sin(a * 3.141592654 / 180) * t - 4.9 * (t ^ 2)x = v * Cos(a * 3.141592654 / 180) * tPic_Curve.PSet (x, 120 - y)If x > 120 ThenExit DoEnd If
LoopEnd Sub






'Program to identify a prime number
Private Sub Command1_Click()Dim N, D As SingleDim tag As String
N = Val(TxtNumber.Text)
Select Case NCase Is < 2Lbl_Answer.Caption = "It is not a prime number"
Case Is = 2Lbl_Answer.Caption = "It is a prime number"
Case Is > 2D = 2DoIf N / D = Int(N / D) ThenLbl_Answer.Caption = "It is not a prime number"tag = "Not Prime"Exit DoEnd IfD = D + 1
Loop While D <= N - 1If tag <> "Not Prime" ThenLbl_Answer.Caption = "It is a prime number"End IfEnd SelectEnd Sub




'Program to calculate max number
Function calMax(x, y, z As Variant)
If x > y And x > z Then
calMax = Str(x)ElseIf y > x And y > z ThencalMax = Str(y)ElseIf z > x And z > y Then
calMax = Str(z)
End If
End Function
Private Sub Command1_Click()Dim a, b, ca = Val(Txt_Num1.Text)b = Val(Txt_Num2.Text)c = Val(Txt_Num3.Text)
Lbl_Display.Caption = calMax(a, b, c)
End Sub
Private Sub Label5_Click()
End Sub





Private Sub cmd_compute_Click()Dim x, n, num As IntegerDim r As Singlex = Txt_FirstNum.Textr = Txt_CRnum = Txt_Terms.TextList1.AddItem "n" & vbTab & "x"List1.AddItem "___________"
n = 1Dox = x * rList1.AddItem n & vbTab & xn = n + 1Loop Until n = num + 1End Sub






'Program to find factors of a number
Private Sub Command1_Click()Dim N, x As IntegerN = Val(Text1.Text)For x = 2 To N - 1If N Mod x = 0 ThenList1.AddItem (x)End IfNextList1.AddItem (N)
End Sub




Dim a, b, c, d As IntegerDim x As Double
Private Function f(x As Variant)' Need to make some transformation as the left coordinates in VB start from left' our graph starts from centerf = a * (5 - x) ^ 3 + b * (5 - x) ^ 2 + c * (5 - x) + d
End Function
Private Sub cmd_Clear_Click()pic_graph.Clstxt_a.Text = ""txt_b.Text = ""txt_c.Text = ""txt_d.Text = ""End Sub
Private Sub cmd_draw_Click()Dim y As DoubleDim w As Double
a = Val(txt_a.Text)b = Val(txt_b.Text)c = Val(txt_c.Text)d = Val(txt_d.Text)'Using a scale of 0.5 cm to represent i unit to draw the graph' Need to make some transformation as the coordinates in VB start from top leftFor w = 0 To 10 Step 0.0001y = f(w)pic_graph.PSet (w, 5 - y)
Next w
End Sub




Dim num1 As IntegerDim num2 As IntegerDim intNumber As Integer

Private Sub score()intNumber = intNumber + 1End Sub
Private Sub begin()intNumber = 0Image1.Visible = FalseImage2.Visible = FalseLabel6.Visible = FalseLabel5.Visible = FalseText3.Text = ""If Option1.Value = "true" Thenn = 10ElseIf Option2.Value = "true" Thenn = 100ElseIf Option3.Value = "true" Thenn = 1000End If
Randomize Timernum1 = Int(Rnd * n)num2 = Int(Rnd * n)Text1.Text = num1Text2.Text = num2Text3.SetFocus
End Sub
Private Sub Form_Load()Image1.Visible = FalseImage2.Visible = FalseLabel6.Visible = FalseLabel5.Visible = FalseEnd Sub
Private Sub Start_Click()beginEnd SubPrivate Sub text3_keyDown(keyCode As Integer, shift As Integer)If keyCode = vbKeyNext Or keyCode = vbKeyDown ThenbeginEnd If
End SubPrivate Sub text3_keypress(keyAscii As Integer)If (keyAscii = 13) And Val(Text3.Text) = Val(Text1.Text) + Val(Text2.Text) ThenImage1.Visible = TrueImage2.Visible = FalseLabel5.Visible = TrueLabel6.Visible = Falsescoretotal.Caption = Str$(intNumber)

ElseIf (keyAscii = 13) And Val(Text3.Text) <> Val(Text1.Text) + Val(Text2.Text) ThenImage1.Visible = FalseImage2.Visible = TrueLabel5.Visible = FalseLabel6.Visible = TrueText3.Text = ""End If
End Sub
Private Sub Next_Click()Image1.Visible = FalseImage2.Visible = FalseLabel6.Visible = FalseLabel5.Visible = FalseIf Option1.Value = "true" Thenn = 10
ElseIf Option2.Value = "true" Thenn = 100ElseIf Option3.Value = "true" Thenn = 1000End IfText1.Text = ""Text2.Text = ""Text3.Text = ""Randomize Timernum1 = Int(Rnd * n)num2 = Int(Rnd * n)Text1.Text = num1Text2.Text = num2Text3.SetFocusEnd Sub
Private Sub OK_Click()If Val(Text3.Text) = Val(Text1.Text) + Val(Text2.Text) ThenImage1.Visible = TrueImage2.Visible = FalseLabel5.Visible = TrueLabel6.Visible = Falsescoretotal.Caption = Str$(intNumber)
ElseImage1.Visible = FalseImage2.Visible = TrueLabel5.Visible = FalseLabel6.Visible = TrueText3.Text = ""End IfEnd Sub
Private Sub Option1_Click()n = 10End Sub
Private Sub Option2_Click()n = 100End Sub
Private Sub Option3_Click()n = 1000End Sub