require 'message'
require 'customer'

describe Message do

class SendMessage; include Message; end
	
	let(:customer) {Customer.new('Elena', '07774724218')}
	let(:message)  {SendMessage.new}

	it 'should not send the message when initialized' do
		expect(message).not_to be_sent
	end

end