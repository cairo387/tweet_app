class User < ApplicationRecord

  #refile用
  attachment :image

  #バリデーション
  validates :name, {presence: :true}
  validates :email, {presence: :true, uniqueness: :true}
end
