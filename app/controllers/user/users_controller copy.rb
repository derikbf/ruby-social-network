class User::UsersController < UserController
  config.autoloader = :classic
  
  def show
    @user = User.find(params[:id])
    @comment = Comment.new
  end

end
