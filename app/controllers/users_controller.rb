class UsersController < ApplicationController
  def show
    @user = User.find_by(user_name: session[:current_user]['user_name'])
  end
  def destroy
    @user = User.find_by(user_name: session[:current_user]['user_name'])
    @user.destroy
  end
end
