ActionMailer::Base.smtp_settings = {
    user_name: Rails.application.credentials.sendgrid[:SENDGRID_USERNAME],
    password: Rails.application.credentials.sendgrid[:SENDGRID_PASSWORD],
    domain: 'sarathayer.com',
    address: 'smtp.sendgrid.net',
    port: '587',
    authentication: 'plain',
    enable_starttls_auto: true
  }