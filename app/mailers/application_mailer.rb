class ApplicationMailer < ActionMailer::Base
  default from: 'lisaton@risaton.net'
  layout 'mailer'
  def test_mail
    mail(to: 'lisaton@risaton.net', subject: 'テストメール')
  end
end

