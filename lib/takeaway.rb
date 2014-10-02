require 'message'

class Takeaway

	def initialize
		menu = Menu.new
		@orders = []
	end

	def receive_order(customer)
		@orders << customer.order
		@message.send_sms(customer)
	end
end