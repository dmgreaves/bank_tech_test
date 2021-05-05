require 'bank_tech_test'

describe Bank_account do
  it 'Returns the new account balance with an initial balance of 0' do
    expect(Bank_account.new.balance).to eq 0
  end

  it 'accepts deposits and adds the deposit to the account balance' do
    account = Bank_account.new
    account.deposit(100)
    expect(account.balance).to eq 100
  end

  it 'processes withdrawals and deducts the withdrawal from the account balance' do
    account = Bank_account.new
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq 500
  end
end
