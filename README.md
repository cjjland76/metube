# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| name      | string | null: false |
| email     | string | null: false |
| password  | string | null: false |

### Association

- has_many :videos
- has_many :comments


## videos テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| title       | string     | null: false                    |
| description | text       | null: false                    |
| video       | string     | null: false                    |
| image       | string     | null: false                    |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| video   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :video
