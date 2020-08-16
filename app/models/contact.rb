class Contact < MailForm::Base
  attribute :first_name
  validates :first_name, presence: true, length: { minimum: 2, maximum: 25}
  validates_format_of :first_name, with: /\A[a-z ,.'-]+\z/i

  attribute :last_name
  validates :last_name, presence: true, length: { minimum: 2, maximum: 25}
  validates_format_of :last_name, with: /\A[a-z ,.'-]+\z/i

  attribute :email
  validates :email, presence: true, length: { maximum: 250 }
  validates_format_of :email, with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :company
  validates :company, presence: true, length: { minimum: 2, maximum: 50 }
  validates_format_of :company, with: /\A[a-z ,.'-]+\z/i

  attribute :message
  validates :message, presence: true, length: { minimum: 20, maximum: 2000}

  attribute :nickname, :captcha  => true

  def headers
    {
      :subject => "New Contact from #{first_name} #{last_name} <#{email}> @ #{company} | SARATHAYER.COM",
      :to => "hello@sarathayer.com",
      :from => "mailbot@sarathayer.com"
    }
  end
end