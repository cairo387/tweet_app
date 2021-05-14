class Post < ApplicationRecord
  #アソシエーション
  belongs_to :user
  
  #バリデーション
  validates :content, {presence:true, length:{maximum: 140}}
  validates :user_id, presence:true
  
  #インスタンスメソッド定義
  def user
    return User.find_by(id: self.user_id)
  end
end
