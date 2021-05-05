require_relative 'bank_statement'

class Bank_account

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE, statement = Bank_statement.new)
    @balance = balance
    @statement = statement
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @statement.addto_statement_transaction_history(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @statement.addto_statement_transaction_history(-amount)
  end

  def transaction_history
    @statement.transaction_history.reverse
  end

  def print_statement
      puts "#{Time.now.strftime("%d/%m/%Y")} || credit || debit || Current Balance: #{@balance}"
      @statement.transaction_history.each do |transaction|
        if transaction > 0
          puts "               #{transaction}  ||       || "
        elsif transaction < 0
          puts "                     ||  #{transaction}  || "
        end
      end
    end

end
