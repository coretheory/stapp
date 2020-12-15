class Gallery < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  
	belongs_to :user

	has_rich_text :description

	has_one_attached :gallery_image

	validates :gallery_image, presence: true
	validates :title, presence: true, uniqueness: true
	validates :user_id, presence: true
end
