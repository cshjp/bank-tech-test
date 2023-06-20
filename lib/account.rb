class Account
  attr_reader :balance, :transactions, :statement

  def initialize
    @balance = 0
    @transactions = []
    @statement = []
  end

  def deposit(transaction)
    @balance += transaction.amount
    @transactions << {amount: transaction.amount, date: transaction.date, balance: @balance}
  end

  def withdraw(transaction)
    @balance -= transaction.amount
    @transactions << {amount: -(transaction.amount), date: transaction.date, balance: @balance}
  end

  def create_statement
    @statement << "date || credit || debit || balance"
    @transactions.sort_by {|hash| hash[:date]}.reverse.each do |transaction|
      if transaction[:amount].positive?
        @statement << "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
      else
        @statement << "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
      end
    end
  end
  
  def print_statement(io)
    @statement.each do |statement|
      io.puts statement
    end
  end
end