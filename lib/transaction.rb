require 'date'

class Transaction
  attr_reader :date, :type, :amount

  def initialize
    @date = Time.now.strftime('%D')
  end

  def debit(amount)
    @type = :debit
    set_amount(amount)
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
