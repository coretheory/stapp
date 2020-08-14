class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "New Contact Submission | SARATHAYER.COM",
      :to => "hello@sarathayer.com",
      :from => "mailbot@sarathayer.com"
    }
  end
end