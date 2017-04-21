class Oystercard
attr_reader :balance
MAX_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(value)
    raise "Cannot top up more than £#{MAX_LIMIT}" if @balance + value > MAX_LIMIT
    @balance += value
  end

  def deduct(fare)
      @balance -= fare
  end

end
