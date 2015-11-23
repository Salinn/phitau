class Post < ActiveRecord::Base
  has_many :images
  has_many :galleries
  
  accepts_nested_attributes_for :images

  acts_as_paranoid

  validates :title, presence: true, length: { minimum: 5  }
  validates :content, presence: true, length: { minimum: 10  }

  def slug
    self.title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end
end
