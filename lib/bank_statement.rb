require_relative 'bank_account'

class Bank_statement

  attr_reader :transaction_history

  def initialize()
    @transaction_history = [0]
  end

  def print_transaction_history
    @transaction_history
  end

  def addto_statement_transaction_history(amount)
    @transaction_history = [amount]
  end


end
