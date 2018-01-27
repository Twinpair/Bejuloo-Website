class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_message.subject
  #
  def send_message(message)
    @message = message

    mail to: "artbybejulo@gmail.com", subject: "Message received on your personal website"
  end
end
