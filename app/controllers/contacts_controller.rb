class ContactsController < ApplicationController
  load_and_authorize_resource
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contact = Contact.all
  end

  def show
  end

  def new 
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    #@contact.request = request

    respond_to do |format|
      if @contact.save
        ContactMailer.with(contact: @contact).new_contact.deliver_later
        format.html { redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!' }
      else
        format.html { render :new, notice: 'Your message could not be sent, please try again.' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_path, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:company, :first_name, :last_name, :email, :message, :nickname)
    end

end
