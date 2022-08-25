## usersテーブル

| Column             | Type   | Options                  |
| nickname           | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| first_name         | string | null: false              |
| family_name        | string | null: false              |
| first_name_kana    | string | null: false              |
| family_name_kana   | string | null: false              |
| birth_date         | date   | null: false              |
| postal_code        | string | null: false              |
| area_id            | integer| null: false              |
| municipalities     | string | null: false              |
| address            | string | null: false              |
| building_name      | string |                          |

### Association
- has_many :dogs
- has_many :purchases

## dogsテーブル

| Column             | Type       | Options                        |
| name               | string     | null: false                    |
| price              | integer    | null: false                    |
| gender_id          | integer    | null: false                    |
| explanation        | text       | null: false                    |
| hair_color         | integer    | null: false                    |
| area_id            | integer    | null: false                    |
| birth_date_id      | integer    | null: false                    |
| height             | integer    | null: false                    |
| wight              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :purchase

###　purchasesテーブル

| Column             | Type       | Options                        |
| user               | references | null: false, foreign_key: true |
| dog                | references | null: false, foreign_key: true |

### Association
- belong_to :user