class ApplicationController < ActionController::Base
  before_action :login_required
  
  
  
  private
   def login_required
       redirect_to   unless currentt_user
   end
  
end
