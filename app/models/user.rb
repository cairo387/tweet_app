class User < ApplicationRecord
  #バリデーション
  validates :name, {presence: :true}
  validates :email, {presence: :true, uniqueness: :true}
end
