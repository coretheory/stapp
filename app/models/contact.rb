class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "New Contact Submission from #{:name} | SARATHAYER.COM",
      :to => "hello@sarathayer.com",
      :from => %("#{:name}" <#{:email}>)
    }
  end
end