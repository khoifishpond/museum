require './lib/patron'
require 'rspec'

describe Patron do
  context 'Attributes' do
    before(:each) do
      @patron_1 = Patron.new("Bob", 20)
    end

    it 'exists' do
      expect(@patron_1).to be_a(Patron)
    end

    it 'has a name' do
      expect(@patron_1.name).to eq("Bob")
    end

    it 'has spending money' do
      expect(@patron_1.spending_money).to eq(20)
    end

    it 'starts with no interests' do
      expect(@patron_1.interests).to eq([])
    end
  end

  context 'Add Interests' do
    before(:each) do
      @patron_1 = Patron.new("Bob", 20)
    end

    it 'can add interests' do
      @patron_1.add_interest("Dead Sea Scrolls")
      @patron_1.add_interest("Gems and Minerals")

      expect(@patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end
  end
end