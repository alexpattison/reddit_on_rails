class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:session_token] = @user.reset_session_token!
      redirect_to "/subs"
    else
      flash[:errors] = ['invalid username or pw']
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end