# 🐰 うさぎカレンダー時間帯コピーアプリ

選んだ日付と時間帯を、ワンクリックでクリップボードにコピーできるシンプルな Windows アプリです。  
F8キーでカレンダーを表示し、日付と時間帯を選んで OK または Enter を押すと、自動的に以下のような形式でコピーされます：

```
2025年4月15日（火） 13:00-14:30
```

---

## 🖥️ 機能

- 📅 カレンダーから日付を選択
- ⏰ プルダウンから時間帯（1限～5限）を選択
- ✅ 日付・時間帯のどちらか片方だけでもOK
- 📋 自動でクリップボードにコピー（Ctrl+Vで貼り付け可能）
- 🐇 アイコンはうさぎ＋カレンダーで癒し感満点

---

## ⌨️ 使い方

1. `rabbit_calendar_clipboard.exe` を起動（常駐）
2. 任意の場所にカーソルを置く（例：Word、ブラウザなど）
3. **F8 キーを押す**
4. カレンダーと時間帯を選んで **OK または Enter**
5. 自動でクリップボードにコピー！必要な場所に貼り付け（Ctrl+V）

---

## ⬇️ ダウンロード
 
👉 [rabbit_calendar_clipboard.exe](https://github.com/ichijohodaka/rabbit-calendar-clipper/releases/download/tools/rabbit_calendar_clipboard.exe
)



---

## 💾 動作環境

- Windows 10 / 11
- `.exe` 単体で動作（AutoHotkey のインストール不要）

---

## 🔧 開発者向け

スクリプトは AutoHotkey v1 で書かれています。`calendar_clipboard.ahk` を編集してカスタマイズ可能です。

```ahk
#SingleInstance Force

F8::
    Gui, Add, MonthCal, vMyDate
    ; 省略...
return
```

---

## 📜 ライセンス

MIT License

---

## 🐇 アイコンについて

このアプリには、うさぎ＋カレンダーをテーマにしたオリジナルアイコンを使用しています。個人利用・非商用目的での使用は自由です。

---

## 🙌 クレジット

- 開発・アイデア：穂高　一条
- 協力：ChatGPT（アシスタント）

---
