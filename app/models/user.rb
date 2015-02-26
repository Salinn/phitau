class User < ActiveRecord::Base
  has_many :chairs
  has_many :eboards
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
