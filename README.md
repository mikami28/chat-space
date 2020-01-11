## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|passwaord|string|null: false|
|nickname|string|null: false|
### Asosociation
- has_many :messages
- has_many :groups

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text| |
|image|string|| |
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
 
## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :users
- has_many :messages

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
