# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
#テーブル設計

## user テーブル（ユーザー）
| Column              | Type          | Options             |
| ------------------- | ------------- | ------------------- |
| name                | string        | null: false         |
| email               | string        | null: false, unique |
| encrypted-password  | srting        | null: false         |

# purchase テーブル（購入）
| Column              | Type          | Options                         |
| ------------------- | ------------- | ------------------------------- |
| order_no            | integer       | null: false                     |
| item                | string        | null: false                     |
| quantity            | integer       | null: false                     |
| price               | integer       | null: false                     |
| user                | references    | null: false, foreign_key: true  |

# stock テーブル（在庫）
| Column              | Type          | Options                         |
| ------------------- | ------------- | ------------------------------- |
| item                | string        | null: false                     |
| quantity            | integer       | null: false                     |

# sell テーブル（販売）
| Column              | Type          | Options                        |
| ------------------- | ------------- | ------------------------------ |
| sell_no             | string        | null: false                    |
| item                | string        | null: false                    |
| price               | integer       | null: false                    |
| quantity            | integer       | null: false                    |
| user                | references    | null: false, foreign_key: true |


# アプリケーション名
販売管理システム

# アプリケーションの概要
企業が商品の購入、在庫管理、商品の販売をするまでの一連の販売業務におけるお金の、商品の流れをコントロールするシステムです。
本システムでは購入管理機能、在庫管理機能、販売管理機能の３点の機能があります。

# URL
https://sale-management-app1.herokuapp.com/

# テスト用アカウント
Basic認証 admin
パスワード 2222

ログイン用email test00@hoge
ログインパスワード test00

# 利用方法
新規登録・・・名前、email、パスワードを入力して、アカウントを作成します。
ログイン・・・すでにアカウントを作成してある場合、email、パスワードを入力してログインします。
購入画面・・・商品の購入時、注文番号、品名、数量、単価を入力して商品の購入履歴を登録します。これにより、購入履歴一覧と在庫一覧に商品のデータが追加されます。
購入履歴一覧画面・・・これまでに購入した商品の一覧を表示します。また、商品の合計金額を表示します。
在庫一覧画面・・・現在の在庫状況を表示します。
在庫引き落とし画面・・・在庫を減らす数を入力します。
販売画面・・・販売番号、品名、数量、単価を入力して商品の販売履歴を登録します。
販売履歴一覧画面・・・これまでに販売した商品の一覧を表示します。

# 目指した課題解決
このアプリケーションは主に商品の購入、販売を行う商社向けに開発したアプリケーションです。商品の購入、在庫、販売について、一連の流れで管理できるようにすることにより、業務の効率化を図ることができるようになります。

# 洗い出した要件
*ユーザー管理機能・・・ユーザーアカウントを管理します。
*購入履歴一覧表・・・購入した商品の履歴を一覧表示します。
*在庫一覧表・・・在庫の一覧表示をします。
*販売履歴一覧表・・・販売した商品の履歴を一覧表示します。
*購入機能・・・ユーザーが商品の購入処理をします。
*販売機能・・・ユーザーが商品の販売処理をします。

# 実装した機能についての画像やGIFおよびその説明
*トップ画面
購入機能、購入一覧、在庫一覧、販売一覧に遷移します。
[![Image from Gyazo](https://i.gyazo.com/9e99dc6a6c96738968071326f77abf49.png)](https://gyazo.com/9e99dc6a6c96738968071326f77abf49)

※購入画面
トップ画面より購入を選択すると、購入画面に遷移します。
購入画面では注文番号、品名、数量、単価を入力し、購入ボタンをクリックすることで商品の購入情報が登録されます。
[![Image from Gyazo](https://i.gyazo.com/3b16108e5d2452a7dc6385ef22924c26.png)](https://gyazo.com/3b16108e5d2452a7dc6385ef22924c26)

*購入履歴一覧画面
トップ画面より購入一覧に遷移すると購入履歴一覧表が表示されます。
[![Image from Gyazo](https://i.gyazo.com/a6d72c85e108554f56c8856c60a26700.png)](https://gyazo.com/a6d72c85e108554f56c8856c60a26700)

*在庫一覧画面
トップ画面より在庫一覧に遷移すると在庫一覧表が表示されます。
[![Image from Gyazo](https://i.gyazo.com/447be5885e667590910a840ce16442b3.png)](https://gyazo.com/447be5885e667590910a840ce16442b3)

*在庫詳細画面
在庫一覧表より詳細をクリックすると、在庫詳細画面に遷移します。
販売ボタンをクリックすることにより、販売画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/61438659b14b9a490191b81fe3acf787.png)](https://gyazo.com/61438659b14b9a490191b81fe3acf787)

*在庫数引き落とし画面
商品を販売する数量だけ在庫数を引き落とします。
[![Image from Gyazo](https://i.gyazo.com/d282299741385fe0abd6ed5e6e02ebe9.png)](https://gyazo.com/d282299741385fe0abd6ed5e6e02ebe9)

*販売画面
在庫数引き落とし画面より遷移します。
販売番号、品名、数量、金額を入力して、販売ボタンをクリックすることにより、商品の販売情報が登録されます。
[![Image from Gyazo](https://i.gyazo.com/1ef654aa6b9ab84632820187c7b0e9b1.png)](https://gyazo.com/1ef654aa6b9ab84632820187c7b0e9b1)

＊販売履歴一覧画面
トップ画面より販売一覧に遷移すると販売履歴一覧表が表示されます。
[![Image from Gyazo](https://i.gyazo.com/c6106bf2b19ef5b9f2d03c794e6d3af5.png)](https://gyazo.com/c6106bf2b19ef5b9f2d03c794e6d3af5)

# 実装予定の機能
*検索機能・・・購入履歴一覧表、在庫一覧表、販売履歴一覧表でそれぞれ検索機能を追加する予定です。検索ワードで品名の一部を入力することにより、検索ワードと一致したデータを絞ることができます。
*PDF出力機能・・・一覧表をPDF化して、データを保存できるようにします。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/197d23b23f321f3f928e94d6e19bb3bd.png)](https://gyazo.com/197d23b23f321f3f928e94d6e19bb3bd)


