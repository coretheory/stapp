class Audience < ApplicationRecord
	before_save :downcase_email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	has_many :notifications, as: :recipient

	attribute :nickname, :captcha  => true

	validates :email, presence: true, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }
	validates :email, uniqueness: true

	private

		def downcase_email
			self.email = email.downcase
		end
end
