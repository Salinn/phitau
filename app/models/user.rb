class User < ActiveRecord::Base
  has_many :has_and_belongs_to_many

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, ImageUploader
  before_save do
    if self.role.nil? or self.role == "not_a_member"
      self.role="requesting"
    end
    if self.role == "no"
      self.role="not_a_member"
    end
  end
  def user_role? role
    if self.role == role
      return true
    end
    false
  end
end
