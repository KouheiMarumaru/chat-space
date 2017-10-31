# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|integer|null: false|

### Association
- has_many : users_groups
- has_many : groups, through: :users_groups
- has_many : messages


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many : users
- has_many : users, through: :users_groups


## users_groups関連テーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false,foreign_key: true|
|groups_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :users
- belongs_to :groups


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|img|string||
|users_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :users

