# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions, :statement

  def initialize(io)
    @balance = 0
    @transactions = []
    @statement = []
    @io = io
  end

  def deposit(transaction)
    @balance += transaction.amount
    @transactions << { amount: transaction.amount, date: transaction.date, balance: @balance }
  end

  def withdraw(transaction)
    @balance -= transaction.amount
    @transactions << { amount: -transaction.amount, date: transaction.date, balance: @balance }
  end

  def create_statement
    @statement << 'date || credit || debit || balance'
    @transactions.sort_by { |hash| hash[:date] }.reverse.each do |transaction|
      @statement << if transaction[:amount].positive?
                      "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
                    else
                      "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
                    end
    end
  end

  def print_statement
    @statement.each do |statement|
      @io.puts statement
    end
  end
end
