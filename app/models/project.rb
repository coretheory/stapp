class Project < ApplicationRecord
	belongs_to :user

	has_rich_text :intro
	has_rich_text :body
	has_rich_text :outro
	has_rich_text :project_team

	has_one_attached :header_image
	has_one_attached :footer_image
	has_many_attached :body_images

	validates_presence_of :title
	validates_presence_of :year
	validates_presence_of :project_type
	validates_presence_of :user_id
	validates_presence_of :intro
	validates_presence_of :body
	validates_presence_of :outro
end
