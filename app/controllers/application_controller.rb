class ApplicationController < ActionController::Base
  before_action :login_required, only: [:index, :show]
  
  
  
  private
   def login_required
       redirect_to users_guest_sign_in_path  unless current_user
   end
  
end
