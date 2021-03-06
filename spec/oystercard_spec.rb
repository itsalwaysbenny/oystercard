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

describe 'Cannot top up more than £90'
  it "raises" do
    value = 95
    expect { card.top_up(Oystercard::MAX_LIMIT+1) }.to raise_error 'Cannot top up more than £90'
  end

  describe 'deduct'
    it 'balance reduced by fare'do
    fare = 5
    expect { card.deduct(fare)}.to change{card.balance}.by(-fare)
  end
end
