class Admins::SessionsController < Devise::SessionsController
  config.autoloader = :classic
  def after_sign_out_path_for(admin)
    new_admin_session_path
  end

end