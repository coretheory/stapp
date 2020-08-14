class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end

  def create
    include Hcaptcha::Adapters::ControllerMethods

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if verify_hcpatcha(message: "Don't forget the hCaptcha!") && @contact.deliver
      flash.now[:error] = nil
  		redirect_to root_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

end
