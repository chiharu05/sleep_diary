# README

# アプリケーション名
sleep_diary

# アプリケーション概要
眠気を感じた時間を記録する

# URL
https://sleep-diary-37257.herokuapp.com/posts/new

# テスト用アカウント
Basic認証ログインID admin

Basic認証ログインPass 0000

ログインEメール aiueo@aiueo.co.jp

ログインパスワード aiueo54321

# 利用方法
1.トップページから記録(日付/時刻/記録内容/メモ)を入力し投稿する

2.一覧ページで日付を選択し、1日の記録を確認する

# アプリケーションを作成した背景
自分が眠気の相談で病院に行ったとき、提出するよう求められた記録書がPDF形式だった。

そのため書き忘れや印刷する面倒さがあり、もっと楽にできないかと考えた。

# 要件定義のURL
https://docs.google.com/spreadsheets/d/1PWnfGJ9-q_FDTzS8-b7jeRkoBMlmi8t_P2kftl24L-I/edit#gid=982722306

# 実装した機能
・投稿機能

・一覧表示機能

・詳細表示機能

・編集機能

・削除機能

・ユーザー登録機能

# 実装予定の機能
・グラフ表示機能

# データベース設計

## posts

|Column         |Type      |Options      |
|---------------|----------|-------------|
| date_and_time | datetime | null: false |
| kind_id       | integer  | null: false |
| memo          | text     |             |

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/6a01dc8795b4624de2c23b3a51828a61.png)](https://gyazo.com/6a01dc8795b4624de2c23b3a51828a61)

# 開発環境
・フロントエンド:html,css

・バックエンド:Ruby,Ruby on Rails

・テキストエディタ:Visual Studio Code

・タスク管理:GitHubプロジェクトボード

# ローカルでの動作方法