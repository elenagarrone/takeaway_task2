require 'dish'

describe Dish do 

	it "has a name and a price" do
		burger = Dish.new('Burger', 3.4)
		expect(burger.name).to eq 'Burger'
		expect(burger.price).to eq 3.4
	end	
	
end