class UserMailer < ApplicationMailer
  def test_mail
    UserMailer.test_mail.deliver_now
  end
end
