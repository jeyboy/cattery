class SendMailer < ActionMailer::Base
  default from: 'notification@duofold.com'

  def message(email, text)

  end
end
