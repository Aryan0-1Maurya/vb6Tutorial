'Calculate payback period
Private Sub Command1_Click()Dim payment, Loan, Int_Rate As DoubleDim Num_year As Single
payment = Val(Txt_Payment.Text)
Int_Rate = (Val(Txt_Rate.Text) / 100) / 12Loan = Val(Txt_PV.Text)
Num_year = NPer(Int_Rate, payment, -Loan, 0, 0)/ 12
Lbl_Period.Caption = Str(Int(Num_year))End Sub






'Calculating Investment value
Private Sub cmdCal_Click()
Dim F_Money, Int_Rate, Investment As DoubleDim numYear As SingleF_Money = Val(Txt_FV.Text)Int_Rate = (Val(Txt_Rate.Text) / 100)numYear = Val(Txt_Year.Text)Investment = PV(Int_Rate, numYear, 0, F_Money, 1)Lbl_PV.Caption = Format(-Investment, "$##,###,##0.00")
End Sub







'Future value calculator
Public Function FV(PV As Variant, i As Variant, n As Variant) As Variant'Formula to calculate Future Value(FV)'PV denotes Present ValueFV = PV * (1 + i / 100) ^ n
End Function
Private Sub compute_Click()'This procedure will calculate Future ValueDim FutureVal As CurrencyDim PresentVal As CurrencyDim interest As VariantDim period As Variant PresentVal = PV.Text
interest = rate.Textperiod = years.Text
FutureVal = FV(PresentVal, interest, period)Label5.Caption = Format(FutureVal, "currency")End Sub
Private Sub period_Change()
End Sub





'Program to calculate amortization
Dim Num, n As IntegerDim I, P, PVIFA, r, pmt, PI, PP As Double

Public Sub Cmd_Calculate_Click()
P = Txt_Principal.TextNum = Txt_Num_payment.Textr = Txt_Interest.TextI = r / 100PVIFA = 1 / I - 1 / (I * (1 + I) ^ Num)pmt = P / PVIFALbl_Amtpayment.Caption = Round(pmt, 2)
End Sub
Private Sub Cmd_Create_Click()
List_Amortization.AddItem "n" & vbTab & "Periodic" & vbTab & vbTab & "Payment" & vbTab & vbTab & "Payment" & vbTab & vbTab & "Balance"List_Amortization.AddItem "" & vbTab & "Payment" & vbTab & vbTab & "Interest" & vbTab & vbTab & "Principal"List_Amortization.AddItem "_______________________________________________________________________"Don = n + 1PI = P * IPP = pmt - PIP = P - PPList_Amortization.AddItem n & vbTab & Round(pmt, 2) & vbTab & vbTab & Round(PI, 2) & vbTab & vbTab & Round(PP, 2) & vbTab & vbTab & Round(P, 2)If n = Num ThenExit DoEnd IfLoop
End Sub







'Program to calculate depreciation
Private Sub Command1_Click()
Dim Int_Cost, Sal_Value, Asset_Life, Deperiod, Depre_Amt As DoubleInt_Cost = Val(Txt_Cost.Text)Sal_Value = Val(Txt_Salvage.Text)Asset_Life = Val(Txt_Life.Text)Deperiod = Val(Txt_Period.Text)Depre_Amt = DDB(Int_Cost, Sal_Value, Asset_Life, Deperiod)
Lbl_Dpre.Caption = Format(Depre_Amt, "$###,###,000.00")