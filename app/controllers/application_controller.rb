class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #skip_before_action :verify_authenticity_token, if: :json_request?
  protect_from_forgery with: :exception
    #:exception
end
