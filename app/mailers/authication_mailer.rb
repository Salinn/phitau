class AuthicationMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.authication_mailer.asking_to_be_a_member.subject
  #
  def asking_to_be_a_member user
    mail to: user.email, subject: "Request"
  end
end
