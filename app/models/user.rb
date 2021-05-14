class User < ApplicationRecord
  #アソシエーション
  has_many :posts, dependent: :destroy
  
  #refile用
  attachment :image

  #バリデーション
  validates :name, {presence: :true}
  validates :email, {presence: :true, uniqueness: :true}
end
