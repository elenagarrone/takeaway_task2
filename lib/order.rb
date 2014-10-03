class Order

	attr_reader :items

	def initialize
		@items = []
		@complete = false
	end

	def complete?
		@complete
	end

	def add(lineitem)
		@items << lineitem
	end

	def remove(lineitem)
		@items.delete(lineitem)
	end

	def total
		items.map{|item| item.subtotal}.inject {|sum, elm| sum + elm}
	end

	def submitted_order
		raise "Sorry, your basket is empty." if @items.empty?
		@complete = true
	end

end

# burger = Dish.new('Burger', 3.5)
# chicken = Dish.new('Chicken', 2.7)
#  item1 = LineItem.new(burger, 4)
#  item2 = LineItem.new(chicken, 4)

# order = Order.new

# order.add(item1)
# order.add(item2)
# p order.items
# p order.total