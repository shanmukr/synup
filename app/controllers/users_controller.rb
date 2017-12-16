class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end  

  def create
    @user = User.new(user_authorized_params)
    if @user.save!
      flash[:success] = "Successfully created the account."
      redirect_to :action => "index"
    else
      log_errors(@user)
      redirect_to :action => "new" 
    end
  end  

  def edit
    @user = User.find(params[:id])
  end  

  def update
    @user = User.find(params[:id])
    if @user.update(user_authorized_params)
      flash[:success] = "Successfully updated the Details."
      redirect_to :action => "index"
    else
      log_errors(@user)
      redirect_to :action => "edit" 
    end
  end

  def show
    @user = User.find(params[:user])
  end
  
  private
  def user_authorized_params
    params.require(:user).permit(:first_name, :Last_name, :user_id, :email, :phone )
  end

end
