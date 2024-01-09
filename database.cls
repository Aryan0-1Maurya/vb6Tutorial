' simple database management system using a text file.
Dim studentname As StringDim intMsg As StringPrivate Sub Command1_Click()‘To read the file Text1.Text = ""Dim variable1 As StringOn Error GoTo file_errorOpen "D:\Tito\sample.txt" For Input As #1DoInput #1, variable1Text1.Text = Text1.Text & variable1 & vbCrLfLoop While Not EOF(1)Close #1
Exit Subfile_error:MsgBox (Err.Description)End Sub
Private Sub Command2_Click()‘To delete the fileOn Error GoTo delete_errorKill "D:\Tito\sample.txt"Exit Subdelete_error:MsgBox (Err.Description)End Sub 
Private Sub create_Click()‘To create the file or open the file for new data entryOpen "D:\Tito\sample.txt" For Append As #1intMsg = MsgBox("File sample.txt opened")Dostudentname = InputBox("Enter the student Name or type finish to end")If studentname = "finish" ThenExit DoEnd IfWrite #1, studentname & vbCrLfintMsg = MsgBox("Writing " & studentname & " to sample.txt ")LoopClose #1intMsg = MsgBox("File sample.txt closed")End Sub
Private Sub Form_Load()
On Error GoTo Openfile_errorOpen "D:\Tito\sample.txt" For Input As #1Close #1Exit SubOpenfile_error:MsgBox (Err.Description), , "Please create a new file"create.Caption = "Create File"End Sub
Private Sub Command3_Click()EndEnd Sub









' Database Application
'data_navigator.RecordSet.MoveFirst ' Move to the first record
'data_navigator.RecordSet.MoveLast; ' Move to the last record
'data_navigator.RecordSet.MoveNext ' Move to the next record
'data_navigator.RecordSet.Previous ' Move to the first record
'data_navigator.RecordSet.AddNew ' Adds a new record
'data_navigator.RecordSet.Update 'Saves new record
'data_navigator.RecordSet.Delete ' Deletes a current record


Private Sub cmdFirst_Click()dtaBooks.Recordset.MoveFirstEnd Sub

Private Sub cmdNext_Click()                      dtaBooks.Recordset.MoveNext      End Sub

Private Sub cmdPrevious_Click()dtaBooks.Recordset.MovePreviousEnd Sub
Private Sub cmdLast_Click()dtaBooks.Recordset.MoveLastEnd Sub