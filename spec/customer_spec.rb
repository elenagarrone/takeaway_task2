require 'customer'

describe Customer do

	let(:customer) {Customer.new('Elena', '07774724218')}
	let(:fries)    {Dish.new('French fries', 2.2)}
	let(:burger)   {Dish.new('Burger', 3.5)}
	
	it "should have a name" do
		expect(customer.name).to eq('Elena')
	end

	it "should have a phone number" do
		expect(customer.phone).to eq('07774724218')
	end

	it 'should be able to choose an item to order' do
		expect(customer.choose(fries)). to eq([fries])
	end

	it 'should be able to remove an item from the order' do
		customer.choose(burger)
		customer.choose(fries)
		customer.delete(fries)
		expect(customer.order.items).to eq([burger])
	end

	it 'should be able to submit the order' do
		customer.choose(burger)
		customer.choose(fries)
		expect(customer.send_order).to eq(true)
	end

end