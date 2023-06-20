require 'statement'

describe Statement do
  context "when creating a statement" do
    it 'should post the first line into terminal' do
      io = double :io
      expect(io).to receive(:puts).with("date || credit || debit || balance")
      statement = Statement.new(io)
      statement.first
    end
  end
end
