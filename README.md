### アプリケーション名
historynet

### 概要
歴史に苦手意識を持つ学生や、歴史の面白さを知らない人向けの歴史雑学記事投稿アプリです。
ユーザーを管理し記事の投稿、編集、削除が可能です

### URL

### テスト用アカウント

### 利用方法

### 目指した課題解決

### 洗い出した要件



### 実装予定の機能

### テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| nickname | string | null: false |


## articleテーブル

| Column | Type       |    Options                         |
| ------ | ---------- | ---------------------------------- |
| title  | string     | null: false                        |
| text   | text       | null: false                        |
| user   | references | null: false, foreign_key: true     | 



## messagesテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| article | references | null: false, foreign_key: true |


### ローカルでの動作方法


