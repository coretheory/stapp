class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if verify_hcaptcha(secret_key: Rails.application.credentials.hcaptcha[:HCAPTCHA_SECRET_KEY]) && @contact.deliver
      flash.now[:error] = nil
  		redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = "Cannot send message. Did you complete the hCaptcha?"
      render :new
    end
  end

end
