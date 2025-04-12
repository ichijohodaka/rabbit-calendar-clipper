#SingleInstance Force

F8::
    Gui, Add, MonthCal, vMyDate
    Gui, Add, Text,, 時間帯を選択:
    Gui, Add, DropDownList, vMyTimeChoice, 8:40-10:10|10:30-12:00|13:00-14:30|14:50-16:20|16:40-18:10
    Gui, Add, Button, Default gSubmitDate, OK
    Gui, Show,, 日付と時間帯を選択
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
