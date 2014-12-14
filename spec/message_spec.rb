require 'message'
require 'customer'

describe Message do

class SendMessage; include Message; end

	let(:customer) { Customer.new('Elena', '07774724218') }
	let(:message)  { SendMessage.new }

	it 'should not send the message when initialized' do
		expect(message).not_to be_sent
	end

	it "will send a message" do
		allow(message).to receive(:send_sms).and_return true
		message.send_sms(customer)
	end

end
