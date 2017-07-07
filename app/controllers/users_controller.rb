class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "New User Successfully Created"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "Something Went Wrong, Please Try Again"
      redirect_to "/signup"
    end
  end



private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end


end
