# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|integer|null: false|

### Association
- has_many : user_groups
- has_many : groups, through: :user_groups
- has_many : chat


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many : user
- has_many : user, through: :user_groups


## user_groups関連テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key: true|
|groups_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :groups


## chatテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|img|string||
|user_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user

