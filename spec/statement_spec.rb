require 'statement'

describe Statement do
  let(:deposit)    { double :deposit, amount: 500, balance: 500, date: Time.new, type: :credit }
  let(:withdrawal) { double :withdrawal, amount: 100, balance: 400, date: Time.new, type: :debit }
  let(:account)    { double :account, transactions: [deposit, withdrawal] }
  subject(:statement) { described_class }

  describe '#to_string' do
    it 'prints each transaction on a new line to standard output in descending chronological order' do
      expect { statement.to_string(account) }.to output("date || credit || debit || balance\n29/01/2018 || || 100.00 || 400.00\n29/01/2018 || 500.00 || || 500.00\n").to_stdout
    end
  end
end
