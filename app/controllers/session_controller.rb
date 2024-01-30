class SessionController < ApplicationController
  # def currentuser
  #   session[:currentuser] = ''
  # end
  def new

  end

  def log_in(user)
    # code here
    # @current_user = user
  end

  def create
    user = User.find_by(email: params[:session].fetch('email'))
    if user && user.authenticate(params[:session][:password])
      log_in user
      session[:current_user]= user
      # @currentuser = user
      # @current_user = user
      # session[:currentuser] = user
      redirect_to users_show_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
