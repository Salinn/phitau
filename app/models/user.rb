class User < ActiveRecord::Base
  has_and_belongs_to_many :positions
  has_many :attendances
  has_many :meetings, :through => :attendances

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

  validates :phone_number, length: {is: 11}, message: 'Phone Number Needs to Include the 1 at the start'
  validates :first_name, length: {minimum: 3}, message: 'First Name Must be at least 3 Characters'
  validates :last_name, length: {minimum: 3}, message: 'First Name Must be at least 3 Characters'
end
