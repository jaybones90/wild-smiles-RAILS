class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "You've Successfully Signed In"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've Successfully Signed Out."
    redirect_to root_path
  end


end
