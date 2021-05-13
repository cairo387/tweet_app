class Post < ApplicationRecord
  #バリデーション
  validates :content, {presence:true, length:{maximum: 140}}
end
