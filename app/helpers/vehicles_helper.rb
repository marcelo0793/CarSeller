module VehiclesHelper
	def title(vehicle)
		"<strong>#{vehicle.brand.name}</strong> - #{vehicle.name} <em>(#{vehicle.vehicle_type.name})</em>".html_safe
	end

	def dolar_oficial_compra
	  Dollar.find(:first, :params => {:dollar_type => 1}).buyer
	end

	def dolar_oficial_venta
	  Dollar.find(:first, :params => {:dollar_type => 1}).seller
	end

	def dolar_blue_compra
	  Dollar.find(:first, :params => {:dollar_type => 2}).buyer
	end

	def dolar_blue_venta
	  Dollar.find(:first, :params => {:dollar_type => 2}).seller
	end

	def name_accessory
	  Accessory.find(:first, :params => [:name]).name.to_s
	end

	def price_accessory
	  Accessory.find(:first, :params => [:price]).price.to_s
	end

	def description_accessory
	  Accessory.find(:first, :params => [:description]).description.to_s
	end

	def origin_accessory
	  Accessory.find(:first, :params => [:origin]).origin.to_s
	end
end
