require_relative 'transaction'
require_relative 'statement'

class Account
  DEFAULT_BALANCE = 0
  attr_reader :balance, :transactions

  def initialize(default_balance = DEFAULT_BALANCE, transaction_class = Transaction)
    @balance = default_balance
    @transactions = []
    @transaction_class = transaction_class
  end

  def deposit(amount)
    @balance += amount
    transaction = @transaction_class.new(amount, balance, :credit)
    add_transaction(transaction)
  end

  def withdraw(amount)
    raise 'Insufficient funds' if balance < amount
    @balance -= amount
    transaction = @transaction_class.new(amount, balance, :debit)
    add_transaction(transaction)
  end

  private

  def add_transaction(transaction)
    transactions << transaction
  end
end
