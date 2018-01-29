module Statement
  def self.to_string(account)
    puts "date || credit || debit || balance"
    account.transactions.reverse.each do |transaction|
      puts transaction_to_string(transaction)
    end
  end

  private_class_method

  def self.transaction_to_string(transaction)
    if transaction.type == :credit
      "#{transaction.date.strftime('%d/%m/%Y')} || #{format('%.2f', transaction.amount)} || || #{format('%.2f', transaction.balance)}"
    elsif transaction.type == :debit
      "#{transaction.date.strftime('%d/%m/%Y')} || || #{format('%.2f', (transaction.amount))} || #{format('%.2f', transaction.balance)}"
    end
  end
end
