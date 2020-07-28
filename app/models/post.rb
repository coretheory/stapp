class Post < ApplicationRecord
	belongs_to :user

	has_rich_text :body

	validates :title, presence: true
  validates :body, length: { maximum: 8000 }
end
