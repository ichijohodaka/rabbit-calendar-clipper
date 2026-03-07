#SingleInstance Force

; 起動時に埋め込み画像を展開
pngPath := A_Temp "\rabbit_bg_resized_final.png"
if !FileExist(pngPath)
{
    FileInstall, rabbit_bg_resized_final.png, %pngPath%, 1
}

+F8::  ; Shift + F8：今日を yyyyMMdd でコピー
    FormatTime, today, , yyyyMMdd
    Clipboard := today
return


F8::
    global hCal, GuiOpen, pngPath
    GuiOpen := true

    Gui, +AlwaysOnTop
    Gui, Add, Picture, x20 y10 w200 h180, %pngPath%
    Gui, Add, MonthCal, vMyDate x20 y200
    GuiControlGet, hCal, Hwnd, MyDate

    Gui, Show,, うさぎカレンダー
return

#If (GuiOpen)

Enter::
NumpadEnter::
    global hCal, GuiOpen

    ; 現在選択中の日付を取得
    VarSetCapacity(st, 16, 0) ; SYSTEMTIME
    DllCall("SendMessage", "ptr", hCal, "uint", 0x1001, "ptr", 0, "ptr", &st)

    y := NumGet(st, 0, "UShort")
    m := NumGet(st, 2, "UShort")
    d := NumGet(st, 6, "UShort")

    date := Format("{:04}{:02}{:02}", y, m, d)
    FormatTime, weekday, %date%, dddd
    weekdayShort := SubStr(weekday, 1, 1)

    Clipboard := y "年" m "月" d "日（" weekdayShort "）"

    GuiOpen := false
    Gui, Destroy
return

#If