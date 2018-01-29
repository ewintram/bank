require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(:amount, :balance, :type) }

  describe '#initialize' do
    it 'initializes with a given amount' do
      expect(transaction.amount).to eq :amount
    end

    it 'initializes with a given balance' do
      expect(transaction.balance).to eq :balance
    end

    it 'initializes with a type' do
      expect(transaction.type).to eq :type
    end
  end
end
