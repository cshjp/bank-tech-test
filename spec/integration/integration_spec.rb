# frozen_string_literal: true

require_relative '../../lib/account'
require_relative '../../lib/transaction'

describe 'integration' do
  it 'should add a couple transactions in the account' do
    account = Account.new(Kernel)
    account.deposit(Transaction.new(1000))
    account.withdraw(Transaction.new(1000))
    account.deposit(Transaction.new(2000))
    account.deposit(Transaction.new(1000))
    expect(account.transactions.count).to eq(4)
    expect(account.transactions.first[:amount]).to eq(1000)
    expect(account.transactions.last[:balance]).to eq(3000)
  end
end
