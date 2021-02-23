# テーブル設計

## users テーブル

| Column     | Type     | Options                   |
| ---------- | ------   | --------------------------|
| nick_name  | string   | null: false               |
| email      | string   | null: false, unique: true |
| password   | string   | null: false               |
| first_kaji | string   | null: false               |
| family_kaji| string   | null: false               |
| first_kana | string   | null: false               |
| family_kana| string   | null: false               |

### Association

- has_many :buys
- has_many :items

## items テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| product_name | string       | null: false                    |
| seller       | string       | null: false, unique: true      |
| descliption  | string       | null: false                    |
| state        | string       | null: false                    |
| delivery_fee | string       | null: false                    |
| area         | string       | null: false                    |
| shippping    | string       | null: false                    |
| price        | string       | null: false                    |

### Association

- has_many   :addres
  belongs_to :users
  has_one    :buys

## addres テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| postal_code    | string     | null: false                    |
| prefectures    | string     | null: false                    |
| municipalities | string     | null: false                    |
| addres         | string     | null: false                    |
| phone_number   | string     | null: false                    |

### Association

- belongs_to :items
- belongs_to :buys


## buys テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| buyer          | string     | null: false,                   |
| product_name   | string     | null: false,                   |

### Association

- belongs_to :items
- belongs_to :users
- has_many   :addres

## buys_items テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| buy_id   | references | null: false, foreign_key: true |
| item_id  | references | null: false, foreign_key: true |

### Association

- belongs_to :buys
- belongs_to :items