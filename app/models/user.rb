class User < ActiveRecord::Base
  has_many :chairs
  has_many :eboards
  has_many :positions
  has_many :roles
  has_many :receipts
  has_many :attendances
  has_many :meetings, :through => :attendances
  has_many :community_services

  searchkick

  USERSTATUSES = ["potential new member", "alumni", "current brother", "coop"]
  ALLROLES = ["alumni", "current brother", "potential new member", "dummy",
              "president","first_vp","second_vp","treasurer","sergeant","chaplain",
              "recruitment", "alumni_relations", "web_master","brotherhood","social","community_service",
              "philanthropy","business_ops", "housing_manager",
              "admin", "writer"]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, ImageUploader

  after_create :send_alert_email
  after_create :check_to_send_mailchimp_email

  def send_alert_email
    UserMailer.new_user_alert_email(self).deliver
  end

  def check_to_send_mailchimp_email
    if check_mailchimp_list_for_user?
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
    UserMailer.mailchimp_sign_up_user_email(self).deliver
  end

  def send_mailchimp_email
    mailchimp_send_email_invite
    redirect_to root_path, notice: "Thanks for registering for the Gamma Nu's Alumni News Letter!"
  end

  def have_permissions?(permission)
    user_role?(permission) || chairs_role?(permission) || eboards_role?(permission)
  end

  def user_role?(user_status)
    self.user_status == user_status
  end

  def chairs_role?(role)
    self.chairs.any? { |chair| chair.role == role}
  end

  def eboards_role?(role)
    self.eboards.any? { |eboard| eboard.role == role}
  end
end
