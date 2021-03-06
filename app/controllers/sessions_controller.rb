class SessionsController < ApplicationController
  def new
  end
  def create
    $user = User.find_by_email(params[:session][:email].downcase)
    if $user && $user.authenticate(params[:session][:password])
      log_in $user
      redirect_to welcome_index_path
    else
      flash.now[:error] ='Invalid Username/Password'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to login_path
  end
end
