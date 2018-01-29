require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'it initializes with a date' do
      expect(transaction.date).to eq Time.now.strftime('%D')
    end
  end

  describe '#debit' do
    it 'logs the transaction type as a debit' do
      transaction.debit(1)
      expect(transaction.type).to eq :debit
    end

    it 'stores the debit amount as an instance variable' do
      transaction.debit(1)
      expect(transaction.amount).to eq 1
    end
  end
end
