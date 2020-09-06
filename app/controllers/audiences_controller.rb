class AudiencesController < ApplicationController
	load_and_authorize_resource
	before_action :set_audience, only: [:show, :edit, :update, :destroy]

	def index
		@audience = Audience.all
	end

	def show
  end

  def new 
    @audience = audience.new
  end

  def edit
  end

	def create
		@audience = Audience.new(audience_params)

		respond_to do |format|
			if @audience.save
				email = AudienceMailer.with(audience: @audience)
				email.new_audience.deliver_later
				format.html { redirect_to root_path, notice: "Woohoo! You have signed up successfully." }	
			else
				format.html { redirect_to root_path, alert: "Woops, that email couldn't be signed up." }
				format.json { render json: @audience.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
    respond_to do |format|
      if @audience.update(audience_params)
        format.html { redirect_to @audience, notice: 'Audience member successfully updated.' }
        format.json { render :show, status: :ok, location: @audience }
      else
        format.html { render :edit }
        format.json { render json: @audience.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy
    @audience.destroy
    respond_to do |format|
      format.html { redirect_to audiences_path, notice: 'Audience member successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	private

		def set_audience
      @audience = Audience.find(params[:id])
    end

		def audience_params
			params.require(:audience).permit(:email, :nickname)
		end
end