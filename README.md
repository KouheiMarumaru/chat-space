# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|name|string|null: false,foreign_key: true|
|mail|integer|null: false,foreign_key: true|
|pass|integer|null: false|

### Association
- belongs_to :group
- belongs_to :user_group


## groupテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false,foreign_key: true|
|name|string|null: false,foreign_key: true|

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
|content|string||
|img|string||
|user_id|integer|null: false|
|created_at|datetime|null: false|

### Association
- belongs_to :user
- belongs_to :group

