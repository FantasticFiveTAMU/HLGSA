class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  def authenticate
    redirect_to(login) if $user.nil?
  end
end
