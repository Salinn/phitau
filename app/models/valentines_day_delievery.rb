class ValentinesDayDelievery < ActiveRecord::Base
  before_validation :format_params

  def format_params
    (self.red_flower_quantity = 0) if red_flower_quantity.nil?
    (self.white_flower_quantity = 0) if white_flower_quantity.nil?
    (self.pink_flower_quantity = 0) if pink_flower_quantity.nil?
    (self.large_stuffed_animial_quantity = 0) if large_stuffed_animial_quantity.nil?
    (self.medium_stuffed_animial_quantity = 0) if medium_stuffed_animial_quantity.nil?
    (self.small_animial_quantity = 0) if small_animial_quantity.nil?
  end

  PAYMENTMETHODS = ["Cash","PayPal"]

  validates :red_flower_quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :white_flower_quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :pink_flower_quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :large_stuffed_animial_quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :medium_stuffed_animial_quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :small_animial_quantity, :numericality => { :greater_than_or_equal_to => 0 }

  validates :buyer_name, presence: true, :length => {:minimum => 4}
  validates :buyer_phone_number, presence: true, :length => {:minimum => 11}, :numericality => true
  validates :recievers_name, presence: true, :length => {:minimum => 4}
  validates :recievers_phone_number, presence: true, :length => {:minimum => 11}, :numericality => true
  validates :delivery_location, presence: true

  validate :check_inventory#, :on => [:create, :update]

  def check_inventory
    inventory = ValentinesDayInventory.where(current_year: Time.now.year.to_s).first
    enough_red_flowers inventory
    enough_white_flowers inventory
    enough_pink_flowers inventory

    enough_large_stuffed_animals inventory
    enough_medium_stuffed_animals inventory
    enough_small_stuffed_animals inventory
  end

  def enough_red_flowers inventory
    if inventory.total_red_flowers-self.red_flower_quantity < 0
      self.errors.add(:base, 'There are not enough Red Flowers Currently')
      return false
    end
    inventory.total_red_flowers = inventory.total_red_flowers-self.red_flower_quantity
    inventory.save
    true
  end
  def enough_white_flowers inventory
    if inventory.total_white_flowers-self.white_flower_quantity < 0
      self.errors.add(:base, 'There are not enough Pink Flowers Currently')
      return false
    end
    inventory.total_white_flowers = inventory.total_white_flowers-self.white_flower_quantity
    inventory.save
    true
  end
  def enough_pink_flowers inventory
    if inventory.total_pink_flowers-self.pink_flower_quantity < 0
      self.errors.add(:base, 'There are not enough White Flowers Currently')
      return false
    end
    inventory.total_pink_flowers = inventory.total_pink_flowers-self.pink_flower_quantity
    inventory.save
    true
  end
  def enough_large_stuffed_animals inventory
    if inventory.total_large_stuffed_animials-self.large_stuffed_animial_quantity < 0
      self.errors.add(:base, 'There are not enough Large Stuffed Animals Currently')
      return false
    end
    inventory.total_large_stuffed_animials = inventory.total_large_stuffed_animials-self.large_stuffed_animial_quantity
    inventory.save
    true
  end
  def enough_medium_stuffed_animals inventory
    if inventory.total_medium_stuffed_animials-self.medium_stuffed_animial_quantity < 0
      self.errors.add(:base, 'There are not enough Medium Stuffed Animals Currently')
      return false
    end
    inventory.total_medium_stuffed_animials = inventory.total_medium_stuffed_animials-self.medium_stuffed_animial_quantity
    inventory.save
    true
  end
  def enough_small_stuffed_animals inventory
    if inventory.total_small_stuffed_animials-self.small_animial_quantity < 0
      self.errors.add(:base, 'There are not enough Small Stuffed Animals Currently')
      return false
    end
    inventory.total_small_stuffed_animials = inventory.total_small_stuffed_animials-self.small_animial_quantity
    inventory.save
    true
  end
end
