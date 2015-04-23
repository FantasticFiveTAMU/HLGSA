class WelcomeController < ApplicationController
  before_filter :authenticate
  def index
  end
  def help
  end
end
