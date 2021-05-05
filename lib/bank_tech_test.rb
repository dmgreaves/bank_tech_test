require_relative 'Bank_statement_class'

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
  end

  def withdraw(amount)
    @balance -= amount
  end

end
