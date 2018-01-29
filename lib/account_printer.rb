require_relative 'transaction_printer'

module AccountPrinter
  def self.to_string(account, transaction_printer = TransactionPrinter, opening_balance = Account::DEFAULT_BALANCE)
    puts "date || credit || debit || balance"
    account.transactions.each { |transaction|
      puts "#{transaction_printer.to_string(transaction)} || #{sprintf('%.2f', (opening_balance += transaction.amount))}"
    }
  end
end
