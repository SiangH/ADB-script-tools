@echo off
:LOOP
echo 1.homeKEY
echo 2.appSwitchKEY
echo 3.Back
echo 4.Power
echo 5.VolumeDown
echo 6.VolumeUp
echo 7.VolumeMute
echo 8.VolumeMax
echo Please Input Num
Set /p I=
if %I% == 1 adb shell "input keyevent 3"
if %I% == 2 adb shell "input keyevent 187"
if %I% == 3 adb shell "input keyevent 4"
if %I% == 4 adb shell "input keyevent 26"
if %I% == 5 adb shell "input keyevent 25"
if %I% == 6 adb shell "input keyevent 24"
if %I% == 7 adb shell "input keyevent 164"
if %I% == 8 for /l %%x in (1,1,30) do adb shell "input keyevent 24"
call:LOOP
