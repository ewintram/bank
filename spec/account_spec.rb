require 'account'

describe Account do

  let(:transaction_class) { double :transaction_class, new: "test_transaction" }
  subject(:account) { described_class.new(transaction_class) }

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
      account.deposit(5)
    end

    it "deposits a given amount into the account" do
      expect(account.balance).to eq 5
    end

    it "adds a transaction to the transactions array" do
      expect(account.transactions).to include "test_transaction"
    end
  end

end
