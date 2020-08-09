class ContextualObject < ApplicationRecord
	has_one_attached :header_image
	has_one_attached :footer_image
	has_many_attached :body_images
end
