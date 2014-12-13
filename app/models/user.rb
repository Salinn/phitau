class User < ActiveRecord::Base
  has_and_belongs_to_many :positions
  has_many :attendances
  has_many :meetings, :through => :attendances

  searchkick

  SIGNUPROLES = ["potential new member", "alumni", "current brother"]
  ALLROLES = ["alumni", "current brother", "potential new member", "dummy",
              "president","first_vp","second_vp","treasurer","sergeant","chaplain",
              "recruitment", "alumni_relations", "web_master","brotherhood","social","community_service",
              "philanthropy","business_ops",
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
end
