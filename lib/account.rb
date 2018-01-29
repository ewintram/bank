require_relative 'transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, transaction = Transaction.new)
    transaction.credit(amount)
    @transactions << transaction
    @balance += amount
  end

  def withdraw(amount, transaction = Transaction.new)
    @balance -= amount
  end

end
