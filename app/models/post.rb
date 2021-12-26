class Post < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  has_rich_text :content
end
