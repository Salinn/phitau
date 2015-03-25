class UserMailer < ActionMailer::Base
  default from: "pmdpkt@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def new_user_alert_email(new_user)
    @new_user = new_user

    user_id_to_mail_to = Position.where(position_name: 'Web Master').first
    if user_id_to_mail_to.nil?
      user_id_to_mail_to = Position.where(position_name: 'President').first
    end
    @user = user_id_to_mail_to.user
    unless @user.nil?
      mail to: @user.email, subject: "New Person Signed Up On The Website #{new_user.first_name} #{new_user.last_name}"
    end
  end

  def mailchimp_sign_up_user_email(user)
    user_id_to_mail_to = Position.where(position_name: 'Alumni Relations')
    position = Position.where(position_name: 'President')
    if user_id_to_mail_to.nil? && position.user_id.blank?
      user_id_to_mail_to = Position.where(position_name: 'President')
    else
      user_id_to_mail_to = Position.where(position_name: 'Web Master')
    end
    @user_to_contact = user_id_to_mail_to.first.user
    @user = user
    @domain = ENV['GMAIL_DOMAIN']
    mail to: @user.email, subject: "Hey #{user.first_name} Would You Like To Be On Our Mailing List?"
  end

  def new_image_email user, image
    @user_who_submitted_the_image = user
    @image = image

    user_id_to_mail_to = Position.where(position_name: 'Web Master').first
    if user_id_to_mail_to.nil?
      user_id_to_mail_to = Position.where(position_name: 'President').first
    end
    @user = user_id_to_mail_to.user

    unless @user.nil?
      mail to: @user.email, subject: "New Image Submitted by #{@user_who_submitted_the_image.first_name} #{@user_who_submitted_the_image.last_name}"
    end
  end
end
