class HomeController < ApplicationController
	skip_load_and_authorize_resource
	
  def index
  	@audience = Audience.new
  end

  def about
  end

  def contact
  end
end
