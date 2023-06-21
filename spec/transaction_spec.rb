# frozen_string_literal: true

require 'transaction'

describe Transaction do
  it 'should create a transaction with an amount and date' do
    transaction = Transaction.new(1000)
    expect(transaction.amount).to eq(1000)
    expect(transaction.date).to eq(Date.today)
  end

  it 'should fail if the amount isnt an integer' do
    expect { Transaction.new('a') }.to raise_error('Amount must be an integer')
  end
end
