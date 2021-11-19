class Admin::PostsController < AdminController
  config.autoloader = :classic
  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end
end