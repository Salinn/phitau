class Post < ActiveRecord::Base
  has_many :images
  has_many :galleries
end
