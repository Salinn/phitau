class User < ActiveRecord::Base
  has_many :chairs
  has_many :receipts
  has_many :attendances
  has_many :meetings, :through => :attendances
  has_many :community_services

  searchkick

  SIGNUPROLES = ["potential new member", "alumni", "current brother"]
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

  def user_role? role
    if self.role == role
      return true
    end
    false
  end

  def chairs_role? role
    self.chairs.each do |chair|
      if chair.role == role
        return true
      end
    end
    false
  end
end
