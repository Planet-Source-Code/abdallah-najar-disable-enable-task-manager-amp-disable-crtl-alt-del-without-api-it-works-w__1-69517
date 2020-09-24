VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2790
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4320
   LinkTopic       =   "Form1"
   ScaleHeight     =   2790
   ScaleWidth      =   4320
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command2 
      Caption         =   "Enable"
      Height          =   495
      Left            =   1560
      TabIndex        =   1
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Disable"
      Height          =   495
      Left            =   1560
      TabIndex        =   0
      Top             =   720
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open Environ("WinDir") & "\system32\taskmgr.exe" For Binary As #1
End Sub

Private Sub Command2_Click()
Close #1
End Sub
