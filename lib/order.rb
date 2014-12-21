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
    items.map{ |item| item.subtotal }.inject { |sum, elm| sum + elm }
  end

  def submitted_order
    raise "Sorry, your basket is empty." if @items.empty?
    @complete = true
  end

end
