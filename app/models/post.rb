class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  has_rich_text :content
end
