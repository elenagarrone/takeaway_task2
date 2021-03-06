class Takeaway

  include Message

  def initialize
    @menu = nil
    @orders = []
    @order = Order.new
  end

  def add_menu(menu)
    @menu = menu
  end

  def receive_order(customer)
    customer.order.complete? ? @orders << customer.order : (return "No order received yet")
  end

end
