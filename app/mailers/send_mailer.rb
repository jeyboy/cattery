class SendMailer < ActionMailer::Base
  default from: 'notification@duofold.com'

  def message(message)

  end
end
