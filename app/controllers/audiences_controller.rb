class AudiencesController < ApplicationController
	load_and_authorize_resource
	before_action :set_audience, only: [:show, :edit, :update, :destroy]

	def index
		@audience = Audience.all
	end

	def create
		@audience = Audience.new(audience_params)

		respond_to do |format|
			if @audience.save
				@audience.send_activation_email
				format.html { redirect_to root_path, notice: "Please check your email to activate your newsletter." }	
			else
				format.html { redirect_to root_path, alert: "Woops, that email couldn't be signed up." }
				format.json { render json: @audience.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
    @audience.destroy
    respond_to do |format|
      format.html { redirect_to index_audience_path, notice: 'Email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	private

		def set_audience
      @audience = Audience.find(params[:id])
    end

		def audience_params
			params.require(:audience).permit(:email)
		end
end