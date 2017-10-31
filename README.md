# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true,add_index :users,:name|
|mail|integer|null: false,unique: true|

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
- has_many : messages

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
- belongs_to :groups

