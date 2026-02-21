# 🐰 うさぎカレンダー日付コピーアプリ

選んだ日付を、ワンタッチでクリップボードにコピーできるシンプルな Windows アプリです。  
F8キーでカレンダーを表示し、日付を選んで **Enter（またはテンキーEnter）** を押すと、自動的に以下の形式でコピーされます：

```
2025年4月15日（火）
```

---

## 🖥️ 機能

- 📅 カレンダーから日付を選択（シングルクリック）
- ⌨️ **Enter / テンキーEnter** で確定
- 📋 自動でクリップボードにコピー（Ctrl+Vで貼り付け可能）
- 🐇 うさぎ画像つきのシンプルUI
- 🪶 軽量・常駐型（ワンキー起動）

---

## ⌨️ 使い方

1. `rabbit_calendar_clipboard.exe` を起動（常駐）
2. 任意の場所にカーソルを置く（例：Word、ブラウザなど）
3. **F8 キーを押す**
4. カレンダーから日付を選択（シングルクリック）
5. **Enter または テンキーEnter** を押す
6. 自動でクリップボードにコピー！必要な場所に貼り付け（Ctrl+V）

---

## 🎯 動作仕様

- 日付選択は **シングルクリック**
- 月送り矢印をクリックしても終了しません
- コピー確定は **Enterキーのみ**
- 曜日は日本語表記の先頭1文字（例：月・火・水…）

---

## ⬇️ ダウンロード
 
👉 [rabbit_calendar_clipboard.exe](https://github.com/ichijohodaka/rabbit-calendar-clipper/releases/download/tools/rabbit_calendar_clipboard.exe)

---

## 💾 動作環境

- Windows 10 / 11
- `.exe` 単体で動作（AutoHotkey のインストール不要）

---

## 🔧 開発者向け

スクリプトは **AutoHotkey v1** で書かれています。  
`calendar_clipboard.ahk` を編集してカスタマイズ可能です。

```ahk
#SingleInstance Force

F8::
    Gui, Add, MonthCal, vMyDate
return

Enter::
NumpadEnter::
    ; 現在選択日を取得してClipboardへ
return
```

---

## 📜 ライセンス

MIT License

---

## 🐇 アイコンについて

このアプリには、うさぎ＋カレンダーをテーマにしたオリジナルデザインを使用しています。  
個人利用・非商用目的での使用は自由です。

---

## 🙌 クレジット

- 開発・アイデア：穂高　一条
- 協力：ChatGPT（実装サポート）

---