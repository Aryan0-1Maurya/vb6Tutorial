'Polling program

Dim total, Excel_total, VG_total, G_total, Sat_total, Bad_total As Integer
Dim Excel_percent, VG_percent, G_percent, Sat_percent, Bad_percent As Single
Dim done As Boolean

Private Sub cmd_Vote_Click()
Picture1.Cls

If Option_Excel.Value = True Then
Excel_total = Excel_total + 1
Lbl_ExcelTotal = Excel_total
ElseIf Option_VG.Value = True Then
VG_total = VG_total + 1
Lbl_VGTotal = VG_total
ElseIf Option_G.Value = True Then
G_total = G_total + 1
Lbl_GTotal = G_total
ElseIf Option_Sat.Value = True Then
Sat_total = Sat_total + 1
Lbl_SatTotal = Sat_total
ElseIf Option_Bad.Value = True Then
Bad_total = Bad_total + 1
Lbl_BadTotal = Bad_total
End If
total = Excel_total + VG_total + G_total + Sat_total + Bad_total

Lbl_Total = total

Excel_percent = Excel_total / total
VG_percent = VG_total / total
G_percent = G_total / total
Sat_percent = Sat_total / total
Bad_percent = Bad_total / total
Lbl_Excel.Caption = Format(Excel_percent, "Percent")
Lbl_VG.Caption = Format(VG_percent, "Percent")
Lbl_G.Caption = Format(G_percent, "Percent")
Lbl_Sat.Caption = Format(Sat_percent, "Percent")
Lbl_Bad.Caption = Format(Bad_percent, "Percent")
Picture1.Line (100, 750)-(3800 * Excel_percent, 950), vbRed, BF
Picture1.Line (100, 1450)-(3800 * VG_percent, 1650), vbMagenta, BF
Picture1.Line (100, 2150)-(3800 * G_percent, 2350), vbGreen, BF
Picture1.Line (100, 2850)-(3800 * Sat_percent, 3050), vbBlue, BF
Picture1.Line (100, 3550)-(3800 * Bad_percent, 3750), vbYellow, BF

End Sub








' Simple calculator

Private Sub Combo1_()

Select Case Combo1.ListIndex
Case 0
Label1 = Str$(Val(Text1.Text) + Val(Text2.Text))
Case 1
Label1 = Str$(Val(Text1.Text) - Val(Text2.Text))
End Select
End Sub

Private Sub Command1_Click()
Select Case Combo1.ListIndex
Case 0
Label1 = Str$(Val(Text1.Text) + Val(Text2.Text))
Case 1
Label1 = Str$(Val(Text1.Text) - Val(Text2.Text))
Case 2
Label1 = Str$(Val(Text1.Text) * Val(Text2.Text))
Case 3
Label1 = Str$(Val(Text1.Text) / Val(Text2.Text))

End Select
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Form_Load()
Combo1.AddItem "+"
Combo1.AddItem "-"
Combo1.AddItem "x"
Combo1.AddItem "÷"
Combo1.ListIndex = 1

End Sub