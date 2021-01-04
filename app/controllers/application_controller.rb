class ApplicationController < ActionController::Base
  before_action :require_login, only: [:new, :show]
  
  
  
  private
   def require_login
    unless current_user
    redirect_to new_user_session_path
    end
   end
end
