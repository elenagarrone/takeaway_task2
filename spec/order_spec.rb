require 'order'

describe Order do
	
	let(:burger)          {Dish.new('Burger', 3.5)}
	let(:fries) 		  {Dish.new('French fries', 2.2)}
	let(:lineitem_burger) {LineItem.new(burger, 3)}
	let(:lineitem_fries)  {LineItem.new(fries, 2)}
	let(:order) 		  {Order.new}

	it 'should be able to add lineitems' do
		expect(order.add(lineitem_burger)).to eq([lineitem_burger])
	end	

	it 'should be able to remove lineitems' do
		order.add(lineitem_burger)
		order.add(lineitem_fries)
		order.remove(lineitem_burger)
		expect(order.items).to eq([lineitem_fries])
	end	

	it 'should have caluclate the total of all the lineitems' do
		order.add(lineitem_burger)
		order.add(lineitem_fries)
		expect(order.total).to eq(14.9)
	end

	it 'should raise an error if the basket is empty' do
		expect(lambda{order.submitted_order}).to raise_error("Sorry, your basket is empty.")
	end
	

end