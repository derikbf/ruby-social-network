class Admin::UsersController < AdminController
  config.autoloader = :classic

  def index
    @users = User.order(id: :desc)
  end
  
end