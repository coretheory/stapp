class Audience < ApplicationRecord
	attr_accessor :activation_token
	before_save :downcase_email
	before_create :create_activation_digest

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	attribute :nickname, :captcha  => true
	
	has_many :notifications, as: :recipient

	validates :email, presence: true, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }
	validates :email, uniqueness: true

	def Audience.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	def Audience.new_token
		SecureRandom.urlsafe_base64
	end

	def authenticated?(attribute, token)
		digest = send("#{attribute}_digest")
		return false if digest.nil?
		BCrypt::Password.new(digest).is_password?(token)
	end

	def activate
		update_attribute(:activated, true)
		update_attribute(:activated_at, Time.zone.now)
	end

	def send_activation_email
		AudienceMailer.audience_activation(self).deliver_later
	end

	def send_activation_success_email
		AudienceMailer.audience_activation_success(self).deliver_later
	end

	private

		def downcase_email
			self.email = email.downcase
		end

		def create_activation_digest
			self.activation_token = Audience.new_token
			self.activation_digest = Audience.digest(activation_token)
		end
end
