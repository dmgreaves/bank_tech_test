require_relative 'bank_account'

class Bank_statement

  def initialize()
    @transaction_history = [0]
  end


  def print_statement
    @transaction_history
  end

end
