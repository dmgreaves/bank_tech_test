class Bank_account

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def balance
    @balance
  end

  def add(amount)
    @balance += amount
  end

end
