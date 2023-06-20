require 'date'

class Transaction
  def initialize(amount)
    fail 'Amount must be an integer' unless amount.is_a?(Integer)

    @amount = amount
    @date = Date.today
  end

  def amount
    @amount
  end

  def date
    @date
  end
end