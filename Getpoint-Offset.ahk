#SingleInstance force
SetWorkingDir %A_ScriptDir%


sleep,3000
Label := Clipboard
MouseGetPos,X,Y
msgbox, % "Point 1=" . X . "," . Y
sleep,3000
XX=
YY=
secondpoint(XX,YY)
result := XX-X . "," . YY-Y
message := "`n`r------" . Label . "------`n"
message .= "Point 1= " . X . "," . Y . "`n"
message .= "Point 2= " . XX . "," . YY . "`n"
message .= "Offset X, Y = " . result . "`n"
message .= "------" . A_Hour . ":" . A_Min . ":" . A_Sec . "------`n`r"
FileAppend, %message%, point_offset.txt

ExitApp

secondpoint(ByRef a,ByRef b){
global

MouseGetPos,U,V
sleep,200
a := U
b := V
msgbox, % "Point 2=" . a . "," . b
}