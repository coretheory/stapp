# Preview all emails at http://localhost:3000/rails/mailers/audience_mailer
class AudienceMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/audience_mailer/audience_activation
  def audience_activation
    audience = Audience.new(email: 'markthayer@hey.com')
    audience.activation_token = Audience.new_token
    AudienceMailer.audience_activation(audience)
  end

  # Preview this email at http://localhost:3000/rails/mailers/audience_mailer/email_update
  def email_update
    AudienceMailer.email_update
  end

  # Preview this email at http://localhost:3000/rails/mailers/audience_mailer/email_destroy
  def email_destroy
    AudienceMailer.email_destroy
  end

end
