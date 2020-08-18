class Contact < ApplicationRecord
	VALID_NAME_REGEX = /\A[a-z ,.'-]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_person_name

  attribute :nickname, :captcha  => true

  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :email, presence: true, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }
  validates :company, length: { maximum: 50 }
  validates :message, presence: true, length: { minimum: 20, maximum: 2000}
end
