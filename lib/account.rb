require_relative 'transaction'

class Account

  attr_reader :balance, :transactions

  def initialize(transaction_class = Transaction)
    @balance = 0
    @transactions = []
    @transaction_class = transaction_class
  end

  def deposit(amount)
    transaction = @transaction_class.new(amount)
    @transactions << transaction
    @balance += amount
  end

end
