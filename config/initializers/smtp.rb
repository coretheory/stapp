ActionMailer::Base.smtp_settings = {
    user_name: "<%= Rails.application.credentials.sendgrid[:sg_username] %>",
    password: "<%= Rails.application.credentials.sendgrid[:sg_password] %>",
    domain: "<%= Rails.application.credentials.sendgrid[:sg_domain] %>",
    address: "<%= Rails.application.credentials.sendgrid[:sg_address] %>",
    port: "<%= Rails.application.credentials.sendgrid[:sg_port] %>",
    authentication: "<%= Rails.application.credentials.sendgrid[:sg_authentication] %>",
    enable_starttls_auto: "<%= Rails.application.credentials.sendgrid[:sg_enable_starttls_auto] %>"
  }