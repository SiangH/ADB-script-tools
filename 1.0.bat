@echo off
:LOOP
Set /p I=Please Input Num(1.home 2.appSwitch 3.back 4.power 5.VolumeDown 6.VolumeUp 7.VolumeMute 8.VolumeMax)
if %I% == 1 adb shell "input keyevent 3"
if %I% == 2 adb shell "input keyevent 187"
if %I% == 3 adb shell "input keyevent 4"
if %I% == 4 adb shell "input keyevent 26"
if %I% == 5 adb shell "input keyevent 25"
if %I% == 6 adb shell "input keyevent 24"
if %I% == 7 adb shell "input keyevent 164"
if %I% == 8 for /l %%x in (1,1,30) do adb shell "input keyevent 24"
call:LOOP