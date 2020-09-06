class AudienceMailer < ApplicationMailer
  default from: 'hello@sarathayer.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.audience_mailer.audience_activation.subject
  #
  def audience_activation(audience)
    @audience = audience

    mail to: audience.email, subject: "Newsletter activation | SARATHAYER.com"
  end

  def audience_activation_success(audience)
    @audience = audience

    mail to: audience.email, subject: "Newsletter activated! | SARATHAYER.com"
  end
end
