class Post < ApplicationRecord
	belongs_to :user

	extend FriendlyId
  friendly_id :title, use: :slugged

	has_rich_text :body

	has_one_attached :header_image
	has_many_attached :uploads
	
	validates :title, presence: true
  validates :body, length: { maximum: 8000 }
end
