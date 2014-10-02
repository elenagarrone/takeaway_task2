require_relative 'dish'

class LineItem

	attr_reader :dish, :quantity

	def initialize(dish, quantity)
		@dish = dish
		@quantity = quantity
	end

	def subtotal
		@quantity * @dish.price
	end

	def show
		"#{quantity} x #{dish.name} £ #{subtotal}"
	end

end