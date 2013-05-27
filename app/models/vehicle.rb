class Vehicle < ActiveRecord::Base
  has_many :accessories
  belongs_to :brand
  belongs_to :vehicle_type
  belongs_to :customer
  attr_accessible :name, :brand_id, :vehicle_type_id, :price, :km, :type_fuel, :year, :customer_id, :accessory
  validates_numericality_of :price, :only_float => false, :greater_than => 0
  validates_numericality_of :km, :greater_than_or_equal_to => 0
  validates_presence_of :type_fuel
  validates_presence_of :year

	def full_name
		"#{brand.name} - #{name} (#{vehicle_type.name})"	
	end


  def price_in_pesos
    d = Dollar.find(:first, :params => {:dollar_type => 1})
    ((price || 0) * d.buyer).to_s
  end
end