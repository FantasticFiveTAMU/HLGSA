class SessionsController < ApplicationController
  def new
  end
  def create
    redirect_to welcome_index_path
  end
  def destroy
  end

end
