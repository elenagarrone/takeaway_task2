require 'takeaway'

include Message

describe Takeaway do

	let(:takeaway) {Takeaway.new}
	let(:customer) {Customer.new('Elena', '07774724218')}
	
	it 'should receive a message if the order is complete' do
		expect(takeaway.receive_order(customer)).to eq(true)
	end

end