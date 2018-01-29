require 'date'

class Transaction
  attr_reader :date, :type, :amount

  def initialize
    @date = Time.now
  end

  def debit(amount)
    @type = :debit
    set_amount(amount * -1)
  end

  def credit(amount)
    @type = :credit
    set_amount(amount)
  end

  private

    def set_amount(amount)
      @amount = amount
    end
end
