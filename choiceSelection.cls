' Choice selection program
Private Sub Command1_Click()
If Check1.Value = vbChecked And Check2.Value = vbChecked And Check3.Value = vbChecked ThenMsgBox ("You like Reading, Computer and Sports")
ElseIf Check1.Value = vbChecked And Check2.Value = vbChecked And Check3.Value = vbUnchecked Then
MsgBox ("You like Reading and Computer")
ElseIf Check1.Value = vbChecked And Check2.Value = vbUnchecked And Check3.Value = vbChecked ThenMsgBox ("You like Reading and Sports")
ElseIf Check1.Value = vbUnchecked And Check2.Value = vbChecked And Check3.Value = vbChecked ThenMsgBox ("You like Computer and Sports")
ElseIf Check1.Value = vbChecked And Check2.Value = vbUnchecked And Check3.Value = vbChecked ThenMsgBox ("You like Reading and Sports")
ElseIf Check1.Value = vbChecked And Check2.Value = vbUnchecked And Check3.Value = vbUnchecked ThenMsgBox ("You like Reading only ")
ElseIf Check1.Value = vbUnchecked And Check2.Value = vbChecked And Check3.Value = vbUnchecked ThenMsgBox ("You like computer only")
ElseIf Check1.Value = vbUnchecked And Check2.Value = vbUnchecked And Check3.Value = vbChecked ThenMsgBox ("You like Sports only")
ElseMsgBox ("You have no hobby")End IfEnd Sub