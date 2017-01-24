class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validates :user_id, presence: true
end
