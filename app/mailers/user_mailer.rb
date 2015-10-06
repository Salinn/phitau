class UserMailer < ActionMailer::Base
  default from: "pmdspam@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #

  def new_user_alert_email(new_user)
    @new_user = new_user

    user_id_to_mail_to = Position.where(position_name: 'Web Master').first
    if user_id_to_mail_to.nil?
      user_id_to_mail_to = Position.where(position_name: 'President').first
    end
    @user = user_id_to_mail_to.user
    unless @user.nil?
      body_template = 'user_mailer/new_user_alert'
      email_title = "New Person Signed Up On The Website #{new_user.first_name} #{new_user.last_name}"
      to_address = @user.email
      email_template(body_template, email_title, to_address)
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
    body_template = 'user_mailer/mailchimp_sign_up'
    email_title = "Hey #{user.first_name} Would You Like To Be On Our Mailing List?"
    to_address = @user.email
    email_template(body_template, email_title, to_address)
  end

  def new_image_email(user, image)
    @user_who_submitted_the_image = user
    @image = image


    user_id_to_mail_to = Position.where(position_name: 'Web Master').first
    if user_id_to_mail_to.nil?
      user_id_to_mail_to = Position.where(position_name: 'President').first
    end
    @user = user_id_to_mail_to.user

    unless @user.nil?
      body_template = 'user_mailer/new_image'
      email_title = "New Image Submitted by #{@user_who_submitted_the_image.first_name} #{@user_who_submitted_the_image.last_name}"
      to_address = @user.email
      email_template(body_template, email_title, to_address)
    end
  end

  def welcome_email(user, generated_password)
    @user = user
    @user.send_reset_password_instructions
    body_template = 'user_mailer/welcome'
    email_title = "Welcome to the RIT Phi Kappa Tau Website!"
    to_address = @user.email
    email_template(body_template, email_title, to_address)
  end

  def interview_time_email(user)
    @user = user
    @interview_time = user.rush_interviews.last.interview_time

    body_template = 'user_mailer/interview_time'
    email_title = "Thanks for signing up for an interview at #{@interview_time.interview_time.strftime('%l:%M %p')} on #{@interview_time.interview_date.strftime('%A, %B %d')}"
    to_address = @user.email

    email_template(body_template, email_title, to_address)
  end

  def interview_time_reminder_email(user)
    @user = user
    @interview_time = user.rush_interviews.last.interview_time

    body_template = 'user_mailer/interview_time'
    email_title = "This is a reminder about the interview at #{@interview_time.interview_time.strftime('%l:%M %p')} on #{@interview_time.interview_date.strftime('%A, %B %d')}"
    to_address = @user.email

    email_template(body_template, email_title, to_address)
  end

  def standards_board_email(standards_board)
    body_template = 'user_mailer/standards_board'
    email_title = "#{standards_board.user.name} has been sent to Standards Board by #{standards_board.position.position_name}"

    @user = Position.find_by(position_name: 'President').user
    to_address = @user.email
    email_template(body_template, email_title, to_address)

    @user = Position.find_by(position_name: 'First President').user
    to_address = @user.email
    email_template(body_template, email_title, to_address)
  end

  def email_template(body_template, email_title, to_address)
    @body_template = body_template
    subject = email_title

    mail(to: to_address , subject: subject)
  end
end