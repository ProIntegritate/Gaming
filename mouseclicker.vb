' This is a template for a mouseclicker function, you can easily port it to C#.
' I used .NET Framework 3.5 for this (i know Jurassic park), but you probably can get it spinning easily in .NET 8 or higher.
' Feel free to do whatever you want with this code.

Module MouseClicker

    Public clicking As Boolean = False

    Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
    Public Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)

    ' Put this function in a loop so it's checked regularly, like many times every second.
    Public Sub SendClick()

        ' Keycodes for GetAsyncKeyState()
        ' 37 = Left
        ' 38 = Up
        ' 39 = Right
        ' 40 = Down
        ' 9 = Tab
        ' 32 = space

        Dim z As Integer = 0
        z = (GetAsyncKeyState(38) Mod 2) ' check Up key
        If z > 0 Then clicking = True
        z = (GetAsyncKeyState(40) Mod 2) ' check Down key
        If z > 0 Then clicking = False

        If clicking = True Then
            For n = 0 To 4
                mouse_event(&H2, 0, 0, 0, 1) ' Send left button down
                mouse_event(&H4, 0, 0, 0, 1) ' Send left button up
            Next
            Application.DoEvents() ' Allow other applications to do their thing so game doesn't lagg
        End If
    End Sub

End Module
