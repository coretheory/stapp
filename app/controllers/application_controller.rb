class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
    set_flash_message! :alert, :warn_pwned if resource.respond_to?(:pwned?) && resource.pwned?
    super
  end

  def authorize_admin(resource)
    redirect_to root_path, alert: 'Easter egg! Feature coming in the future.' unless resource.current_user.admin?
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render nothing: true, status: :not_found }
      format.html { redirect_to main_app.root_url, notice: exception.message, status: :not_found }
      format.js   { render nothing: true, status: :not_found }
    end
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:username] # this can grow to however many fields you need
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
