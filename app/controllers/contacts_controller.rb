class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
  		redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = "Woops, cannot send that message. Please try again."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:company, :first_name, :last_name, :email, :message, :nickname)
  end

end
