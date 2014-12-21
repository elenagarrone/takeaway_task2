class Menu

  attr_reader :dishes

  def initialize
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def remove_dish(dish)
    @dishes.delete(dish)
  end

  def list_dishes
    @dishes.each.with_index(1) { |dish, index| list = "#{ index }. #{ dish.name }: £ #{ dish.price }"; return list }
  end

end
