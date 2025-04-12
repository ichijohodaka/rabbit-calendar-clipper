#SingleInstance Force

F8::
    Gui, +AlwaysOnTop

    ; 🐰 うさぎ画像をGUI上部に表示（200x180）
    Gui, Add, Picture, x20 y10 w200 h180, rabbit_bg_resized_final.png

    ; 📅 カレンダー（画像の下に配置）
    Gui, Add, MonthCal, vMyDate x20 y200

    ; ⏰ 時間帯選択
    Gui, Add, Text, x20 y370, 時間帯を選択:
    Gui, Add, DropDownList, vMyTimeChoice x20 y390 w150, 8:40-10:10|10:30-12:00|13:00-14:30|14:50-16:20|16:40-18:10

    ; ✅ OKボタン
    Gui, Add, Button, gSubmitDate x200 y390, OK

    Gui, Show,, うさぎカレンダー
return

SubmitDate:
    Gui, Submit

    output := ""

    if (MyDate != "") {
        FormatTime, year, %MyDate%, yyyy
        FormatTime, month, %MyDate%, M
        FormatTime, day, %MyDate%, d
        FormatTime, weekday, %MyDate%, dddd
        weekdayShort := SubStr(weekday, 1, 1)
        formattedDate := year "年" month "月" day "日（" weekdayShort "）"
        output .= formattedDate
    }

    if (MyTimeChoice != "") {
        if (output != "")
            output .= " "
        output .= MyTimeChoice
    }

    if (output != "")
        Clipboard := output

    Gui, Destroy
return
