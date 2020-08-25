class Project < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  
	belongs_to :user

	has_rich_text :intro
	has_rich_text :body
	has_rich_text :outro
	has_rich_text :project_team

	has_one_attached :header_image
	has_one_attached :title_image
	has_one_attached :footer_image
	has_many_attached :body_images

	validates :title, presence: true
	validates :year, presence: true
	validates :project_type, presence: true
	validates :user_id, presence: true
end
