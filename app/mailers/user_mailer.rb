class UserMailer < ActionMailer::Base
  default from: "pmdpkt@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation user
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end
  def new_user_alert_email(new_user)
    @new_user = new_user

    user_id_to_mail_to = Chair.where(role: 'admin')
    if user_id_to_mail_to.nil?
      user_id_to_mail_to = Eboard.where(role: 'president')
    end
    @user = user_id_to_mail_to.first.user
    mail to: @user.email, subject: "New Person Signed Up On The Website #{new_user.first_name} #{new_user.last_name}"
  end
end
