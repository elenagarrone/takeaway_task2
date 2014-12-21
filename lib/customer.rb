class Customer

  attr_reader :name, :phone, :order

  def initialize(name, phone)
    @name = name
    @phone = phone
    @order = Order.new
  end

  def choose(item)
    @order.add(item)
  end

  def delete(item)
    @order.remove(item)
  end

  def send_order
    @order.submitted_order
  end

  def delete_order
    @order.items.clear
  end

end
