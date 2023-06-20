class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(transaction)
    @balance += transaction.amount
    @transactions << {amount: transaction.amount, date: transaction.date, balance: @balance}
  end
end