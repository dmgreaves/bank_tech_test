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
  end

  def print_statement
    @statement.transaction_history
  end

end
