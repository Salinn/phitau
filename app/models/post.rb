class Post < ActiveRecord::Base
  has_many :images
  has_many :galleries

  validates :title, presence: true, length: { minimum: 5  }
  validates :content, presence: true, length: { minimum: 10  }
end
