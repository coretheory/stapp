class AudienceActivationsController < ApplicationController
	def edit
		audience = Audience.find_by(email: params[:email])
		if audience && !audience.activated? && audience.authenticated?(:activation, params[:id])
			audience.activate
			audience.send_activation_success_email
			flash[:success] = "Newsletter activated!"
			redirect_to root_url
		else
			flash[:danger] = "The activation link was invalid."
			redirect_to root_url
		end
	end
end
