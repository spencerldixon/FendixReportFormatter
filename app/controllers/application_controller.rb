class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from StandardError, with: :rescue_standard_exception

  def rescue_standard_exception(exception)
			logger.warn "Error! #{exception}"
			redirect_to :back, notice: "An error occurred! - #{exception}"
	end
end
