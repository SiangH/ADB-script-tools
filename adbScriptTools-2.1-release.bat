@echo off
echo checking devices connection...
adb wait-for-device
call:LOOP0

:LOOP0
cls
echo please choose mode
echo A.KeyScript
echo B.usb mode(maybe not working)
echo C.adb common used command
echo input q to close window
echo Please input Number
set /p Z=
if %z% == A call:A
if %z% == B call:B
if %Z% == C call:C
if %Z% == q exit
echo Error1:Input Error
call:LOOP0

:A
cls
echo 1.homeKEY
echo 2.appSwitchKEY
echo 3.Back
echo 4.Power
echo 5.VolumeDown
echo 6.VolumeUp
echo 7.VolumeMute
echo 8.VolumeMax
echo input e to last page
echo Please Input Num
Set /p A=
if %A% == 1 adb shell "input keyevent 3"
if %A% == 2 adb shell "input keyevent 187"
if %A% == 3 adb shell "input keyevent 4"
if %A% == 4 adb shell "input keyevent 26"
if %A% == 5 adb shell "input keyevent 25"
if %A% == 6 adb shell "input keyevent 24"
if %A% == 7 adb shell "input keyevent 164"
if %A% == 8 for /l %%x in (1,1,30) do adb shell "input keyevent 24"
if %A% == e call:LOOP0
call:A

:B
cls
echo 1.charging
echo 2.mtp
echo 3.ptp
echo 4.midi
echo input e to last page
echo Please Input Num
Set /p B=
if %B% == 1 adb shell svc usb setFunctions
if %B% == 2 adb shell svc usb setFunctions mtp
if %B% == 3 adb shell svc usb setFunctions ptp
if %B% == 2 adb shell svc usb setFunctions midi
if %B% == e call:LOOP0
call:LOOP0

:C
cls
echo 1.adb devices
echo 2.adb tcpip 5555
echo 3.adb usb
echo input e to last page
echo Please Input Num
Set /p C=
if %C% == 1 adb devices
if %C% == 2 adb tcpip 5555
if %C% == 3 adb usb
if %C% == e call:LOOP0
call:C
