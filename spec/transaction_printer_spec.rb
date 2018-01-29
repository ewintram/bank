require 'transaction_printer'

describe TransactionPrinter do
  let(:deposit)    { double :deposit, amount: 2000, type: :credit, date: Time.now }
  let(:withdrawal) { double :withdrawal, amount: -500, type: :debit, date: Time.now }
  subject(:transaction_printer) { described_class }

  describe '#to_string' do
    it 'prints an individual deposit to a string' do
      expect(transaction_printer.to_string(deposit)).to eq("29/01/2018 || 2000.00 ||")
    end

    it 'prints an individual withdrawal to a string' do
      expect(transaction_printer.to_string(withdrawal)).to eq("29/01/2018 || || 500.00")
    end
  end

end
