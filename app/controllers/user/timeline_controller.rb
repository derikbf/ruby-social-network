class User::TimelineController < UserController
  config.autoloader = :classic
  
  def index
    @posts = Post.where(user_id: current_user.following.pluck(:id)).order(created_at: :desc)
    @comment = Comment.new
  end
end
