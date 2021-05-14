class Post < ApplicationRecord
  #アソシエーション
  belongs_to :user
  
  #バリデーション
  validates :content, {presence:true, length:{maximum: 140}}
  validates :user_id, presence:true
end
