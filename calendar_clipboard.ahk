#SingleInstance Force

F8::
    global hCal, GuiOpen
    GuiOpen := true

    Gui, +AlwaysOnTop
    Gui, Add, Picture, x20 y10 w200 h180, rabbit_bg_resized_final.png
    Gui, Add, MonthCal, vMyDate x20 y200
    GuiControlGet, hCal, Hwnd, MyDate

    Gui, Show,, うさぎカレンダー
return

#If (GuiOpen)

Enter::
NumpadEnter::   ; ← テンキーEnterも同じ処理
    global hCal, GuiOpen

    ; 現在選択中の日付を取得（MCM_GETCURSEL = 0x1001）
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