module TransactionPrinter
  def self.to_string(transaction)
    if transaction.type == :credit
      "#{transaction.date.strftime('%d/%m/%Y')} || #{sprintf('%.2f', transaction.amount)} ||"
    elsif transaction.type == :debit
      "#{transaction.date.strftime('%d/%m/%Y')} || || #{sprintf('%.2f', (transaction.amount * -1))}"
    end
  end
end
