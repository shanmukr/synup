class HomeController < ApplicationController

  def index
  end

  def user_validation
    user = get_login_user(params[:user_id])
    if user.present?
			  redirect_to :controller => "users", :action => "show", :user => user 
    else
      raise "bye"
    end
    
  end

  def logout
  end

end
