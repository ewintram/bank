require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'it initializes with a date' do
      expect(transaction.date).to eq Time.now.strftime('%D')
    end
  end
end
