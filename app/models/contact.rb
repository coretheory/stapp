class Contact < MailForm::Base
  VALID_NAME_REGEX = /\A[a-z ,.'-]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  attribute :first_name
  validates :first_name, presence: true, length: { minimum: 2, maximum: 25}, format: { with: VALID_NAME_REGEX }

  attribute :last_name
  validates :last_name, presence: true, length: { minimum: 2, maximum: 25}, format: { with: VALID_NAME_REGEX }

  attribute :email
  validates :email, presence: true, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }

  attribute :company
  validates :company, length: { maximum: 50 }

  attribute :message
  validates :message, presence: true, length: { minimum: 20, maximum: 2000}

  attribute :nickname, :captcha  => true

  def headers
    {
      :subject => "New Contact from #{first_name} #{last_name} <#{email}> | SARATHAYER.COM",
      :to => "hello@sarathayer.com",
      :from => "mailbot@sarathayer.com"
    }
  end
end