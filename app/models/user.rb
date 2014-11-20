class User < ActiveRecord::Base
  has_and_belongs_to_many :positions

  SIGNUPROLES = ["admin", "Alumni", "Current Brother", "Potential New Member"]

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
