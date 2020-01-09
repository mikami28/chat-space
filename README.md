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
|body|text|null: false|
|image|string|| |
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key:true|
### Association
- belongs_to :user
- belongs_to :group
 
## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|text|null: false|
|user_id|inteder|null: false, foreign_key: true|
### Association
- belong_to :user
- has_many :comments
