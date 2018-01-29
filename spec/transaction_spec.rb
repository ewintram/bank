require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#debit' do
    before(:each) do
      transaction.debit(1)
    end

    it 'logs the transaction type as a debit' do
      expect(transaction.type).to eq :debit
    end

    it 'stores the debit amount as an instance variable' do
      expect(transaction.amount).to eq -1
    end
  end

  describe '#credit' do
    before(:each) do
      transaction.credit(1)
    end

    it 'logs the transaction type as a credit' do
      expect(transaction.type).to eq :credit
    end

    it 'stores the credit amount as an instance variable' do
      expect(transaction.amount).to eq 1
    end
  end
end
