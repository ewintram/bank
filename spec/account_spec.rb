require 'account'

describe Account do

  let(:deposit) { double :deposit, credit: nil }
  let(:withdrawal) { double :withdrawal, credit: nil }

  subject(:account) { described_class.new }

  describe "#initialize" do

    it "initializes with a balance of 0" do
      expect(account.balance).to eq 0
    end

    it "initializes with an empty array of transactions" do
      expect(account.transactions).to be_empty
    end
  end

  describe "#deposit" do

    before(:each) do
      account.deposit(5, deposit)
    end

    it "adds the deposited amount to the balance" do
      expect(account.balance).to eq 5
    end

    it "adds a transaction to the transactions array" do
      expect(account.transactions).to include deposit
    end
  end

  describe "#withdraw" do

    before(:each) do
      account.deposit(5, deposit)
      account.withdraw(1, withdrawal)
    end

    it "deducts the withdrawn amount from the balance" do
      expect(account.balance).to eq 4
    end

    it "adds a transaction to the transactions array" do
      expect(account.transactions).to include withdrawal
    end

  end

end
