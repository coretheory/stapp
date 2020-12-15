class ContactMailer < ApplicationMailer
	default from: 'mailbot@sarathayer.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_contact.subject
  #
  def new_contact
    @contact = params[:contact]

    mail(to: "hello@sarathayer.com", subject: "New Contact from #{@contact.name.full} <#{@contact.email}> | SARATHAYER.COM")
  end
end
