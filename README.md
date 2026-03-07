# 🐰 うさぎカレンダー日付コピーアプリ

選んだ日付を、ワンタッチでクリップボードにコピーできるシンプルな Windows アプリです。

F8キーでカレンダーを表示し、日付を選んで **Enter（またはテンキーEnter）** を押すと、自動的に以下の形式でコピーされます：

```
2025年4月15日（火）
```

さらに、**Shift + F8** を押すと、今日の日付を以下の形式で即コピーできます：

```
20260304
```

---

# 🖥️ 機能

- 📅 カレンダーから日付を選択（シングルクリック）
- ⌨️ **Enter / テンキーEnter** で確定
- ⚡ **Shift + F8 で今日の日付（yyyyMMdd形式）を即コピー**
- 📋 自動でクリップボードにコピー（Ctrl+Vで貼り付け可能）
- 🐇 うさぎ画像つきのシンプルUI
- 🪶 軽量・常駐型（ワンキー起動）

---

# ⌨️ ショートカットキー

| キー | 動作 |
|---|---|
| **F8** | カレンダーを開く |
| **Enter** | 選択日付をコピー |
| **テンキーEnter** | 選択日付をコピー |
| **Shift + F8** | 今日の日付（yyyyMMdd）を即コピー |

---

# ⌨️ 使い方

## 📅 任意の日付をコピー

1. `rabbit_calendar_clipboard.exe` を起動
2. カーソルを置く（Word / Excel / ブラウザなど）
3. **F8**
4. 日付をクリック
5. **Enter**

---

## ⚡ 今日の日付をコピー

```
Shift + F8
```

---

# ⬇️ ダウンロード

```
https://github.com/ichijohodaka/rabbit-calendar-clipper/releases/latest/download/rabbit_calendar_clipboard.exe
```

---

# 💾 動作環境

- Windows 10 / 11
- `.exe` 単体で動作
- AutoHotkey不要

---

# 🔧 開発者向け

このアプリは **AutoHotkey v1** で作られています。

## コンパイル

```
右クリック → Compile Script
```

---

## フォルダ構成

```
rabbit-calendar-clipper
 ├ calendar_clipboard.ahk
 ├ rabbit_bg_resized_final.png
 ├ app.ico
 └ README.md
```

---

# 📜 ライセンス

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

## 🆕 v2.0 変更点
- Shift + F8 で今日の日付を即コピー機能を追加

