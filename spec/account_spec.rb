describe Account do
  let(:transaction_class) { double :transaction_class, new: :transaction }
  subject(:account)       { described_class.new(10, transaction_class) }

  describe '#deposit' do
    before(:each) do
      account.deposit(5)
    end

    it 'adds the deposited amount to the balance' do
      expect(account.balance).to eq 15
    end

    it 'adds a transaction to the transactions array' do
      expect(account.transactions).to include :transaction
    end
  end

  describe '#withdraw' do
    before(:each) do
      account.withdraw(1)
    end

    it 'deducts the withdrawn amount from the balance' do
      expect(account.balance).to eq 9
    end

    it 'adds a transaction to the transactions array' do
      expect(account.transactions).to include :transaction
    end

    it 'throws an error message when the withdrawal amount is greater than the balance' do
      expect { account.withdraw(10) }.to raise_error 'Insufficient funds'
    end
  end
end
