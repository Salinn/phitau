class User < ActiveRecord::Base
  has_many :positions
  has_many :roles
  has_many :receipts
  has_many :attendances
  has_many :community_services
  has_many :rush_interviews
  has_many :interview_questionnaires

  has_and_belongs_to_many :attendances


  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }

  acts_as_paranoid
=begin
  validate check_user_status

  def check_user_status
    USERSTATUSES.include?(self.user_status)
  end
=end

  USERSTATUSES = ["potential new member", "associate member", "alumni", "current brother", "coop"]
  ALLROLES = ["alumni", "current brother", "potential new member", "dummy",
              "president","first_vp","second_vp","treasurer","sergeant","chaplain",
              "recruitment", "alumni_relations", "web_master","brotherhood","social","community_service",
              "philanthropy","business_ops", "housing_manager", "secretary",
              "admin", "writer"]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, ImageUploader

  if ENV['GMAIL_DOMAIN'] == 'http://gammanu.org/'
    after_create :send_alert_email
    after_create :check_to_send_mailchimp_email
  end

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def send_alert_email
    UserMailer.delay(queue: 'email', run_at: 5.minutes.from_now).new_user_alert_email(self)
  end

  def check_to_send_mailchimp_email
    if check_mailchimp_list_for_user? && self.user_status != 'potential new member'
      mailchimp_send_email_invite
    end
  end

  def check_mailchimp_list_for_user?
    list_id = "c318382ea7"
    gb = Gibbon::API.new
    a = gb.lists.member_info({:id => list_id, :emails => [{:email => self.email}]})
    a["success_count"] == 0
  end

  def mailchimp_send_email_invite
    UserMailer.delay(queue: 'email', run_at: 5.minutes.from_now).mailchimp_sign_up_user_email(self)
  end

  def send_mailchimp_email
    mailchimp_send_email_invite
    redirect_to root_path, notice: "Thanks for registering for the Gamma Nu's Alumni News Letter!"
  end

  def multiple_have_permissions?(positions) #Takes an array of positions
    positions.any? { |position| have_permissions?(position)}
  end

  def have_permissions?(permission)
    user_role?(permission) || positions_role?(permission)
  end

  def user_role?(user_status)
    self.user_status == user_status
  end

  def positions_role?(role)
    self.positions.any? { |position| position.role.name == role}
  end

  def holds_positions?(id)
    self.positions.any? { |position| position.id == id}
  end
end
