class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_login_user(user)
    user = user
    session[:login] = User.find_by( user_id: user )
    @cur_user = session[:login]
  end
  
  def log_errors(object)
    unless object.valid?
      object.errors.full_messages.each { |mesg|
        logger.info(mesg)
        if flash[:danger].nil? 
          flash[:danger] = mesg
        else
          flash[:danger] = flash[:danger] + ", " + mesg 
        end
      }
    end
  end

end
