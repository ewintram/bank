require 'account_printer'

describe AccountPrinter do
  let(:deposit)    { double :deposit, amount: 500 }
  let(:account)    { double :account, transactions: [deposit, deposit] }
  let(:transaction_printer) { double :transaction_printer }
  let(:opening_balance) { 0 }
  subject(:account_printer) { described_class }

  describe '#to_string' do
    it 'prints each transaction on a new line to standard output in descending chronological order' do
      allow(transaction_printer).to receive(:to_string).and_return "29/01/2018 || || 500.00"
      expect { account_printer.to_string(account, transaction_printer, opening_balance) }.to output("date || credit || debit || balance\n29/01/2018 || || 500.00 || 500.00\n29/01/2018 || || 500.00 || 1000.00\n").to_stdout
    end
  end
end
