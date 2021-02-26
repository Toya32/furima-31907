# テーブル設計

## users テーブル

| Column               | Type     | Options                   |
| ----------           | ------   | --------------------------|
| nick_name            | string   | null: false               |
| birthday             | date     | null: false               |
| email                | string   | null: false, unique: true |
| encrypted_password   | string   | null: false               |
| first_kanji          | string   | null: false               |
| family_kanji         | string   | null: false               |
| first_kana           | string   | null: false               |
| family_kana          | string   | null: false               |

### Association

- has_many :buys_item
- has_many :items

## items テーブル

| Column          | Type         | Options                        |
| --------------- | ------------ | ------------------------------ |
| product_name    | string       | null: false                    |
| seller          | string       | null: false, unique: true      |
| description     | string       | null: false                    |
| category_id     | integer      | null: false                    |
| state_id        | integer      | null: false                    |
| delivery_fee_id | integer      | null: false                    |
| area_id         | integer      | null: false                    |
| shipping_id     | integer      | null: false                    |
| price           | integer      | null: false                    |

### Association

  belongs_to :users
  has_one    :buys_items

## addresses テーブル

| Column            | Type        | Options                        |
| --------------    | ----------- | ------------------------------ |
| postal_code       | string      | null: false                    |
| prefectures_id    | integer     | null: false                    |
| municipalities    | string      | null: false                    |
| address           | string      | null: false                    |
| building_name     | string      |                                |
| phone_number      | string      | null: false                    |

### Association

- belongs_to :buys_items
- references :buys_items, foreign_key: true


## buys_items テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :addresses