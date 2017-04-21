require "oystercard"

describe Oystercard do
  subject(:card) {described_class.new}
  #let (:card) {describe_class.new}
  it 'responds to balance' do
    expect(card.balance).to eq 0
  end

  describe 'balance' do
    describe 'top up' do
      it 'balance changes by top up' do
      value = 5
      expect{card.top_up(value)}.to change{card.balance}.by(value)
    end
  end
  end
end
