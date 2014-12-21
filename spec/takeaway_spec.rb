require 'takeaway'
require 'order'

include Message

describe Takeaway do

  let(:takeaway) { Takeaway.new }
  let(:customer) { Customer.new('Elena', '07774724218') }
  let(:fries)    { Dish.new('French Fries', 2.4) }

  it 'should receive the order from the customer if sent' do
    customer.choose(fries)
    customer.send_order
    expect(takeaway.receive_order(customer)).to eq([customer.order])
  end

  it "shouldn't receive the order from the customer if not sent" do
    customer.choose(fries)
    expect(takeaway.receive_order(customer)).to eq("No order received yet")
  end

end
