require 'lineitem'

describe LineItem do
	
	let(:burger)   {Dish.new('Burger', 3.4)}
	let(:lineitem) {LineItem.new(burger, 3)}

	it 'should be initialized with a dish and the quantity' do
		expect(lineitem.dish).to eq(burger)
		expect(lineitem.quantity).to eq(3)
	end

	it 'should give me a subtotal' do
		expect(lineitem.subtotal).to eq(10.2)
	end

	it 'should be shown all on one line' do
		expect(lineitem.show).to eq("3 x Burger £ 10.2")
	end

end

