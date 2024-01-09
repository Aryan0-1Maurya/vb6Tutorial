'Program to calculate BMI
'considering the following
'Underweight = <18.5
'Normal weight = 18.5-24.9
'Overweight = 25-29.9
'Obesity = BMI of 30 or greater

Private Sub Command1_Click()
    Label4.Caption = BMI(Text1.Text, Text2.Text)
End Sub

Private Function BMI(height, weight)
      BMIValue = (weight) / (height ^ 2)
      BMI = Format(BMIValue, "0.00")
End Function







' double click the timer and enter the one line code as follows

Private Sub Timer1_Timer()
 
Label1.Caption = Time

End Sub