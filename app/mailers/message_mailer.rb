class MessageMailer < ActionMailer::Base
  def prepare(message_obj)
    @message = message_obj

    image_path = Rails.root.join('app/assets/images')
    attachments.inline['ico'] = File.read(image_path.join('ico.png'))

    mail(to: ENV['MAIL_USER'], from: message_obj.email, subject: 'Bla bla bla')
  end
end
