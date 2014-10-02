require 'menu'

describe Menu do
	
	let(:menu)   {Menu.new}
	let(:fries)  {Dish.new('Frech fries', 2.4)}
	let(:burger) {Dish.new('Burger', 3.4)}

	it "should be able to add dishes" do
		expect(menu.add_dish(fries)).not_to be_empty
	end

	it "should be able to remove dishes" do
		menu.add_dish(burger)
		menu.add_dish(fries)
		menu.remove_dish(fries)
		expect(menu.dishes).to eq([burger])
	end

	it "should show the list of dishes available" do
		menu.add_dish(fries)
		expect(menu.list_dishes).to eq([fries])
	end

end
