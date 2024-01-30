class DeleteAccount < ApplicationRecord
  def destroy
    user = session[:current_user] # 仮にcurrent_userメソッドが現在ログインしているユーザーを返すと仮定

    if user.destroy
      reset_session # ユーザーを削除した後はセッションをリセット
      redirect_to root_path, notice: 'アカウントを削除しました。'
    else
      redirect_to root_path, alert: 'アカウントの削除に失敗しました。'
    end
  end
end
