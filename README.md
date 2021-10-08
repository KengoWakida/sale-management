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

## items テーブル（品目）
| Column      | Type          | Options           |
| ----------- | ------------- | ----------------- |
| item        | string        | null: false       |

## user テーブル（ユーザー）
| Column              | Type          | Options             |
| ------------------- | ------------- | ------------------- |
| name                | string        | null: false         |
| email               | string        | null: false, unique |
| encrypted-password  | srting        | null: false         |

# purchase テーブル（購入）
| Column              | Type          | Options             |
| ------------------- | ------------- | ------------------- |
| order_no            | integer       | null: false         |
| item_code           | integer       | null: false         |
| quantity            | integer       | null: false         |
| price               | integer       | null: false         |

# stock テーブル（在庫）
| Column              | Type          | Options             |
| ------------------- | ------------- | ------------------- |
| item_code           | integer       | null: false         |
| quantity            | integer       | null: false         |

# sale テーブル（販売）
| Column              | Type          | Options             |
| ------------------- | ------------- | ------------------- |
| item_code           | integer       | null: false         |
| quantity            | integer       | null: false         |

