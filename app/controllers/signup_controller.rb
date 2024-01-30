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
    @user = session[:current_user] # 仮にcurrent_userメソッドが現在ログインしているユーザーを返すと仮定

    if @user.destroy
      reset_session # ユーザーを削除した後はセッションをリセット
      redirect_to root_path, notice: 'アカウントを削除しました。'
    else
      redirect_to root_path, alert: 'アカウントの削除に失敗しました。'
    end
  end
  def destroy_params
    params.require(:email)
  end
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)

  end
end
