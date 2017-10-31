# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true,index: true|
|mail|string|null: false,unique: true|

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
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string||
|img|string||
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

