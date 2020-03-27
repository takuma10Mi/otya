# README

- ねこさがしのアプリケーションを作りました。
-　飼い猫が脱走しかけたことがあり、それを知らせられる掲示板です。
## アプリケーション概要

- 画像投稿コメントアプリ

## アプリケーションの機能一覧
-CSVのダウンロード


## アプリケーション内で使用している技術一覧
|種別|名称|
|------|----|
|開発言語|Ruby(ver 2.5.1)|
|フレームワーク|Ruby on Rails(ver 5.0.7.2)|
|マークアップ|HTML(Haml),CSS(Sass)|
|フロントエンド|JavaScript(jQuery)|
|DB|MySQL|
|本番環境|未実装|
|自動デプロイ|capistrano（未実装）|

## データベース

## usersテーブル

  |名前|Column|Type|Options|
  |---|------|----|-------|
  |ID|id|integer|null: false|
  |メールアドレス|mail|string|null: false, unique: true| 
  |パスワード|password|string|null: false|
  ### Association
  - has_many :articles
## addresses
  |名前|Column|Type|Options|
  |---|------|----|-------|
  |ID|id|integer|null: false|
  |ユーザーID|user_id|integer|null: false,foreign_key: true|
  |タイトル|title|string|null: false|
  |画像|image|string |null: false|
  |内容|content|string|null: false|

  ### Association
  belongs_to :user
## Webページ
![screencapture-127-0-0-1-3000-2020-03-23-20_53_52](https://user-images.githubusercontent.com/54714018/77314398-ea0cc600-6d48-11ea-95b1-f681e05b9122.png)
ー
<img width="1440" alt="スクリーンショット 2020-03-27 21 49 54" src="https://user-images.githubusercontent.com/54714018/77758175-da0d2300-7075-11ea-98e7-87e9896861cc.png">
ー
<img width="1440" alt="スクリーンショット 2020-03-27 21 50 06" src="https://user-images.githubusercontent.com/54714018/77758183-dd081380-7075-11ea-9986-ffed68a807d0.png">
ー
<img width="1440" alt="スクリーンショット 2020-03-27 21 50 34" src="https://user-images.githubusercontent.com/54714018/77758195-e1ccc780-7075-11ea-90dd-fc864f3846a0.png">
ー
<img width="1440" alt="スクリーンショット 2020-03-27 21 50 47" src="https://user-images.githubusercontent.com/54714018/77758207-e85b3f00-7075-11ea-8536-defcc5c5055f.png">
ー
![screencapture-127-0-0-1-3000-new-2020-03-23-20_54_15](https://user-images.githubusercontent.com/54714018/77314407-ed07b680-6d48-11ea-81c5-fb9d7000a5ad.png)
<img width="888" alt="スクリーンショット 2020-03-23 20 54 48" src="https://user-images.githubusercontent.com/54714018/77314588-4a036c80-6d49-11ea-8e27-7fb86d561fe2.png">
