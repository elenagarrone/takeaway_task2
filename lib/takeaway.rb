class Takeaway

	include Message

	def initialize
		@menu = nil
		@orders = []
	end

	def add_menu(menu)
		@menu = menu
	end

	def receive_order(customer)
		@orders << customer.order
	end

end
