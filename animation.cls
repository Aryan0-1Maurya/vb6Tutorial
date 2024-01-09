' Program to show traffic lights

Private Sub Timer1_Timer()
If Shape1.Visible Then

Shape2.Visible = True
Shape1.Visible = False
Shape3.Visible = False

ElseIf Shape2.Visible Then

Shape3.Visible = True
Shape2.Visible = False
Shape1.Visible = False

Else

Shape1.Visible = True
Shape2.Visible = False
Shape3.Visible = False

End If

End Sub










' Simple animation program

Dim x As Integer
Dim y As Integer
Dim v, w As Integer


Static Sub move_right() 
v = v + 10
If v < 5350 Then
Image1.Move v, w
Else
Image1.Move 2640, 1560
v = 2640
w = 1560
Timer1.Enabled = False
End If
End Sub

Public Sub Command1_Click(Index As Integer)
Timer2.Enabled = False
Timer3.Enabled = False
Timer4.Enabled = False
Timer1.Enabled = True
End Sub

Private Sub move_down()
w = w + 10
If w < 3670 Then
Image1.Move v, w
Else
Image1.Move 2640, 1560
v = 2640
w = 1560
Timer2.Enabled = False
End If
End Sub

Private Sub move_left()
v = v - 10
If v > 0 Then
Image1.Move v, w
Else
Image1.Move 2640, 1560
v = 2640
w = 1560
Timer3.Enabled = False
End If
End Sub


Private Sub move_up()
w = w - 10

If w > 0 Then
Image1.Move v, w
Else
Image1.Move 2640, 1560
v = 2640
w = 1560
Timer4.Enabled = False
End If
End Sub

Private Sub Timer2_Timer()
move_down
End Sub

Private Sub Timer3_Timer()
move_left
End Sub

Private Sub Timer4_Timer()
move_up
End Sub