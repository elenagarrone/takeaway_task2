require 'takeaway'

include Message

describe Takeaway do

	let(:takeaway) {Takeaway.new}
	let(:customer) {Customer.new('Elena', '07774724218')}
	let(:fries)    {Dish.new('French Fries', 2.4)}
	
	it 'should receive the order from the customer' do
		customer.choose(fries)
		expect(takeaway.receive_order(customer)).to eq([customer.order])
	end

end