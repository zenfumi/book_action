# 読書行動文

読書内容を行動文（メモ）としてアウトプットすることで行動を促し、また行動の進捗管理できるアプリです。<br>
<img width="1432" alt="スクリーンショット 2020-12-23 10 29 24" src="https://user-images.githubusercontent.com/64763734/102948844-2e143d80-450a-11eb-8faf-4d7ed662d0a3.png"><br>

# URL

https://book-action.com <br>
（ゲストログイン(閲覧用)にてログインをお願い致します。）

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

# AWS 構成図

![インフラ構成図](https://user-images.githubusercontent.com/64763734/102961188-0ed7d900-4527-11eb-89bc-d25caa9e4bdc.png)

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

# テスト

- Rspec にて実装予定

# 制作背景

「読書は行動に移してこそ意味がある」との考えから読む目的やアクションプランを紙(※)に書いて本に挟んでおりましたが、本が手元にないと進捗管理ができないという悩みを抱えておりました。しかし、本を読んで”行動”に繋げることを促す WEB アプリはあまりないと感じました。（読書を”管理”できるアプリはたくさんある）そういった自身の悩みに加えて、多くの読書術に「本の目的、アクションプランを定める」「アウトプット」が大事とされていることから、【目的・アクションプラン等、行動に繋げる為の要素をメモとして投稿（アウトプット）できる WEB サービスを作りたい】と思ったのが作成経緯となります。

※紙媒体のシートを書いておりました。（https://gyazo.com/ad4e5204e905b18870533e680bcc1253）

サービス設計・概要の詳細は、リーンキャンバス参照(https://app.bizmake.jp/share/Lean/6398/sf60hf)

# 工夫した点

・入力項目は、行動に繋げる為の項目（アクション・目標等）のみに絞っている

→「ACTION 　 READING」という効果的な読書の方法が書かれている本の付録についているチャレンジングシート（上記 URL 参照）の項目をベースに多くの読書術を参考に入力項目を決定

→「ACTION 　 READING」という本の FaceBook コミュニティ（3115 名）で使ってもらうことを想定して作成している。

FaceBook コミュニティの URL（https://www.facebook.com/groups/100234803720559/）

・読書後の「行動達成率」を高める為に、投稿の進捗管理機能を実装している

→ 本に紐づく投稿を「行動中」「習慣化」「達成」のタブに分け、進捗管理を行えるようにしている。

・読書後の「行動達成率」を高める為に、SNS にシェアできる機能・他のユーザへのコメント・いいね機能を実装している

→ 投稿内容を SNS シェア機能により、自身で落とし込んだ内容を発信することにより行動に強制力を持たせることができる。他のユーザへのコメント機能・いいね機能により、他の利用者から刺激を受けることができる。
