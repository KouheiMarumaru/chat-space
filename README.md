# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|user_name|VARCHAR|null: false,foreign_key: true|
|mail|integer|null: false,foreign_key: true|
|pass|integer|null: false|

### Association
- belongs_to :group
- belongs_to :user_group


## groupテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|group_name|VARCHAR|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :user_group


## user_group関連テーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|user_id|integer|null: false|
|group_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :group
- belongs_to :user_group


## chatテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|chat_txt|VARCHAR||
|img|BLOB||
|user_id|integer|null: false|
|created_at|DATETIME|null: false|

### Association
- belongs_to :user
- belongs_to :group

