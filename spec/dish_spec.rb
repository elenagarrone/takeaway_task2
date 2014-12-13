require 'dish'

describe Dish do

	let(:burger) { Dish.new('Burger', 3.4) }

	context 'when initialized' do

		it "has a name" do
			expect(burger.name).to eq 'Burger'
		end

		it "has a price" do
			expect(burger.price).to eq 3.4
		end

	end

end
