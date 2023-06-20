require 'account'

describe Account do
  context 'deposit' do
    it 'should deposit an amount of money and stay in account' do
      account = Account.new
      account.deposit(double(:faketransaction, amount: 2000, date: Date.today))
      expect(account.balance).to eq(2000)
      expect(account.transactions.first[:amount]).to eq(2000)
      expect(account.transactions.first[:date]).to eq(Date.today)
    end
  end
end