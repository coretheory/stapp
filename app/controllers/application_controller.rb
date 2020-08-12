class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render nothing: true, status: :not_found }
      format.html { redirect_to root_path, notice: 'Easter egg! Feature coming this future.' }
      format.js   { render nothing: true, status: :not_found }
    end
  end

	def after_sign_in_path_for(resource)
    set_flash_message! :alert, :warn_pwned if resource.respond_to?(:pwned?) && resource.pwned?
    super
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:username] # this can grow to however many fields you need
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
