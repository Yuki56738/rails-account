class TopController < ApplicationController
  def index
    @users = User.all
  end
  def send_mail
    UserMailer.send_mail
  end
end
