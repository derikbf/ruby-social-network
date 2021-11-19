class User::ProfileController < UserController
  config.autoloader = :classic

  def show    
  end

  def potential_to_follow
    @potential_to_follow = User.where.not(id: current_user.following.pluck(:id)).where.not(id: current_user.id)
  end
  
end
