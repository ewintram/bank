require 'date'

class Transaction
  attr_reader :amount, :balance, :date, :type

  def initialize(amount, balance, type)
    @amount = amount
    @balance = balance
    @date = Time.new
    @type = type
  end
end
