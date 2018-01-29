require 'date'

class Transaction
  attr_reader :date, :type, :amount

  def initialize
    @date = Time.now.strftime('%D')
  end

  def debit(amount)
    @type = :debit
    @amount = amount
  end

end
