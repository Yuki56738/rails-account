class SignupController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'アカウントを作成しました。'
    else
      render :new
    end
  end

  def destroy
    @user = User.find_by(email: params[:email])
  end

  def destroy_params
    params.require(:email)
  end
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)

  end
end
