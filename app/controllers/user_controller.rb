class UserController < ApplicationController
  config.autoloader = :classic
  before_action :authenticate_user

  def authenticate_user
    redirect_to new_user_session_path unless current_user
  end
end