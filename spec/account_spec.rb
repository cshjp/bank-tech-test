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

  context 'withdraw' do
    it 'should withdraw an amount of money and leave the account' do
      account = Account.new
      account.deposit(double(:faketransaction, amount: 2000, date: Date.today))
      account.withdraw(double(:faketransaction, amount: 1000, date: Date.today))
      expect(account.balance).to eq(1000)
      expect(account.transactions.last[:amount]).to eq(-1000)
      expect(account.transactions.last[:date]).to eq(Date.today)
    end
  end

  context "statement" do
    it 'should create a statement for the user to see all their transactions' do
      account = Account.new
      account.deposit(double(:faketransaction, amount: 2000, date: '2023-11-01'))
      account.withdraw(double(:faketransaction, amount: 1000, date: '2023-11-02'))
      account.deposit(double(:faketransaction, amount: 3000, date: '2023-11-03'))
      account.create_statement
      expect(account.statement.first).to eq "date || credit || debit || balance"
      expect(account.statement.last).to eq "2023-11-01 || 2000 || || 2000"
    end

    it 'should print a statement' do
      io = double(:io)
      expect(io).to receive(:puts).with("date || credit || debit || balance").ordered
      expect(io).to receive(:puts).with("#{Date.today} || 2000 || || 2000").ordered
      account = Account.new
      account.deposit(double(:faketransaction, amount: 2000, date: Date.today))
      account.create_statement
      account.print_statement(io)
    end
  end
end