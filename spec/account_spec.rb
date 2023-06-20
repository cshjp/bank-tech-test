require 'account'

describe Account do
  context 'set_balance' do
    it 'should set the balance' do
      account = Account.new
      account.set_balance(1000)
      expect(account.balance).to eq(1000)
    end
  end

  context 'deposit' do
    it 'should deposit an amount of money and stay in account' do
      account = Account.new
      account.set_balance(1000)
      account.deposit(2000)
      expect(account.balance).to eq(3000)
    end
  end

  context 'withdraw' do
    it 'should withdraw an amount of money and remove from the account' do
      account = Account.new
      account.set_balance(2000)
      account.withdraw(1000)
      expect(account.balance).to eq(1000)
    end
  end
end