class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if verify_hcaptcha(secret_key: Rails.application.credentials.hcaptcha[:HCAPTCHA_SECRET_KEY], message: "Don't forget the hCaptcha!") && @contact.deliver
      flash.now[:error] = nil
  		redirect_to root_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = "Uh oh! Can't send that message. Did you complete the hCaptcha?"
      render :new
    end
  end

end
