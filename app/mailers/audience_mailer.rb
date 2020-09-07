class AudienceMailer < ApplicationMailer
  default from: 'hello@sarathayer.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.audience_mailer.audience_activation.subject
  #
  def new_audience
    @audience = params[:audience]

    mail(to: @audience.email, subject: "Welcome! @ sarathayer.com")
  end

  def new_post_notification(notification)
    @notification = notification

    mail(to: @notification.recipient.email, subject: "New post by Sara @ sarathayer.com")
  end
end
