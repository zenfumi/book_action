# 読書行動文

読書内容を行動文（メモ）としてアウトプットすることで行動を促し、また行動の進捗管理できるアプリです。<br>
<img width="1432" alt="スクリーンショット 2020-12-23 10 29 24" src="https://user-images.githubusercontent.com/64763734/102948844-2e143d80-450a-11eb-8faf-4d7ed662d0a3.png"><br>

# URL

https://book-action.com <br>
（ゲストログイン(閲覧用)ボタンにてログインをお願い致します。）

# コンセプト

「読書は行動に移してこそ意味がある」との考えから自身は読む目的やアクションプランを紙(※)に書いて本に挟んでおりましたが、本が手元にないと進捗管理ができないという悩みを抱えておりました。しかし、本を読んで”行動”に繋げることを促す WEB アプリはあまりないと感じました。（読書を”管理”できるアプリはたくさんある）そういった自身の悩みに加えて、多くの読書術に「本の目的、アクションプランを定める」「アウトプット」が大事とされていることから、【目的・アクションプラン等、行動に繋げる為に書き出すべき要素をメモとして投稿（アウトプット）できる WEB サービスを作りたい】と思ったのが作成経緯です。

※「ACTION READING」という本の付録のチャレンジシートというものを書いておりました。（https://gyazo.com/ad4e5204e905b18870533e680bcc1253）

# 企画書

リーンキャンバスというビジネスフレームワークを用いて、本アプリの企画書を作成しております。<br>
https://app.bizmake.jp/share/Lean/6398/sf60hf

# 使用技術一覧

- フロントサイド

  - HTML (slim,erb)
  - css (sass)
  - JavaScript (JQuery)

- バックエンド

  - Ruby (2.6.3)
  - Ruby on Rails (6.0.3)

- ユーザー関連

  - device

- 画像関連

  - ActiveStorage
  - CarrierWave

- サーバー

  - Nginx(WEB サーバー)
  - Puma(アプリケーションサーバー)

- DB

  - MySQL(5.7)

- インフラ・開発環境等
  - AWS(VPC,RDS,EC2,Route 53,ACM,ALB,IAM）

# AWS(インフラ)構成図

![インフラ構成図](https://user-images.githubusercontent.com/64763734/103096512-7dac5380-4647-11eb-85ae-97a5b5e317ad.png)

# 機能一覧

- ユーザー登録、ログイン機能(devise)
  - ユーザー画像(CarrierWave)
- 本の登録・編集機能
- 投稿機能
  - 画像投稿(ActiveStorage)
  - Twitter シェア機能
- いいね機能(Ajax)
- 投稿ステータス管理機能
- コメント機能
- 本の検索機能(Ransack)

# 実装予定機能

- Google Books API
- メンター募集とマッチングに関する機能(現時点で具体的に落とし込みできていない)

# テスト

- Rspec にて実装予定

# ER 図

https://docs.google.com/document/d/1t8JoT4DorPv33eTaPerqBA4s8tT-d8fRMhV8USl3xO0/edit?usp=sharing
