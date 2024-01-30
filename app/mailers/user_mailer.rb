class UserMailer < ApplicationMailer
  default from: "lisaton@risaton.net"
  def test_email
    @user = params[:user]
    mail(to: 'lisaton@risaton.net', subject: 'Testing from Rails!')
    UserMailer.with(user: @user).test_email.deliver_now
  end
end
