require_relative 'transaction'
require_relative 'account_printer'

class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(amount, transaction = Transaction.new)
    transaction.credit(amount)
    transactions << transaction
    @balance += amount
  end

  def withdraw(amount, transaction = Transaction.new)
    raise 'Insufficient funds' if balance < amount
    transaction.debit(amount)
    transactions << transaction
    @balance -= amount
  end

end
